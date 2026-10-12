import { useEffect, useMemo } from 'react'

import solarLogo from '../assets/solar-logo.svg?raw'
import { catalogProvenance, icons, packageLogos, type PackageLogo } from '../data'
import { usePacks } from '../packs'
import { SolarSvg } from './SolarSvg'

function CacheLine() {
    const { getSvg, storage, refreshStorage } = usePacks()
    useEffect(refreshStorage, [refreshStorage])
    const probe = useMemo(() => {
        const sample = icons.filter((_, index) => index % 200 === 0).map(icon => icon.name)
        const check = (style: string) => {
            const missing = sample.filter(name => getSvg(name, style) === null)
            return { hits: sample.length - missing.length, total: sample.length, missing }
        }
        return { linear: check('linear'), bold: check('bold') }
    }, [getSvg])
    if (!storage) return null
    const megabytes = (storage.bytes / 1024 / 1024).toFixed(1)
    const probeText = (['linear', 'bold'] as const)
        .map(style => {
            const result = probe[style]
            const detail =
                result.missing.length > 0 ? ` (missing: ${result.missing.slice(0, 3).join(', ')})` : ''
            return `${style} ${result.hits}/${result.total}${detail}`
        })
        .join(', ')
    return (
        <span>
            Icon cache: {storage.chunks} chunks · {megabytes} MiB · probe {probeText}
        </span>
    )
}

type InfoPanelProps = {
    openExternal: (url: string) => void
}

const packages: Array<{ name: string; slug: string; logo: keyof typeof packageLogos }> = [
    { name: 'React', slug: 'react', logo: 'react' },
    { name: 'Vue', slug: 'vue', logo: 'vue' },
    { name: 'Svelte', slug: 'svelte', logo: 'svelte' },
    { name: 'Solid', slug: 'solid', logo: 'solid' },
    { name: 'Angular', slug: 'angular', logo: 'angular' },
    { name: 'Nuxt', slug: 'nuxt', logo: 'nuxt' },
    { name: 'React Native', slug: 'react-native', logo: 'react' },
    { name: 'JavaScript', slug: 'js', logo: 'javascript' },
    { name: 'Static', slug: 'static', logo: 'static' },
]

function BrandLogo({ className }: { className: string }) {
    return <span className={className} dangerouslySetInnerHTML={{ __html: solarLogo }} />
}

function PackageMark({ logo }: { logo: PackageLogo }) {
    return (
        <svg
            viewBox={`0 0 ${logo.width} ${logo.height}`}
            aria-hidden="true"
            dangerouslySetInnerHTML={{ __html: logo.body }}
        />
    )
}

export function InfoPanel({ openExternal }: InfoPanelProps) {
    const { getSvg } = usePacks()
    return (
        <div className="info-scroll">
            <div className="info-identity">
                <BrandLogo className="brand-logo" />
                <div>
                    <h1 className="info-title">Solar Icons</h1>
                    <div className="info-version">Package v{window.__SOLAR_PACKAGE_VERSION__}</div>
                </div>
            </div>
            <p className="info-description">
                A maintained Solar Icons distribution with corrected geometry, consistent naming, and assets shared by
                design and code.
            </p>
            <button className="doc-button" type="button" onClick={() => openExternal('https://solar-icons.vercel.app')}>
                <span>Open documentation</span>
                <SolarSvg className="button-icon" svg={getSvg('arrow-right-up', 'linear')} aria-hidden="true" />
            </button>

            <div className="package-section">
                <h2 className="section-label">Packages</h2>
                <div className="package-grid">
                    {packages.map(item => (
                        <button
                            className="package-link"
                            type="button"
                            key={item.name}
                            onClick={() => openExternal(`https://solar-icons.vercel.app/docs/v2/packages/${item.slug}`)}
                        >
                            <span className="package-logo" aria-hidden="true">
                                <PackageMark logo={packageLogos[item.logo]} />
                            </span>
                            <span className="package-name">{item.name}</span>
                        </button>
                    ))}
                </div>
            </div>
            <div className="info-footer">
                <span>
                    {catalogProvenance.logicalIconCount.toLocaleString()} icons · {catalogProvenance.styleCount} styles
                </span>
                <CacheLine />
                <button className="text-link" type="button" onClick={() => openExternal('https://github.com/saoudi-h/solar-icons')}>
                    GitHub <SolarSvg className="inline-icon" svg={getSvg('arrow-right-up', 'linear')} aria-hidden="true" />
                </button>
            </div>
        </div>
    )
}
