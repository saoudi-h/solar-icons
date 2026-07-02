export const STYLES = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'] as const

export type IconStyle = (typeof STYLES)[number]

export function getIconNames(styleModule: Record<string, unknown>): string[] {
    return Object.keys(styleModule)
        .filter((k) => k.endsWith('Icon') && typeof styleModule[k] === 'function')
        .map((k) => k.slice(0, -4))
        .sort()
}
