import { SolarProvider } from '@solar-icons/solid';
import Gallery from './lib/Gallery';
import CssCustomProps from './lib/CssCustomProps';
import ProviderDemo from './lib/ProviderDemo';
import CssClassStyling from './lib/CssClassStyling';
import Accessibility from './lib/Accessibility';

import { ALL_ICONS } from './lib/icon-list';

function Section(props: { number: number; title: string; desc: string; children: any }) {
    return (
        <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
            <h2 class="text-xl font-bold text-white mb-1">
                {props.number}. {props.title}
            </h2>
            <p class="text-slate-400 text-sm mb-4">{props.desc}</p>
            {props.children}
        </div>
    );
}

export default function App() {
    return (
        <div class="min-h-screen bg-slate-900 text-slate-200">
            <div class="max-w-7xl mx-auto px-4 sm:px-8 py-8 space-y-12">
                <div class="text-center space-y-2">
                    <h1 class="text-4xl font-bold text-white">Solar Icons - SolidJS</h1>
                    <p class="text-slate-400">
                        {ALL_ICONS.length} icons x 6 styles = {ALL_ICONS.length * 6} variants
                    </p>
                </div>

                <Section
                    number={1}
                    title="Icon Gallery"
                    desc="Browse all icons. Controls use SolarProvider + useSolar()."
                >
                    <SolarProvider
                        color="#f59e0b"
                        size={32}
                        strokeWidth={1.5}
                        duotoneColor="#60a5fa"
                        duotoneOpacity={0.5}
                    >
                        <Gallery />
                    </SolarProvider>
                </Section>

                <Section
                    number={2}
                    title="CSS Custom Properties"
                    desc="Control icons via CSS custom properties on parent elements. No provider needed."
                >
                    <CssCustomProps />
                </Section>

                <Section
                    number={3}
                    title="SolarProvider + useSolar"
                    desc="A separate provider with its own controls. Mutations are sync'd between JS state and CSS vars."
                >
                    <ProviderDemo />
                </Section>

                <Section
                    number={4}
                    title="CSS Class Styling"
                    desc="Every icon has class 'solar' and 'solar-{'{name}'}'. Target them with CSS selectors."
                >
                    <CssClassStyling />
                </Section>

                <Section
                    number={5}
                    title="Accessibility"
                    desc="Icons have aria-hidden='true' by default. Pass alt, aria-label, or title."
                >
                    <Accessibility />
                </Section>
            </div>
        </div>
    );
}
