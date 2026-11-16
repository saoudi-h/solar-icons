import type { Icon } from '@solar-icons/solid-v2'
import { BellIcon as BellBoldDuotoneIcon } from '@solar-icons/solid-v2/bold-duotone/bell'
import { HeartIcon as HeartBoldDuotoneIcon } from '@solar-icons/solid-v2/bold-duotone/heart'
import { BellIcon as BellBoldIcon } from '@solar-icons/solid-v2/bold/bell'
import { ChatSquare2Icon } from '@solar-icons/solid-v2/bold/chat-square-2'
import { BellIcon as BellBrokenIcon } from '@solar-icons/solid-v2/broken/bell'
import { StarIcon as DynamicStarIcon } from '@solar-icons/solid-v2/dynamic'
import { HeartIcon as DynamicHeartIcon } from '@solar-icons/solid-v2/dynamic/heart'
import {
    DynamicIcon,
    type StyleComponentsMap,
    type Weight,
} from '@solar-icons/solid-v2/lib/dynamic-icon'
import { BellIcon as BellLineDuotoneIcon } from '@solar-icons/solid-v2/line-duotone/bell'
import { SettingsIcon as SettingsLineDuotoneIcon } from '@solar-icons/solid-v2/line-duotone/settings'
import { BellIcon as BellLinearIcon } from '@solar-icons/solid-v2/linear/bell'
import { HomeIcon as HomeLinearIcon } from '@solar-icons/solid-v2/linear/home'
import { BellIcon as BellOutlineIcon } from '@solar-icons/solid-v2/outline/bell'
import { createSignal, For, lazy, Loading, Show } from 'solid-js'

const LazyIconPanel = lazy(() => import('./LazyIconPanel'))

const WEIGHTS: Weight[] = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline']

const BELL_STYLES: StyleComponentsMap<Icon> = {
    bold: BellBoldIcon,
    'bold-duotone': BellBoldDuotoneIcon,
    broken: BellBrokenIcon,
    linear: BellLinearIcon,
    'line-duotone': BellLineDuotoneIcon,
    outline: BellOutlineIcon,
}

interface ListEntry {
    id: number
    label: string
    icon: Icon
}

const INITIAL_LIST: ListEntry[] = [
    { id: 1, label: 'Home (linear/home)', icon: HomeLinearIcon },
    { id: 2, label: 'Heart (bold-duotone/heart)', icon: HeartBoldDuotoneIcon },
    { id: 3, label: 'ChatSquare2 (bold/chat-square-2)', icon: ChatSquare2Icon },
]

