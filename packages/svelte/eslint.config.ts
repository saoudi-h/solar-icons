import type { Config } from '@solar-icons/eslint';
import { base } from '@solar-icons/eslint';
import { defineConfig } from 'eslint/config';

const config: Config[] = defineConfig([
    ...base,
    {
        ignores: [
            'eslint.config.ts',
            'eslint-types.d.ts',
            'lint-staged.config.mjs',
            'prettier.config.mjs',
            'src/icons',
            'scripts/*',
            '.svelte-kit/*',
            'svelte.config.js',
        ],
    },
]);

export default config;
