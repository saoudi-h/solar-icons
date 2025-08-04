export default {
    '**/*.{ts,tsx}': ['prettier --write', 'eslint --fix --no-warn-ignored'],
    '**/*.{json,md,mdx}': 'prettier --write',
}
