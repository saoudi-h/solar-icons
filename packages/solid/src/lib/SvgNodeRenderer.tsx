import type { JSX } from 'solid-js'
import { For, splitProps } from 'solid-js'
import { Dynamic } from 'solid-js/web'
import type { IconNode } from './types'

interface SvgNodeRendererProps {
    node: IconNode
}

export function SvgNodeRenderer(props: SvgNodeRendererProps): JSX.Element {
    const [local] = splitProps(props, ['node'])

    return (
        <Dynamic component={local.node[0]} {...local.node[1]}>
            <For each={local.node[2] ?? []}>
                {(child) => <SvgNodeRenderer node={child} />}
            </For>
        </Dynamic>
    )
}
