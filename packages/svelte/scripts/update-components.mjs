#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
const rootDir = path.resolve(__dirname, '..')

const scriptTemplate = (jsx: string, hasSize: boolean, hasMirrored: boolean, hasAlt: boolean, hasClass: boolean, hasStyle: boolean) => {
    const props: string[] = []
    if (hasAlt) props.push('export let alt: string | undefined = undefined')
    if (hasSize) props.push('export let size: string | number | undefined = undefined')
    if (hasMirrored) props.push('export let mirrored: boolean | undefined = undefined')
    if (hasClass) props.push('export let className: string | undefined = undefined')
    if (hasStyle) props.push('export let style: string | undefined = undefined')
    props.push('export let color: string | undefined = undefined')
    props.push('$$restProps')
    
    const propsStr = props.join('\n    ')
    
    const conditionals = []
    if (hasAlt) conditionals.push('    const altStr = alt ? alt : undefined')
    if (hasSize) conditionals.push('    const widthStr = typeof size === "number" ? size + "px" : size')
    if (hasMirrored) conditionals.push('    const transformStr = mirrored ? "scale(-1, 1)" : undefined')
    if (hasClass) conditionals.push('    const classStr = className ? className : undefined')
    if (hasStyle) conditionals.push('    const styleStr = style ? style : undefined')
    if (hasAlt) conditionals.push('    const colorStr = color ? color : "currentColor"')
    if (hasMirrored) conditionals.push('    const transformAttr = transformStr ? `transform={transformStr}` : undefined')
    if (hasAlt || hasSize || hasMirrored || hasClass || hasStyle) conditionals.push('    const otherProps = {...$$restProps, color: colorStr, width: widthStr, height: widthStr' + (transformAttr ? `, ${transformAttr}` : "") + ', className: classStr, style: styleStr}')
    
    return `<!-- GENERATED FILE -->
<script lang="ts">
${propsStr}

${conditionals.join('\n')}

</script>

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" {...$$restProps}>
    {#if alt}<title>{altStr}</title>{/if}
    ${jsx}
</svg>`
}

function updateComponents() {
    const srcIconsDir = path.join(rootDir, 'src/icons')
    
    function processDir(dir) {
        const entries = fs.readdirSync(dir, { withFileTypes: true })
        for (const entry of entries) {
            const srcPath = path.join(dir, entry.name)
            
            if (entry.isDirectory()) {
                processDir(srcPath)
            } else if (entry.isFile() && entry.name.endsWith('.svelte')) {
                const content = fs.readFileSync(srcPath, 'utf-8')
                const newContent = scriptTemplate(content.trim(), true, true, false, true, false, false)
                fs.writeFileSync(srcPath, newContent, 'utf-8')
                console.log(`✅ Updated ${entry.name}`)
            }
        }
    }
    
    processDir(srcIconsDir)
}

try {
    console.log('Updating Svelte components...')
    updateComponents()
    console.log('✅ Svelte components updated successfully!')
} catch (err) {
    console.error('❌ Error updating components:', err)
    process.exit(1)
}
