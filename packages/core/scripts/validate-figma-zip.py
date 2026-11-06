"""Validate and stage a complete Figma SVG archive without touching the live catalogue."""
import argparse
import json
from pathlib import Path
import re
import stat
import zipfile
import xml.etree.ElementTree as ET

STYLES = {'Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'}
PATTERN = re.compile(r'svgs/([a-z0-9]+(?:-[a-z0-9]+)*)/(Bold|BoldDuotone|Broken|Linear|LineDuotone|Outline)/([a-z0-9]+(?:-[a-z0-9]+)*)\.svg')


def stage_archive(archive, staging, current, allow_removals=False):
    files, families, names = {}, {}, {}
    with zipfile.ZipFile(archive) as z:
        if z.testzip() is not None:
            raise ValueError('Archive CRC failure')
        seen = set()
        for entry in z.infolist():
            name = entry.filename
            if name in seen:
                raise ValueError('Duplicate archive entry: ' + name)
            seen.add(name)
            if stat.S_ISLNK(entry.external_attr >> 16):
                raise ValueError('Symlink archive entry: ' + name)
            if entry.is_dir():
                parts = name.rstrip('/').split('/')
                if parts[0] != 'svgs' or len(parts) > 3 or any(p in ('', '.', '..') for p in parts):
                    raise ValueError('Invalid directory: ' + name)
                continue
            match = PATTERN.fullmatch(name)
            if not match:
                raise ValueError('Unexpected archive path: ' + name)
            category, style, icon = match.groups()
            if icon in names and names[icon] != category:
                raise ValueError('Icon name in multiple categories: ' + icon)
            names[icon] = category
            families.setdefault((category, icon), set()).add(style)
            data = z.read(entry)
            if b'<!DOCTYPE' in data.upper() or b'<!ENTITY' in data.upper():
                raise ValueError('DTD/entities not allowed: ' + name)
            root = ET.fromstring(data)
            if root.tag != '{http://www.w3.org/2000/svg}svg' or root.get('viewBox', '').split() != ['0', '0', '24', '24']:
                raise ValueError('Expected SVG with 24x24 viewBox: ' + name)
            for dimension in ('width', 'height'):
                if root.get(dimension, '24') not in ('24', '24px'):
                    raise ValueError('Invalid SVG dimensions: ' + name)
            if not any(n.tag.rsplit('}', 1)[-1] in {'path', 'circle', 'ellipse', 'rect', 'line', 'polyline', 'polygon', 'use'} for n in root):
                # Figma commonly wraps shapes in groups.
                if not any(n.tag.rsplit('}', 1)[-1] in {'path', 'circle', 'ellipse', 'rect', 'line', 'polyline', 'polygon'} for n in root.iter()):
                    raise ValueError('Empty SVG: ' + name)
            for node in root.iter():
                if node.tag.rsplit('}', 1)[-1] in {'script', 'foreignObject', 'image'}:
                    raise ValueError('Unsupported SVG content: ' + name)
                for key, value in node.attrib.items():
                    if key.lower().startswith('on') or (key.rsplit('}', 1)[-1] == 'href' and not value.startswith('#')):
                        raise ValueError('External/active SVG content: ' + name)
            files[name] = data
    if not files:
        raise ValueError('Empty SVG catalogue')
    for (category, icon), styles in families.items():
        if styles != STYLES:
            raise ValueError(f'Missing variants for {category}/{icon}: {sorted(STYLES - styles)}')
    old = {'svgs/' + p.relative_to(current).as_posix() for p in current.rglob('*.svg')}
    removed = sorted(old - files.keys())
    if removed and not allow_removals:
        raise ValueError(f'{len(removed)} existing SVG paths would be removed. Review renames/deletions and pass --allow-removals explicitly. First paths: {removed[:12]}')
    # No writes until the complete archive has passed validation.
    for name, data in files.items():
        target = staging / name
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
    return {'files': len(files), 'families': len(families), 'removed': removed}


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('archive', type=Path)
    parser.add_argument('staging', type=Path)
    parser.add_argument('current', type=Path)
    parser.add_argument('--allow-removals', action='store_true')
    args = parser.parse_args()
    try:
        print(json.dumps(stage_archive(args.archive, args.staging, args.current, args.allow_removals)))
    except (ValueError, zipfile.BadZipFile, ET.ParseError) as error:
        parser.exit(1, f'Archive rejected: {error}\n')
