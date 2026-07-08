import { defineConfig } from 'vitest/config'
import solid from 'babel-preset-solid'
import { transformSync } from '@babel/core'

function solidSSRPlugin() {
    return {
        name: 'solid-ssr',
        enforce: 'pre' as const,
        transform(source: string, id: string) {
            if (!/\.[mc]?[tj]sx$/i.test(id)) return null;
            const result = transformSync(source, {
                filename: id,
                presets: [[solid as any, { generate: 'ssr', hydratable: true }]],
                plugins: [],
                ast: false,
                sourceMaps: 'inline',
                configFile: false,
                babelrc: false,
                parserOpts: { plugins: ['jsx', 'typescript'] },
            });
            return { code: result!.code!, map: result!.map };
        },
    };
}

export default defineConfig({
    plugins: [solidSSRPlugin()],
    test: {
        include: ['tests/**/*.test.{ts,tsx}'],
    },
    resolve: {
        conditions: ['node', 'module', 'import'],
    },
})
