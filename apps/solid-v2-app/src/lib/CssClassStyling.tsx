import { HeartIcon, HomeIcon, StarIcon } from '@solar-icons/solid-v2/bold'
import { createSignal } from 'solid-js'

export default function CssClassStyling() {
    const [highlighted, setHighlighted] = createSignal(false)

    return (
        <div class="space-y-3">
            <code class="text-xs text-slate-500 block">
                {'.solar { color: var(--solar-color, currentColor); }'}
            </code>
            <code class="text-xs text-slate-500 block">
                {'.solar-star-bold { /* specific icon & style */ }'}
            </code>
            <div class="bg-slate-900 rounded-lg p-4 flex items-center gap-4 [&_.solar]:text-amber-500 [&_.solar-star-bold]:text-blue-400">
                <HomeIcon size={32} />
                <StarIcon size={32} />
                <HeartIcon
                    size={32}
                    class={[
                        'rounded transition-transform',
                        { 'scale-125 ring-2 ring-emerald-400 text-emerald-400!': highlighted() },
                    ]}
                />
                <button
                    type="button"
                    class="ml-auto px-3 py-1.5 rounded-lg text-xs font-medium bg-slate-700 text-slate-200 hover:bg-slate-600"
                    onClick={() => setHighlighted(v => !v)}>
                    Toggle reactive class ({highlighted() ? 'on' : 'off'})
                </button>
            </div>
        </div>
    )
}
