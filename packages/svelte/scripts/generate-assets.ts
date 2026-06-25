#!/usr/bin/env node
import fs from 'node:fs';
import path from 'node:path';
import pc from 'picocolors';

import {
    parseSvgs,
    forEachIcon,
    forEachIconGroupedBy,
    toPascalCase,
    WEIGHT_MAP,
    type IconWeight,
    type ParsedIcon,
    type ParsedIconGroup,
} from '@solar-icons/core';
import { svelteComponentFile, type FileDefinition } from './parser-hook';

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons');
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/index.ts');

const WEIGHTS = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'] as const;

function generateIndexes(
    icons: ReadonlyArray<ParsedIcon>,
    groups: ReadonlyArray<ParsedIconGroup>
): FileDefinition[] {
    const files: FileDefinition[] = [];

    for (const weight of WEIGHTS) {
        const iconsForWeight = icons.filter((i) => i.style === weight);
        const weightKebab = WEIGHT_MAP[weight];
        const seen = new Set<string>();
        const content = iconsForWeight
            .sort((a, b) => a.pascalName.localeCompare(b.pascalName))
            .filter((icon) => {
                if (seen.has(icon.pascalName)) return false;
                seen.add(icon.pascalName);
                return true;
            })
            .map(
                (icon) =>
                    `export { default as ${icon.pascalName}Icon } from '../${WEIGHT_MAP[icon.style]}/${icon.name}.svelte';`
            )
            .join('\n');

        files.push({
            path: path.join(ICONS_PATH, 'style', `${weightKebab}.ts`),
            content: content ? `${content}\n` : '',
        });
    }

    const seenGlobal = new Set<string>();
    const rootGlobalLines: string[] = [];
    for (const icon of icons) {
        const globalName = toPascalCase(`${icon.name}-${icon.style}`);
        if (seenGlobal.has(globalName)) continue;
        seenGlobal.add(globalName);
        rootGlobalLines.push(
            `export { default as ${globalName}Icon } from './${WEIGHT_MAP[icon.style]}/${icon.name}.svelte';`
        );
    }
    rootGlobalLines.sort();

    files.push({
        path: path.join(ICONS_PATH, 'styled.ts'),
        content: rootGlobalLines.join('\n') + '\n',
    });

    const stylesIndexContent = WEIGHTS.map(
        (w) => `export * as ${w} from './${WEIGHT_MAP[w]}';`
    ).join('\n');

    files.push({
        path: path.join(ICONS_PATH, 'style', 'index.ts'),
        content: `${stylesIndexContent}\n`,
    });

    const mainEntryContent = `export type { IconProps } from "./lib"
export { IconBase, SolarProvider, useSolar, type IconStyle } from "./lib"
export * from "./icons/styled"
`;

    files.push({
        path: INDEX_PATH,
        content: mainEntryContent,
    });

    const dynamicBarrelContent = groups
        .map((g) => {
            return `export { default as ${g.pascalName}Icon } from './${g.name}.svelte'\nexport type { ${g.pascalName}IconProps } from './${g.name}.svelte'`;
        })
        .join('\n');

    files.push({
        path: path.join(ICONS_PATH, 'dynamic', 'index.ts'),
        content: dynamicBarrelContent + '\n',
    });

    return files;
}

function clean() {
    for (const p of [ICONS_PATH, INDEX_PATH]) {
        if (fs.existsSync(p)) {
            fs.rmSync(p, { recursive: true, force: true });
            console.log(pc.blue(`Removed ${p}`));
        }
    }
}

function generateDynamicFile(group: ParsedIconGroup): FileDefinition {
    const groups = group.styles;

    const styleImports = WEIGHTS.filter((w) => groups[w])
        .map((w) => {
            const icon = groups[w]!;
            const kebab = WEIGHT_MAP[w];
            return `import ${w} from '../${kebab}/${icon.name}.svelte'`;
        })
        .join('\n');

    const stylesObj = WEIGHTS.filter((w) => groups[w])
        .map((w) => {
            const kebab = WEIGHT_MAP[w];
            const key = kebab.includes('-') ? `'${kebab}'` : kebab;
            return `        ${key}: ${w},`;
        })
        .join('\n');

    const name = group.name;
    const pascalName = group.pascalName;

    const previews = WEIGHTS.filter((w) => groups[w])
        .map((w) => {
            const icon = groups[w]!;
            return ` * ![img](data:image/svg+xml;base64,${icon.preview}) ${w}`;
        })
        .join('\n *\n');

    const content = `<!-- GENERATED FILE -->
<script lang="ts">
import DynamicIcon from '../../lib/dynamic-icon.svelte'
${styleImports}

export type ${pascalName}IconProps = {
    weight?: 'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'
    [key: string]: any
}
</script>

<!--
${previews}
-->
<DynamicIcon
    styles={{
${stylesObj}
    }}
    {...$$restProps}
/>
`;

    return {
        path: path.join(ICONS_PATH, 'dynamic', `${name}.svelte`),
        content,
    };
}

function writeFiles(files: FileDefinition[]) {
    for (const file of files) {
        fs.mkdirSync(path.dirname(file.path), { recursive: true });
        fs.writeFileSync(file.path, file.content, { flag: 'w' });
    }
    console.log(pc.green(`Successfully generated ${files.length} files.`));
}

const main = async () => {
    try {
        clean();
        const result = await parseSvgs({
            svgsDir: path.resolve(import.meta.dirname, '../../core/svgs'),
        });
        console.log(
            pc.blue(`Parsed ${result.icons.length} icons in ${result.groups.length} groups`)
        );

        const allComponentFiles = await forEachIcon(svelteComponentFile);
        const seenPaths = new Set<string>();
        const componentFiles = allComponentFiles.filter((f) => {
            if (seenPaths.has(f.path)) return false;
            seenPaths.add(f.path);
            return true;
        });
        const dynamicFiles = await forEachIconGroupedBy((ctx) => generateDynamicFile(ctx.icon));
        const indexFiles = generateIndexes(result.icons, result.groups);
        writeFiles([...componentFiles, ...dynamicFiles, ...indexFiles]);
    } catch (err) {
        console.error(pc.red('Build failed'));
        console.error(err);
        process.exit(1);
    }
};

await main();
