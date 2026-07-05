import { Dynamic } from 'solid-js/web';
import * as Bold from '@solar-icons/solid/bold';

export default function CssClassStyling() {
    return (
        <div class="space-y-2">
            <code class="text-xs text-slate-500 block">
                {'.solar { color: var(--solar-icon-color, currentColor); }'}
            </code>
            <code class="text-xs text-slate-500 block">
                {'.solar-home { /* specific icon */ }'}
            </code>
            <div class="bg-slate-900 rounded-lg p-4 flex gap-4 [&_.solar]:text-amber-500 [&_.solar-star]:text-blue-400">
                <Dynamic component={Bold.HomeIcon} />
                <Dynamic component={Bold.StarIcon} />
                <Dynamic component={Bold.HeartIcon} />
            </div>
        </div>
    );
}
