#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
const rootDir = path.resolve(__dirname, '..')

function compileSvelteToJS(sourceCode, componentName) {
    const scriptMatch = sourceCode.match(/<script[^>]*>([\s\S]*?)<\/script>/s)
    const templateMatch = sourceCode.match(/<template[^>]*>([\s\S]*?)<\/template>/s) ||
                            sourceCode.match(/>([\s\S]*?)<svg/)

    if (!scriptMatch) return null

    const scriptContent = scriptMatch[1]
    const templateContent = templateMatch ? templateMatch[1] : ''

    const exports = scriptContent.match(/export\s+(?:let|const)\s+(\w+)\s*=/g) || []
    const exportNames = exports.map(m => m.match(/export\s+(?:let|const)\s+(\w+)/)[1])

    const exportLines = exportNames.map(name => `    export let ${name}`)
    const restPropsLine = '    const $$restProps = { ...$$restProps }'

    const slotContent = templateContent || '<slot />'
    const jsContent = `import { create_ssr_component, create_custom_element, ssr, safe_not_equal, spread, escape_attribute_value, escape_object, each, bind } from 'svelte/internal';

const ${componentName} = create_ssr_component(($$result, $$props, $$bindings, $$slots, $$context, $$define_component, $$inspect, $$store, $$rest_props, $$sanitize_store, $$onMount, $$onDestroy, $$afterUpdate) => {
    const { ${exportNames.join(', ')} = $$props;
    $$restProps = rest_props($$props);
    let $$restProps;

    return {
        render(result) {
            const $$restProps = $$props;
            return \`${slotContent}\`;
        }
    };
});

export default ${componentName};
`

    return jsContent
}

function convertIcons() {
    const srcIconsDir = path.join(rootDir, 'src/icons')
    const distIconsDir = path.join(rootDir, 'dist/icons')

    if (!fs.existsSync(distIconsDir)) {
        fs.mkdirSync(distIconsDir, { recursive: true })
    }

    function processDir(dir) {
        const entries = fs.readdirSync(dir, { withFileTypes: true })

        for (const entry of entries) {
            const srcPath = path.join(dir, entry.name)
            const relPath = path.relative(srcIconsDir, srcPath)
            const distPath = path.join(distIconsDir, relPath)

            if (entry.isDirectory()) {
                fs.mkdirSync(distPath, { recursive: true })
                processDir(srcPath)
            } else if (entry.isFile() && entry.name.endsWith('.svelte')) {
                const jsName = entry.name.replace('.svelte', '.mjs')
                const distJsPath = path.join(path.dirname(distPath), jsName)
                const content = fs.readFileSync(srcPath, 'utf-8')
                const componentName = entry.name.replace('.svelte', '')
                const jsCode = compileSvelteToJS(content, componentName)

                if (jsCode) {
                    fs.writeFileSync(distJsPath, jsCode, 'utf-8')
                    console.log(`✅ Compiled ${entry.name}`)
                } else {
                    fs.copyFileSync(srcPath, distPath)
                    console.log(`📋 Copied ${entry.name}`)
                }
            }
        }
    }

    processDir(srcIconsDir)
}

try {
    console.log('Compiling Svelte icons...')
    convertIcons()
    console.log('✅ Svelte icons compiled successfully!')
} catch (err) {
    console.error('❌ Error compiling Svelte icons:', err)
    process.exit(1)
}
