export default {
    '**/*.{ts,js,svelte}': ['prettier --write', 'eslint --fix --no-warn-ignored'],
    '**/*.{json,md,mdx}': 'prettier --write',
    '**/*.test.{ts,js,svelte}': ['prettier --write'],
};
