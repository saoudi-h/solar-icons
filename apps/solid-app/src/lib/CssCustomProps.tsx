import { createSignal } from 'solid-js';
import { Dynamic } from 'solid-js/web';
import type { Component } from 'solid-js';

import * as Bold from '@solar-icons/solid/bold';

const DEMO_ICONS: Record<string, Component> = {
    Home: Bold.HomeIcon,
    Settings: Bold.SettingsIcon,
    User: Bold.UserIcon,
    Heart: Bold.HeartIcon,
    Star: Bold.StarIcon,
    Bell: Bold.BellIcon,
};

export default function CssCustomProps() {
    const [cssColor, setCssColor] = createSignal('#f59e0b');
    const [cssSize, setCssSize] = createSignal(40);

    return (
        <div>
            <div class="flex items-center gap-6 mb-4">
                <div class="space-y-1">
                    <label class="text-xs text-slate-400">Color</label>
                    <input
                        type="color"
                        value={cssColor()}
                        onInput={(e) => setCssColor(e.currentTarget.value)}
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
                        onInput={(e) => setCssSize(parseInt(e.currentTarget.value))}
                        class="w-32 accent-amber-500"
                    />
                </div>
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div class="space-y-2">
                    <code class="text-xs text-slate-500 block">
                        {'style={{"--solar-icon-color": ...}}'}
                    </code>
                    <div
                        class="bg-slate-900 rounded-lg p-4 flex gap-4"
                        style={{
                            '--solar-icon-color': cssColor(),
                            '--solar-icon-size': `${cssSize()}px`,
                        }}
                    >
                        <Dynamic component={DEMO_ICONS.Home!} />
                        <Dynamic component={DEMO_ICONS.Settings!} />
                        <Dynamic component={DEMO_ICONS.User!} />
                    </div>
                </div>
                <div class="space-y-2">
                    <code class="text-xs text-slate-500 block">
                        Tailwind [--solar-icon-color:...]
                    </code>
                    <div
                        class="bg-slate-900 rounded-lg p-4 flex gap-4 [--solar-icon-color:var(--demo-color)] [--solar-icon-size:var(--demo-size)]"
                        style={{
                            '--demo-color': cssColor(),
                            '--demo-size': `${cssSize()}px`,
                        }}
                    >
                        <Dynamic component={DEMO_ICONS.Heart!} />
                        <Dynamic component={DEMO_ICONS.Star!} />
                        <Dynamic component={DEMO_ICONS.Bell!} />
                    </div>
                </div>
            </div>
        </div>
    );
}
