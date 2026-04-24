export default {
    '**/*.{ts,tsx,js,jsx}': ['prettier --write', 'eslint --fix --no-warn-ignored'],
    '**/*.{json,md,mdx}': 'prettier --write',
    '**/*.test.{ts,tsx,js,jsx}': ['prettier --write'],
};
