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

    it('should have a category wildcard export', () => {
        const categoryExport = exports['./category/*'];
        expect(categoryExport).toBeDefined();
        // Check if the source mapping pattern is valid for a sample file
        // We know arrows/Bold/ArrowLeft.svelte exists
        // Note: svelte2tsx generates .svelte.d.ts files, not .d.ts
        const sample = 'arrows/Bold/ArrowLeft';

        // Type files have .svelte.d.ts extension (svelte2tsx convention)
        const typesPattern = categoryExport.types.replace('*.d.ts', `${sample}.svelte.d.ts`);
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
        // Correct path in dist: dist/icons/arrows/Bold/ArrowLeft.mjs
        const deepFileExport = exports['./category/*'];
        const deepImportPath = path.resolve(
            rootDir,
            deepFileExport.import.replace('*', 'arrows/Bold/ArrowLeft')
        );
        expect(fs.existsSync(deepImportPath)).toBe(true);

        // Case 2: Style import (arrows/Bold) -> Should resolve to arrows/Bold.mjs (or similar strategy)
        // With the wildcard mapping ./category/* -> ./dist/icons/*.mjs
        // import '.../category/arrows/Bold' -> maps to dist/icons/arrows/Bold.mjs
        const styleImportPath = path.resolve(
            rootDir,
            deepFileExport.import.replace('*', 'arrows/Bold')
        );
        // We expect this to exist after our refactor
        expect(fs.existsSync(styleImportPath)).toBe(true);

        // Case 3: Category import (arrows) -> Should resolve to arrows.mjs
        // import '.../category/arrows' -> maps to dist/icons/arrows.mjs
        const categoryImportPath = path.resolve(
            rootDir,
            deepFileExport.import.replace('*', 'arrows')
        );
        // We expect this to exist after our refactor
        expect(fs.existsSync(categoryImportPath)).toBe(true);
    });

    it('should have correct directory structure in dist', () => {
        expect(fs.existsSync(path.join(distPath, 'icons'))).toBe(true);
        expect(fs.existsSync(path.join(distPath, 'lib'))).toBe(true);
    });

    it('should resolve style index', () => {
        // Test resolution of ./category (index)
        const categoryIndex = exports['./category'];
        expect(categoryIndex).toBeDefined();
        const importPath = path.resolve(rootDir, categoryIndex.import);
        expect(fs.existsSync(importPath)).toBe(true);
    });
});
