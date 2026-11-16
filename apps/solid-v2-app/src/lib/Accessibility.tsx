import { InfoCircleIcon } from '@solar-icons/solid-v2/bold'

export default function Accessibility() {
    return (
        <div class="grid grid-cols-1 sm:grid-cols-4 gap-4">
            <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                <code class="text-xs text-green-400 block">Default (aria-hidden)</code>
                <InfoCircleIcon size={32} />
            </div>
            <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                <code class="text-xs text-green-400 block">alt=&quot;Information&quot;</code>
                <InfoCircleIcon size={32} alt="Information" />
            </div>
            <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                <code class="text-xs text-green-400 block">aria-label</code>
                <InfoCircleIcon size={32} aria-label="Information about this icon" />
            </div>
            <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                <code class="text-xs text-green-400 block">isolated</code>
                <InfoCircleIcon isolated />
            </div>
        </div>
    )
}
