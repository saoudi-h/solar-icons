export default {
    semi: true,
    singleQuote: true,
    tabWidth: 4,
    trailingComma: 'es5',
    printWidth: 100,
    arrowParens: 'always',
    plugins: ['prettier-plugin-svelte'],
    overrides: [
        {
            files: '*.svelte',
            options: {
                parser: 'svelte',
            },
        },
    ],
};
