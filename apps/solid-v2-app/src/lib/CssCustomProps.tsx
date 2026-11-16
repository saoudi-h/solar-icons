import {
    BellIcon,
    HeartIcon,
    HomeIcon,
    SettingsIcon,
    StarIcon,
    UserIcon,
} from '@solar-icons/solid-v2/bold'
import { createSignal } from 'solid-js'

export default function CssCustomProps() {
    const [cssColor, setCssColor] = createSignal('#f59e0b')
    const [cssSize, setCssSize] = createSignal(40)

    return (
        <div>
            <div class="flex items-center gap-6 mb-4">
                <div class="space-y-1">
                    <label class="text-xs text-slate-400">Color</label>
                    <input
                        type="color"
                        value={cssColor()}
                        onInput={e => setCssColor(e.currentTarget.value)}
                        class="w-10 h-10 rounded cursor-pointer border-0"
                    />
                </div>
                <div class="space-y-1">
                    <label class="text-xs text-slate-400">Size ({cssSize()}px)</label>
                    <input
                        type="range"
                        min="16"
                        max="64"
                        value={cssSize()}
                        onInput={e => setCssSize(parseInt(e.currentTarget.value, 10))}
                        class="w-32 accent-amber-500"
                    />
                </div>
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div class="space-y-2">
                    <code class="text-xs text-slate-500 block">
                        {'style={{"--solar-color": ..., "--solar-size": ...}}'}
                    </code>
                    <div
                        class="bg-slate-900 rounded-lg p-4 flex gap-4"
                        style={{
                            '--solar-color': cssColor(),
                            '--solar-size': `${cssSize()}px`,
                        }}>
                        <HomeIcon />
                        <SettingsIcon />
                        <UserIcon />
                    </div>
                </div>
                <div class="space-y-2">
                    <code class="text-xs text-slate-500 block">
                        Tailwind [--solar-color:...] [--solar-size:...]
                    </code>
                    <div
                        class="bg-slate-900 rounded-lg p-4 flex gap-4 [--solar-color:var(--demo-color)] [--solar-size:var(--demo-size)]"
                        style={{
                            '--demo-color': cssColor(),
                            '--demo-size': `${cssSize()}px`,
                        }}>
                        <HeartIcon />
                        <StarIcon />
                        <BellIcon />
                    </div>
                </div>
            </div>
        </div>
    )
}
