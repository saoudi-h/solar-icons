import type { ParsedIcon, IconContext } from '../../../core/src/parser.ts'

export interface FileDefinition {
    path: string
    content: string
}

/**
 * Generates a single Svelte icon component from a parsed icon.
 *
 * Uses the parser's `inner` (already normalized SVG body) and `preview`
 * (already base64-encoded) — no local transformJSX needed.
 */
export function svelteComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const body = icon.duotoneAccentInner
        ? `${icon.duotoneAccentInner}\n${icon.inner.trim()}`
        : icon.inner.trim()
    const content = `<script lang="ts">
import Icon from '../../../lib/IconBase.svelte'
let props = $props()
</script>

<Icon {...props}>
    ${body}
</Icon>
`
    return {
        path: `src/icons/${icon.category}/${icon.styleKebab}/${icon.name}.svelte`,
        content,
    }
}
