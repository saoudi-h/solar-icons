import { existsSync, readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { describe, it, expect } from 'vitest';
import '@angular/compiler';

const pkgPath = resolve('package.json');
const pkg = JSON.parse(readFileSync(pkgPath, 'utf-8'));
const exports = pkg.exports;

// Test paths to verify
const testPaths = ['.', './lib', './arrows', './ui', './users'] as const;

describe('Package Exports', () => {
    for (const testPath of testPaths) {
        describe(`path: ${testPath}`, { timeout: 60000 }, () => {
            it('should resolve to an existing file in dist', () => {
                const targetFile = resolveExportTarget(exports, testPath);
                expect(targetFile, `No export defined for "${testPath}"`).toBeTruthy();
                
                const absolutePath = resolve(targetFile!);
                expect(
                    existsSync(absolutePath),
                    `File not found at: ${targetFile} (absolute: ${absolutePath})`
                ).toBe(true);
            });

            it('should export at least one symbol (valid module)', async () => {
                const targetFile = resolveExportTarget(exports, testPath);
                if (!targetFile) return;

                const absolutePath = resolve(targetFile);
                const module = await import(absolutePath);
                
                // We check that it has exports. 
                // Note: Object.keys(module) includes default if present.
                expect(Object.keys(module).length).toBeGreaterThan(0);
            });
        });
    }
});

/**
 * Helper to resolve the target file from package.json exports mapping.
 */
function resolveExportTarget(
    exportsMap: Record<string, any>,
    testPath: string
): string | undefined {
    // Exact match
    if (exportsMap[testPath]) {
        return typeof exportsMap[testPath] === 'string' 
            ? exportsMap[testPath] 
            : exportsMap[testPath].import || exportsMap[testPath].default;
    }

    // Wildcard match
    if (exportsMap['./*']) {
        const sub = testPath.startsWith('./') ? testPath.slice(2) : testPath;
        const wildcard = exportsMap['./*'];
        const template = typeof wildcard === 'string' ? wildcard : wildcard.import || wildcard.default;
        
        if (template && template.includes('*')) {
            return template.replace('*', sub);
        }
    }

    return undefined;
}