export default function Solid2Features() {
    const [weight, setWeight] = createSignal<Weight>('Linear')
    const [primaryColor, setPrimaryColor] = createSignal('#f59e0b')
    const [secondaryColor, setSecondaryColor] = createSignal('#60a5fa')
    const [secondaryOpacity, setSecondaryOpacity] = createSignal(0.45)

    const [showConditional, setShowConditional] = createSignal(true)
    const [showLazy, setShowLazy] = createSignal(true)
    const [items, setItems] = createSignal<ListEntry[]>(INITIAL_LIST)

    const [clickCount, setClickCount] = createSignal(0)
    const [refSummary, setRefSummary] = createSignal('Click an icon or Inspect Refs')

    let staticSvgRef: SVGSVGElement | undefined
    let dynamicSvgRef: SVGSVGElement | undefined

    const inspectRefs = () => {
        const staticDesc = staticSvgRef
            ? `static=${staticSvgRef.tagName}.${staticSvgRef.getAttribute('class')}`
            : 'static=none'
        const dynamicDesc = dynamicSvgRef
            ? `dynamic=${dynamicSvgRef.tagName}.${dynamicSvgRef.getAttribute('class')}`
            : 'dynamic=none'
        setRefSummary(`${staticDesc} | ${dynamicDesc}`)
    }

    const rotateItems = () => {
        setItems(prev => {
            if (prev.length < 2) return prev
            const [first, ...rest] = prev
            return first ? [...rest, first] : prev
        })
    }

    return (
        <div class="space-y-6">
            {/* Dynamic icons + DynamicIcon + Duotone controls */}
            <div class="bg-slate-900 rounded-xl p-4 space-y-4">
                <div class="flex flex-wrap items-center justify-between gap-4">
                    <div>
                        <h3 class="text-sm font-semibold text-white">
                            DynamicIcon, Dynamic Subpaths &amp; Duotone Controls
                        </h3>
                        <p class="text-xs text-slate-400">
                            Switches weight from a signal across generated dynamic icons and
                            DynamicIcon.
                        </p>
                    </div>
                    <div class="flex flex-wrap gap-1.5">
                        <For each={WEIGHTS}>
                            {w => (
                                <button
                                    type="button"
                                    class={`px-2.5 py-1 rounded text-xs font-medium transition-colors ${
                                        weight() === w
                                            ? 'bg-amber-500 text-slate-900'
                                            : 'bg-slate-700 text-slate-300 hover:bg-slate-600'
                                    }`}
                                    onClick={() => setWeight(w)}>
                                    {w}
                                </button>
                            )}
                        </For>
                    </div>
                </div>

                <div class="flex flex-wrap items-center gap-6">
                    <div class="flex items-center gap-2">
                        <label class="text-xs text-slate-400">Primary</label>
                        <input
                            type="color"
                            value={primaryColor()}
                            onInput={e => setPrimaryColor(e.currentTarget.value)}
                            class="w-8 h-8 rounded cursor-pointer border-0"
                        />
                    </div>
                    <div class="flex items-center gap-2">
                        <label class="text-xs text-slate-400">Secondary</label>
                        <input
                            type="color"
                            value={secondaryColor()}
                            onInput={e => setSecondaryColor(e.currentTarget.value)}
                            class="w-8 h-8 rounded cursor-pointer border-0"
                        />
                    </div>
                    <div class="flex items-center gap-2">
                        <label class="text-xs text-slate-400">
                            Secondary Opacity ({secondaryOpacity()})
                        </label>
                        <input
                            type="range"
                            min="0"
                            max="1"
                            step="0.05"
                            value={secondaryOpacity()}
                            onInput={e => setSecondaryOpacity(parseFloat(e.currentTarget.value))}
                            class="w-28 accent-blue-400"
                        />
                    </div>
                </div>

                <div class="grid grid-cols-2 sm:grid-cols-5 gap-3">
                    <div class="bg-slate-800/60 rounded-lg p-3 flex flex-col items-center gap-2">
                        <DynamicHeartIcon
                            weight={weight()}
                            size={36}
                            color={primaryColor()}
                            secondaryColor={secondaryColor()}
                            secondaryOpacity={secondaryOpacity()}
                            data-testid="dynamic-heart"
                        />
                        <span class="text-[11px] text-slate-400 text-center">
                            dynamic/heart ({weight()})
                        </span>
                    </div>
                    <div class="bg-slate-800/60 rounded-lg p-3 flex flex-col items-center gap-2">
                        <DynamicStarIcon
                            weight={weight()}
                            size={36}
                            color={primaryColor()}
                            secondaryColor={secondaryColor()}
                            secondaryOpacity={secondaryOpacity()}
                            data-testid="dynamic-star"
                        />
                        <span class="text-[11px] text-slate-400 text-center">
                            dynamic barrel ({weight()})
                        </span>
                    </div>
                    <div class="bg-slate-800/60 rounded-lg p-3 flex flex-col items-center gap-2">
                        <DynamicIcon
                            weight={weight()}
                            styles={BELL_STYLES}
                            size={36}
                            color={primaryColor()}
                            secondaryColor={secondaryColor()}
                            secondaryOpacity={secondaryOpacity()}
                            data-testid="dynamic-icon-primitive"
                        />
                        <span class="text-[11px] text-slate-400 text-center">
                            DynamicIcon ({weight()})
                        </span>
                    </div>
                    <div class="bg-slate-800/60 rounded-lg p-3 flex flex-col items-center gap-2">
                        <HeartBoldDuotoneIcon
                            size={36}
                            color={primaryColor()}
                            secondaryColor={secondaryColor()}
                            secondaryOpacity={secondaryOpacity()}
                        />
                        <span class="text-[11px] text-slate-400 text-center">
                            bold-duotone/heart
                        </span>
                    </div>
                    <div class="bg-slate-800/60 rounded-lg p-3 flex flex-col items-center gap-2">
                        <SettingsLineDuotoneIcon
                            size={36}
                            strokeWidth={1.75}
                            color={primaryColor()}
                            secondaryColor={secondaryColor()}
                            secondaryOpacity={secondaryOpacity()}
                        />
                        <span class="text-[11px] text-slate-400 text-center">
                            line-duotone/settings
                        </span>
                    </div>
                </div>
            </div>

            {/* Control flow: Show, For, lazy() + Loading */}
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-4">
                <div class="bg-slate-900 rounded-xl p-4 space-y-3">
                    <div class="flex items-center justify-between">
                        <h3 class="text-sm font-semibold text-white">
                            &lt;Show&gt; &amp; &lt;For&gt; Control Flow
                        </h3>
                        <div class="flex gap-2">
                            <button
                                type="button"
                                class="px-2.5 py-1 bg-slate-700 hover:bg-slate-600 rounded text-xs text-slate-200"
                                onClick={() => setShowConditional(v => !v)}>
                                {showConditional() ? 'Hide' : 'Show'}
                            </button>
                            <button
                                type="button"
                                class="px-2.5 py-1 bg-slate-700 hover:bg-slate-600 rounded text-xs text-slate-200"
                                onClick={rotateItems}>
                                Rotate &lt;For&gt;
                            </button>
                        </div>
                    </div>

                    <div class="p-3 bg-slate-800/50 rounded-lg flex items-center gap-3 min-h-[52px]">
                        <Show
                            when={showConditional()}
                            fallback={
                                <span class="text-xs text-slate-500">
                                    Icon unmounted via &lt;Show&gt;
                                </span>
                            }>
                            <HomeLinearIcon size={28} color="#34d399" />
                            <span class="text-xs text-slate-300">
                                Mounted inside &lt;Show&gt; (linear/home)
                            </span>
                        </Show>
                    </div>

                    <div class="space-y-1.5">
                        <For each={items()}>
                            {(entry, index) => {
                                const EntryIcon = entry.icon
                                return (
                                    <div class="flex items-center gap-3 px-3 py-2 bg-slate-800/40 rounded-lg">
                                        <span class="text-xs text-slate-500 font-mono">
                                            #{index() + 1}
                                        </span>
                                        <EntryIcon size={22} color="#f59e0b" />
                                        <span class="text-xs text-slate-300">{entry.label}</span>
                                    </div>
                                )
                            }}
                        </For>
                    </div>
                </div>

                <div class="bg-slate-900 rounded-xl p-4 space-y-4">
                    {/* lazy() + Loading */}
                    <div class="space-y-2">
                        <div class="flex items-center justify-between">
                            <h3 class="text-sm font-semibold text-white">
                                lazy() + &lt;Loading&gt; &amp; Deep Subpath Aliases
                            </h3>
                            <button
                                type="button"
                                class="px-2.5 py-1 bg-slate-700 hover:bg-slate-600 rounded text-xs text-slate-200"
                                onClick={() => setShowLazy(v => !v)}>
                                {showLazy() ? 'Unmount Lazy' : 'Mount Lazy'}
                            </button>
                        </div>
                        <Show when={showLazy()}>
                            <Loading
                                fallback={
                                    <div class="text-xs text-slate-400 p-4 bg-slate-800/50 rounded-lg">
                                        Loading lazy icon panel...
                                    </div>
                                }>
                                <LazyIconPanel />
                            </Loading>
                        </Show>
                    </div>

                    {/* Refs, onClick, and deep subpath alias */}
                    <div class="space-y-2 pt-2 border-t border-slate-800">
                        <div class="flex items-center justify-between">
                            <h3 class="text-sm font-semibold text-white">
                                Refs, onClick &amp; Deep Subpaths
                            </h3>
                            <button
                                type="button"
                                class="px-2.5 py-1 bg-slate-700 hover:bg-slate-600 rounded text-xs text-slate-200"
                                onClick={inspectRefs}>
                                Inspect Refs
                            </button>
                        </div>
                        <div class="flex items-center gap-4 bg-slate-800/50 rounded-lg p-3">
                            <div class="p-2 rounded-lg bg-slate-800 hover:bg-slate-700 transition-colors flex items-center">
                                <HomeLinearIcon
                                    size={30}
                                    color="#fbbf24"
                                    class="cursor-pointer"
                                    role="button"
                                    tabindex={0}
                                    aria-label="Click static icon"
                                    ref={el => {
                                        staticSvgRef = el
                                    }}
                                    onClick={() => {
                                        setClickCount(c => c + 1)
                                        inspectRefs()
                                    }}
                                    data-testid="ref-static-icon"
                                />
                            </div>
                            <div class="p-2 rounded-lg bg-slate-800 hover:bg-slate-700 transition-colors flex items-center">
                                <DynamicHeartIcon
                                    weight={weight()}
                                    size={30}
                                    color="#f43f5e"
                                    class="cursor-pointer"
                                    role="button"
                                    tabindex={0}
                                    aria-label="Click dynamic icon"
                                    ref={el => {
                                        dynamicSvgRef = el
                                    }}
                                    onClick={() => {
                                        setClickCount(c => c + 1)
                                        inspectRefs()
                                    }}
                                    data-testid="ref-dynamic-icon"
                                />
                            </div>
                            <div class="p-2 rounded-lg bg-slate-800 flex items-center gap-2">
                                <ChatSquare2Icon size={26} color="#38bdf8" />
                                <span class="text-[11px] text-slate-400">bold/chat-square-2</span>
                            </div>
                        </div>
                        <div class="text-xs text-slate-400 font-mono space-y-1">
                            <div>Clicks: {clickCount()}</div>
                            <div class="truncate" title={refSummary()}>
                                {refSummary()}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
