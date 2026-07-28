export default {
    '*.{js,mjs,cjs,ts,mts,cts}': ['eslint --fix', 'prettier --write'],
    '*.{json,md,yml,yaml}': ['prettier --write'],
}
