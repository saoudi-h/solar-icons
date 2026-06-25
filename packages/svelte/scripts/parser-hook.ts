import {
    applyDuotoneStyle,
    toPascalCase,
    type IconContext,
    type ParsedIcon,
} from '@solar-icons/core';

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
