import path from 'node:path';
import { defineConfig } from 'vite';
import solidPlugin from 'vite-plugin-solid';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
    plugins: [tailwindcss(), solidPlugin()],
    resolve: {
        alias: [
            {
                find: '@solar-icons/solid/bold',
                replacement: path.resolve(
                    import.meta.dirname,
                    '../../packages/solid/src/icons/style/bold.ts'
                ),
            },
            {
                find: '@solar-icons/solid/bold-duotone',
                replacement: path.resolve(
                    import.meta.dirname,
                    '../../packages/solid/src/icons/style/bold-duotone.ts'
                ),
            },
            {
                find: '@solar-icons/solid/broken',
                replacement: path.resolve(
                    import.meta.dirname,
                    '../../packages/solid/src/icons/style/broken.ts'
                ),
            },
            {
                find: '@solar-icons/solid/line-duotone',
                replacement: path.resolve(
                    import.meta.dirname,
                    '../../packages/solid/src/icons/style/line-duotone.ts'
                ),
            },
            {
                find: '@solar-icons/solid/linear',
                replacement: path.resolve(
                    import.meta.dirname,
                    '../../packages/solid/src/icons/style/linear.ts'
                ),
            },
            {
                find: '@solar-icons/solid/outline',
                replacement: path.resolve(
                    import.meta.dirname,
                    '../../packages/solid/src/icons/style/outline.ts'
                ),
            },
            {
                find: '@solar-icons/solid',
                replacement: path.resolve(import.meta.dirname, '../../packages/solid/src/index.ts'),
            },
        ],
    },
    server: {
        port: 3000,
    },
    build: {
        target: 'esnext',
    },
});
