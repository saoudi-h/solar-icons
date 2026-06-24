import type { ParsedIcon, IconContext } from '../../core/src/parser.ts';

const DUOTONE_CSS_VARS_JSX =
    'style={{ color: "var(--solar-duotone-color, currentColor)", opacity: "var(--solar-duotone-opacity, 0.5)" }}';

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
                return trimmed.slice(0, -2) + ` ${DUOTONE_CSS_VARS_JSX}/>`;
            }
            return trimmed.replace('>', ` ${DUOTONE_CSS_VARS_JSX}>`);
        })
        .join('\n');
}

export interface FileDefinition {
    path: string;
    content: string;
}

export function solidComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon;
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner);
    const body = duotone ? `${duotone}\n        ${icon.inner.trim()}` : icon.inner.trim();
    const content = `/* GENERATED FILE */
import IconBase from "../../lib/IconBase"
import type { IconProps, Icon } from "../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}Icon: Icon = (props: IconProps) => (
    <IconBase {...props} iconName="${icon.kebabName}">
        ${body}
    </IconBase>
)
`;
    return {
        path: `src/icons/${icon.styleKebab}/${icon.name}.tsx`,
        content,
    };
}
