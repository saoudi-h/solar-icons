export default {
    '**/*.{js,cjs,mjs,ts,cts,mts,jsx,tsx}': ['oxfmt --write', 'oxlint --fix'],
    '**/*.{json,jsonc,md,mdx,css,yaml,yml,svelte,vue}': 'oxfmt --write',
}
