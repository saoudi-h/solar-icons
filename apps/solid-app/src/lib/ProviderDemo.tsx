import { createSignal } from 'solid-js';
import { Dynamic } from 'solid-js/web';
import { SolarProvider, useSolar } from '@solar-icons/solid';

import * as Bold from '@solar-icons/solid/bold';

const DEMO_ICONS = {
    Home: Bold.HomeIcon,
    Star: Bold.StarIcon,
    Heart: Bold.HeartIcon,
};

function ProviderDemoInner() {
    const solar = useSolar();
    return (
        <div class="bg-slate-900 rounded-lg p-4 space-y-2">
            <div class="flex gap-2 items-center flex-wrap">
                <button
                    class="px-3 py-1.5 bg-amber-500 text-slate-900 rounded-lg text-sm font-medium"
                    onClick={() => solar.setColor('#ef4444')}
                >
                    Red
                </button>
                <button
                    class="px-3 py-1.5 bg-blue-500 text-white rounded-lg text-sm"
                    onClick={() => solar.setColor('#3b82f6')}
                >
                    Blue
                </button>
                <button
                    class="px-3 py-1.5 bg-green-500 text-white rounded-lg text-sm"
                    onClick={() => solar.setColor('#22c55e')}
                >
                    Green
                </button>
                <button
                    class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
                    onClick={() => solar.setSize(48)}
                >
                    48px
                </button>
                <button
                    class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
                    onClick={() => solar.setSize(24)}
                >
                    24px
                </button>
                <span class="text-xs text-slate-500">
                    size: {solar.size() ?? 'default'}
                </span>
            </div>
            <div class="flex gap-4">
                <Dynamic component={DEMO_ICONS.Home!} />
                <Dynamic component={DEMO_ICONS.Star!} color="#ef4444" />
                <Dynamic component={DEMO_ICONS.Heart!} />
            </div>
        </div>
    );
}

export default function ProviderDemo() {
    const [providerSize, setProviderSize] = createSignal(36);
    const [providerColor, setProviderColor] = createSignal('#f59e0b');
    const [providerStroke, setProviderStroke] = createSignal(1.5);
    return (
        <div>
            <div class="flex items-center gap-6 mb-4">
                <div class="space-y-1">
                    <label class="text-xs text-slate-400">Color</label>
                    <input
                        type="color"
                        value={providerColor()}
                        onInput={(e) => setProviderColor(e.currentTarget.value)}
                        class="w-10 h-10 rounded cursor-pointer border-0"
                    />
                </div>
                <div class="space-y-1">
                    <label class="text-xs text-slate-400">Size ({providerSize()}px)</label>
                    <input
                        type="range"
                        min="16"
                        max="64"
                        value={providerSize()}
                        onInput={(e) => setProviderSize(parseInt(e.currentTarget.value))}
                        class="w-32 accent-amber-500"
                    />
                </div>
                <div class="space-y-1">
                    <label class="text-xs text-slate-400">Stroke ({providerStroke()})</label>
                    <input
                        type="range"
                        min="0.5"
                        max="3"
                        step="0.1"
                        value={providerStroke()}
                        onInput={(e) => setProviderStroke(parseFloat(e.currentTarget.value))}
                        class="w-32 accent-amber-500"
                    />
                </div>
            </div>
            <SolarProvider
                color={providerColor()}
                size={providerSize()}
                strokeWidth={providerStroke()}
            >
                size: {providerSize()}
                <ProviderDemoInner />
            </SolarProvider>
        </div>
    );
}
