export type IconNode = [tag: string, attrs: Record<string, string>, children?: IconNode[]]

export interface SVGProps extends Record<string, string | number | undefined> {
  xmlns?: string
  width?: string | number
  height?: string | number
  viewBox?: string
  fill?: string
  stroke?: string
  'stroke-width'?: string | number
  'stroke-linecap'?: string
  'stroke-linejoin'?: string
  class?: string
}

export type Icons = Record<string, IconNode>
