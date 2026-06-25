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

export function solidComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon;
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner, 'jsx');
    const body = duotone ? `${duotone}\n        ${icon.inner.trim()}` : icon.inner.trim();
    const content = `/* GENERATED FILE */
import IconBase from "../../lib/IconBase"
import type { IconProps, Icon } from "../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}Icon: Icon = (props: IconProps) => (
    <IconBase {...props} iconName="${icon.kebabName}" iconBody={\`${body}\`} />
)
`;
    return {
        path: `src/icons/${icon.styleKebab}/${icon.name}.tsx`,
        content,
    };
}
