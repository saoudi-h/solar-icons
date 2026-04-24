import fs from 'node:fs';
import path from 'node:path';
import { describe, expect, it } from 'vitest';
import packageJson from '../package.json';

describe('Package Exports', () => {
    const rootDir = path.resolve(__dirname, '..');
    const distPath = path.resolve(rootDir, 'dist');
    const exports = packageJson.exports;

    it('should have a main export', () => {
        expect(exports['.']).toBeDefined();
        const mainExport = exports['.'];
        const importPath = path.resolve(rootDir, mainExport.import);
        const typesPath = path.resolve(rootDir, mainExport.types);

        expect(fs.existsSync(importPath)).toBe(true);
        expect(fs.existsSync(typesPath)).toBe(true);
    });

    it('should have a lib index export', () => {
        // Lib index export: "./lib" -> "./dist/lib/index.mjs"
        const libIndexExport = exports['./lib'];
        expect(libIndexExport).toBeDefined();

        const importPath = path.resolve(rootDir, libIndexExport.import);
        const typesPath = path.resolve(rootDir, libIndexExport.types);

        expect(fs.existsSync(importPath)).toBe(true);
        expect(fs.existsSync(typesPath)).toBe(true);
    });

    it('should have a lib wildcard export', () => {
        // Lib exports use wildcard: "./lib/*" -> "./dist/lib/*.mjs"
        const libExport = exports['./lib/*'];
        expect(libExport).toBeDefined();

        // Check IconBase exists via wildcard
        const importPath = path.resolve(rootDir, libExport.import.replace('*', 'IconBase'));
        const typesPath = path.resolve(
            rootDir,
            libExport.types.replace('*.d.mts', 'IconBase.d.mts')
        );

        expect(fs.existsSync(importPath)).toBe(true);
        expect(fs.existsSync(typesPath)).toBe(true);
    });

    it('should have a category wildcard export', () => {
        const categoryExport = exports['./category/*'];
        expect(categoryExport).toBeDefined();
        // Check if the source mapping pattern is valid for a sample file
        const sample = 'arrows/Bold/ArrowLeft';

        const typesPattern = categoryExport.types.replace('*.d.mts', `${sample}.d.mts`);
        const importPattern = categoryExport.import.replace('*', sample);

        const typesPath = path.resolve(rootDir, typesPattern);
        const importPath = path.resolve(rootDir, importPattern);

        console.log('Checking path:', importPath);
        console.log('Checking types path:', typesPath);
        expect(fs.existsSync(importPath)).toBe(true);
        expect(fs.existsSync(typesPath)).toBe(true);
    });

    it('should resolve imports via category and style paths', () => {
        // Case 1: Direct file import (arrows/Bold/ArrowLeft)
        const deepFileExport = exports['./category/*'];
        const deepImportPath = path.resolve(
            rootDir,
            deepFileExport.import.replace('*', 'arrows/Bold/ArrowLeft')
        );
        expect(fs.existsSync(deepImportPath)).toBe(true);

        // Case 2: Style import (arrows/Bold)
        const styleImportPath = path.resolve(
            rootDir,
            deepFileExport.import.replace('*', 'arrows/Bold')
        );
        expect(fs.existsSync(styleImportPath)).toBe(true);

        // Case 3: Category import (arrows)
        const categoryImportPath = path.resolve(
            rootDir,
            deepFileExport.import.replace('*', 'arrows')
        );
        expect(fs.existsSync(categoryImportPath)).toBe(true);
    });

    it('should have correct directory structure in dist', () => {
        expect(fs.existsSync(path.join(distPath, 'icons'))).toBe(true);
        expect(fs.existsSync(path.join(distPath, 'lib'))).toBe(true);
        // Note: types are now co-located with .mjs files as .d.mts, no separate types/ folder
    });

    it('should resolve style index', () => {
        const categoryIndex = exports['./category'];
        expect(categoryIndex).toBeDefined();
        const importPath = path.resolve(rootDir, categoryIndex.import);
        expect(fs.existsSync(importPath)).toBe(true);
    });

    it('should have style exports', () => {
        // Style exports are resolved via wildcard: "./*" -> "./dist/icons/style/*.mjs"
        const wildcardExport = exports['./*'];
        expect(wildcardExport).toBeDefined();

        const styles = ['Bold', 'Linear', 'Outline', 'BoldDuotone', 'LineDuotone', 'Broken'];
        for (const style of styles) {
            const importPath = path.resolve(rootDir, wildcardExport.import.replace('*', style));
            const typesPath = path.resolve(
                rootDir,
                wildcardExport.types.replace('*.d.mts', `${style}.d.mts`)
            );
            expect(fs.existsSync(importPath)).toBe(true);
            expect(fs.existsSync(typesPath)).toBe(true);
        }
    });
});
