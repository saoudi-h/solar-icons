import { SolarProvider, useSolar } from '@solar-icons/solid-v2'
import { HeartIcon, HomeIcon, StarIcon } from '@solar-icons/solid-v2/bold'
import { HeartIcon as HeartDuotoneIcon } from '@solar-icons/solid-v2/bold-duotone'
import { SettingsIcon } from '@solar-icons/solid-v2/linear'
import { createSignal } from 'solid-js'

function ProviderDemoInner() {
    const solar = useSolar()
    return (
        <div class="bg-slate-900 rounded-lg p-4 space-y-3">
            <div class="flex gap-2 items-center flex-wrap">
                <button
                    type="button"
                    class="px-3 py-1.5 bg-amber-500 text-slate-900 rounded-lg text-sm font-medium"
                    onClick={() => solar.setColor('#ef4444')}>
                    Red
                </button>
                <button
                    type="button"
                    class="px-3 py-1.5 bg-blue-500 text-white rounded-lg text-sm"
                    onClick={() => solar.setColor('#3b82f6')}>
                    Blue
                </button>
                <button
                    type="button"
                    class="px-3 py-1.5 bg-green-500 text-white rounded-lg text-sm"
                    onClick={() => solar.setColor('#22c55e')}>
                    Green
                </button>
                <button
                    type="button"
                    class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
                    onClick={() => solar.setSize(48)}>
                    48px
                </button>
                <button
                    type="button"
                    class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
                    onClick={() => solar.setSize(24)}>
                    24px
                </button>
                <span class="text-xs text-slate-400">
                    color: {solar.color() ?? 'default'} | size: {solar.size() ?? 'default'} |
                    stroke: {solar.strokeWidth() ?? 'default'}
                </span>
            </div>
            <div class="flex gap-4 items-center">
                <HomeIcon />
                <StarIcon color="#ef4444" />
                <HeartIcon />
                <SettingsIcon />
                <HeartDuotoneIcon />
            </div>
        </div>
    )
}

export default function ProviderDemo() {
    const [providerSize, setProviderSize] = createSignal(36)
    const [providerColor, setProviderColor] = createSignal('#f59e0b')
    const [providerStroke, setProviderStroke] = createSignal(1.5)
    const [secondaryColor, setSecondaryColor] = createSignal('#60a5fa')

    return (
        <div>
            <div class="flex flex-wrap items-center gap-6 mb-4">
                <div class="space-y-1">
                    <label class="text-xs text-slate-400 block">Color</label>
                    <input
                        type="color"
                        value={providerColor()}
                        onInput={e => setProviderColor(e.currentTarget.value)}
                        class="w-10 h-10 rounded cursor-pointer border-0"
                    />
                </div>
                <div class="space-y-1">
                    <label class="text-xs text-slate-400 block">Secondary</label>
                    <input
                        type="color"
                        value={secondaryColor()}
                        onInput={e => setSecondaryColor(e.currentTarget.value)}
                        class="w-10 h-10 rounded cursor-pointer border-0"
                    />
                </div>
                <div class="space-y-1">
                    <label class="text-xs text-slate-400 block">Size ({providerSize()}px)</label>
                    <input
                        type="range"
                        min="16"
                        max="64"
                        value={providerSize()}
                        onInput={e => setProviderSize(parseInt(e.currentTarget.value, 10))}
                        class="w-32 accent-amber-500"
                    />
                </div>
                <div class="space-y-1">
                    <label class="text-xs text-slate-400 block">Stroke ({providerStroke()})</label>
                    <input
                        type="range"
                        min="0.5"
                        max="3"
                        step="0.1"
                        value={providerStroke()}
                        onInput={e => setProviderStroke(parseFloat(e.currentTarget.value))}
                        class="w-32 accent-amber-500"
                    />
                </div>
            </div>
            <SolarProvider
                color={providerColor()}
                size={providerSize()}
                strokeWidth={providerStroke()}
                secondaryColor={secondaryColor()}
                secondaryOpacity={0.5}>
                <ProviderDemoInner />
            </SolarProvider>
        </div>
    )
}
