import importlib.util
from pathlib import Path
import tempfile
import unittest
import zipfile

spec = importlib.util.spec_from_file_location('gate', Path(__file__).with_name('validate-figma-zip.py'))
gate = importlib.util.module_from_spec(spec)
spec.loader.exec_module(gate)
SVG = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="#ffffff" d="M0 0L1 1"/></svg>'

class ArchiveTests(unittest.TestCase):
    def run_case(self, mutate=lambda entries: entries, current_file=None, allow=False):
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp); current=root/'current';current.mkdir(); stage=root/'stage'
            if current_file:
                target=current/current_file;target.parent.mkdir(parents=True);target.write_text(SVG)
            entries=[(f'svgs/ui/{s}/calendar.svg',SVG) for s in gate.STYLES]
            entries=mutate(entries)
            with zipfile.ZipFile(root/'icons.zip','w') as z:
                for name,data in entries:z.writestr(name,data)
            return gate.stage_archive(root/'icons.zip',stage,current,allow)
    def test_accepts_complete_white_family(self):
        self.assertEqual(self.run_case()['files'],6)
    def test_missing_style(self):
        with self.assertRaisesRegex(ValueError,'Missing variants'):self.run_case(lambda e:e[:-1])
    def test_duplicate(self):
        with self.assertRaisesRegex(ValueError,'Duplicate'):self.run_case(lambda e:e+[e[0]])
    def test_traversal(self):
        with self.assertRaisesRegex(ValueError,'Unexpected archive path'):self.run_case(lambda e:e+[('../escape',SVG)])
    def test_extra_files(self):
        with self.assertRaisesRegex(ValueError,'Unexpected archive path'):self.run_case(lambda e:e+[('README.txt','text')])
    def test_wrong_viewbox(self):
        with self.assertRaisesRegex(ValueError,'viewBox'):self.run_case(lambda e:[(n,s.replace('0 0 24 24','0 0 20 20')) for n,s in e])
    def test_active_svg(self):
        with self.assertRaisesRegex(ValueError,'Unsupported'):self.run_case(lambda e:[(n,s.replace('</svg>','<script/></svg>')) for n,s in e])
    def test_deletions_require_explicit_flag(self):
        with self.assertRaisesRegex(ValueError,'would be removed'):self.run_case(current_file='ui/Bold/old.svg')
        self.assertEqual(len(self.run_case(current_file='ui/Bold/old.svg',allow=True)['removed']),1)
    def test_cross_category_duplicate_name(self):
        with self.assertRaisesRegex(ValueError,'multiple categories'):self.run_case(lambda e:e+[(n.replace('/ui/','/time/'),s) for n,s in e])
    def test_malformed_xml(self):
        with self.assertRaises(Exception):self.run_case(lambda e:[(n,'<svg>') for n,s in e])

class TransactionTests(unittest.TestCase):
    def exercise(self, check_only):
        import os
        import shutil
        import subprocess
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp); core=root/'core'; scripts=core/'scripts'; scripts.mkdir(parents=True)
            for name in ('refresh-from-figma-zip.sh','validate-figma-zip.py'):
                shutil.copyfile(Path(__file__).with_name(name),scripts/name)
            (core/'src').mkdir(); metadata=core/'src/metadata.json';metadata.write_text('original metadata')
            archive=root/'icons.zip'
            with zipfile.ZipFile(archive,'w') as z:
                for style in gate.STYLES:
                    name=f'svgs/ui/{style}/calendar.svg';target=core/name;target.parent.mkdir(parents=True);target.write_text('original SVG')
                    z.writestr(name,SVG)
            bin_dir=root/'bin';bin_dir.mkdir();pnpm=bin_dir/'pnpm'
            pnpm.write_text('#!/bin/sh\nif [ "$1" = "generate:svgs" ]; then echo damaged > src/metadata.json; exit 1; fi\nexit 0\n');pnpm.chmod(0o755)
            command=['bash',str(scripts/'refresh-from-figma-zip.sh'),str(archive)]
            if check_only:command.append('--check-only')
            result=subprocess.run(command,env={**os.environ,'PATH':str(bin_dir)+os.pathsep+os.environ['PATH']},capture_output=True)
            self.assertEqual(result.returncode,0 if check_only else 1,result.stderr.decode())
            self.assertEqual(metadata.read_text(),'original metadata')
            self.assertTrue(all(p.read_text()=='original SVG' for p in (core/'svgs').rglob('*.svg')))
            self.assertTrue(archive.exists())
    def test_check_only_never_swaps_assets(self):self.exercise(True)
    def test_generation_failure_restores_assets_and_metadata(self):self.exercise(False)

if __name__=='__main__':unittest.main()
