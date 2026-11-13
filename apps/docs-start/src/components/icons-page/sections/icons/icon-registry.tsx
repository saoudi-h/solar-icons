import type { Weight } from '@solar-icons/core/runtime'
import IconBase from '@solar-icons/react/lib/IconBase'
import type { IconProps } from '@solar-icons/react/lib/types'
import { useCallback, useEffect, useRef, useSyncExternalStore, type ComponentType } from 'react'

import { iconChunkSize, type IconStyle } from '~/generated/icon-chunk-loaders'
import files from '~/generated/icon-preview-files.json'
import initial from '~/generated/icon-preview-initial.json'

import { getAllIcons } from './utils'

export type IconComponent = ComponentType<IconProps & { weight?: Weight }>

const WEIGHT_TO_STYLE: Record<Weight, IconStyle> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}
const markup = new Map<string, string>(
    Object.entries(initial).map(([name, body]) => [`bold-duotone/${name}`, body])
)
const components = new Map<string, IconComponent>()
const pending = new Map<string, Promise<void>>()
const errors = new Map<string, Error>()
const listeners = new Set<() => void>()
const chunkKeys = new Map<string, string>()
const offsets = new Map<string, number>()
for (const icon of getAllIcons()) {
    const offset = offsets.get(icon.category) ?? 0
    offsets.set(icon.category, offset + 1)
    chunkKeys.set(icon.name, `${icon.category}:${Math.floor(offset / iconChunkSize)}`)
}
function subscribe(listener: () => void) {
    listeners.add(listener)
    return () => {
        listeners.delete(listener)
    }
}
function notify() {
    for (const listener of listeners) listener()
}
function chunkId(name: string, weight: Weight) {
    const key = chunkKeys.get(name)
    return key ? `${WEIGHT_TO_STYLE[weight]}/${key}` : undefined
}
function readIcon(name: string, weight: Weight): IconComponent | Error | undefined {
    const key = `${WEIGHT_TO_STYLE[weight]}/${name}`
    const existing = components.get(key)
    if (existing) return existing
    const body = markup.get(key)
    if (body !== undefined) {
        const Preview: IconComponent = ({ weight: _weight, ...props }) => (
            <IconBase {...props} iconName={`${name}-${WEIGHT_TO_STYLE[weight]}`}>
                <g dangerouslySetInnerHTML={{ __html: body }} />
            </IconBase>
        )
        components.set(key, Preview)
        return Preview
    }
    const id = chunkId(name, weight)
    return id ? errors.get(id) : undefined
}
function requestIcon(name: string, weight: Weight) {
    const id = chunkId(name, weight)
    if (!id || pending.has(id)) return
    const filename = files[id as keyof typeof files]
    if (!filename) return
    errors.delete(id)
    const request = fetch(`/data/icon-previews/${filename}`)
        .then(async response => {
            if (!response.ok) throw new Error(`Preview request failed (${response.status})`)
            const data: unknown = await response.json()
            if (
                !data ||
                typeof data !== 'object' ||
                Array.isArray(data) ||
                !Object.keys(data).length ||
                !Object.values(data).every(body => typeof body === 'string' && body.startsWith('<'))
            ) {
                throw new Error('Invalid icon previews')
            }
            for (const [name, body] of Object.entries(data))
                markup.set(`${WEIGHT_TO_STYLE[weight]}/${name}`, body)
        })
        .catch((error: unknown) => {
            errors.set(id, error instanceof Error ? error : new Error(String(error)))
        })
        .finally(() => {
            pending.delete(id)
            notify()
        })
    pending.set(id, request)
    notify()
}

/** The first viewport is embedded; other previews use one JSON request per category slice. */
export function useIconPreview(name: string | undefined, weight: Weight) {
    const snapshot = useSyncExternalStore(
        subscribe,
        () => (name ? readIcon(name, weight) : undefined),
        // The embedded previews are identical on the server and during hydration.
        () =>
            name && WEIGHT_TO_STYLE[weight] === 'bold-duotone' && name in initial
                ? readIcon(name, weight)
                : undefined
    )
    const error = snapshot instanceof Error ? snapshot : undefined
    const component = snapshot instanceof Error ? undefined : snapshot
    useEffect(() => {
        if (name && !component && !error) requestIcon(name, weight)
    }, [name, weight, component, error])
    const previous = useRef<{ name: string; component: IconComponent } | null>(null)
    useEffect(() => {
        if (name && component) previous.current = { name, component }
    }, [name, component])
    const retry = useCallback(() => {
        if (name) requestIcon(name, weight)
    }, [name, weight])
    return {
        Icon:
            component ??
            (previous.current?.name === name ? previous.current?.component : undefined),
        loading: !component && !error,
        error,
        retry,
    }
}

export function useIconComponent(
    name: string | undefined,
    weight: Weight
): IconComponent | undefined {
    return useIconPreview(name, weight).Icon
}
