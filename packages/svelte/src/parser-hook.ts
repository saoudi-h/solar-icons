import type { ParsedIcon, IconContext } from '../../core/src/parser.ts';

const DUOTONE_CSS_VARS_HTML =
    'style="color: var(--solar-duotone-color, currentColor); opacity: var(--solar-duotone-opacity, 0.5)"';

function applyDuotoneStyle(accent: string | null): string | null {
    if (!accent) return null;
    let groupDepth = 0;
    return accent
        .replace(/\s+opacity="0\.5"/g, '')
        .split('\n')
        .map((line) => {
            const trimmed = line.trim();
            if (!trimmed) return line;
            if (trimmed.startsWith('</')) {
                if (trimmed.startsWith('</g')) groupDepth--;
                return line;
            }
            if (groupDepth > 0) return line;
            if (trimmed.startsWith('<g')) groupDepth++;
            if (trimmed.endsWith('/>')) {
                return trimmed.slice(0, -2) + ` ${DUOTONE_CSS_VARS_HTML}/>`;
            }
            return trimmed.replace('>', ` ${DUOTONE_CSS_VARS_HTML}>`);
        })
        .join('\n');
}

export interface FileDefinition {
    path: string;
    content: string;
}

/**
 * Generates a single Svelte icon component from a parsed icon.
 *
 * Uses the parser's `inner` (already normalized SVG body) and `preview`
 * (already base64-encoded) — no local transformJSX needed.
 */
export function svelteComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon;
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner);
    const body = duotone ? `${duotone}\n${icon.inner.trim()}` : icon.inner.trim();
    const content = `<script lang="ts">
import Icon from '../../lib/IconBase.svelte'
let props = $props()
</script>

<Icon {...props} iconName="${icon.kebabName}">
    ${body}
</Icon>
`;
    return {
        path: `src/icons/${icon.styleKebab}/${icon.name}.svelte`,
        content,
    };
}
