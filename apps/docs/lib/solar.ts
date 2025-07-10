import { createElement } from "react";
import { IconProps, IconWeight, SSR as icons } from '@solar-icons/react'


export const renderSolarIcon = (icon: string, solarIconParams?: IconProps) => {
    if (icon in icons) return createElement(icons[icon as keyof typeof icons] || icons.File, solarIconParams);
    return null
}

export const iconWeights: IconWeight[] = ['Bold', 'BoldDuotone', 'Linear', 'Outline', 'LineDuotone', 'Broken']
