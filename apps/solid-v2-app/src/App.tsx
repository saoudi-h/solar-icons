import { SolarProvider } from '@solar-icons/solid-v2'
import type { JSX } from '@solidjs/web'

import Accessibility from './lib/Accessibility'
import CssClassStyling from './lib/CssClassStyling'
import CssCustomProps from './lib/CssCustomProps'
import Gallery from './lib/Gallery'
import { ALL_ICONS } from './lib/icon-list'
import ProviderDemo from './lib/ProviderDemo'
import Solid2Features from './lib/Solid2Features'

function Section(props: { number: number; title: string; desc: string; children: JSX.Element }) {
    return (
        <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
            <h2 class="text-xl font-bold text-white mb-1">
                {props.number}. {props.title}
            </h2>
            <p class="text-slate-400 text-sm mb-4">{props.desc}</p>
            {props.children}
        </div>
    )
}

export default function App() {
    return (
        <div class="min-h-screen bg-slate-900 text-slate-200">
            <div class="max-w-7xl mx-auto px-4 sm:px-8 py-8 space-y-12">
                <div class="text-center space-y-2">
                    <h1 class="text-4xl font-bold text-white">Solar Icons - SolidJS 2</h1>
                    <p class="text-slate-400">
                        {ALL_ICONS.length} icons x 6 styles = {ALL_ICONS.length * 6} variants
                        (consuming built @solar-icons/solid-v2 exports)
                    </p>
                </div>

                <Section
                    number={1}
                    title="Icon Gallery"
                    desc="Browse all icons. Controls use SolarProvider + useSolar().">
                    <SolarProvider
                        color="#f59e0b"
                        size={32}
                        strokeWidth={1.5}
                        secondaryColor="#60a5fa"
                        secondaryOpacity={0.5}>
                        <Gallery />
                    </SolarProvider>
                </Section>

                <Section
                    number={2}
                    title="CSS Custom Properties"
                    desc="Control icons via CSS custom properties (--solar-color, --solar-size) on parent elements.">
                    <CssCustomProps />
                </Section>

                <Section
                    number={3}
                    title="SolarProvider + useSolar"
                    desc="A separate provider driven by reactive signals alongside useSolar() setter overrides.">
                    <ProviderDemo />
                </Section>

                <Section
                    number={4}
                    title="CSS Class Styling"
                    desc="Every icon has class 'solar' and 'solar-{name}-{style}', plus Solid 2 array/object classes.">
                    <CssClassStyling />
                </Section>

                <Section
                    number={5}
                    title="Accessibility & Isolation"
                    desc="Icons have aria-hidden='true' by default. Pass alt, aria-label, title, or isolated.">
                    <Accessibility />
                </Section>

                <Section
                    number={6}
                    title="Solid 2 Features & Subpath Imports"
                    desc="DynamicIcon, dynamic weight switching, duotone secondary colors, Show/For/lazy(), refs, onClick, and deep subpaths.">
                    <Solid2Features />
                </Section>
            </div>
        </div>
    )
}
