import solarLogo from '../assets/solar-logo.svg?raw'
import { catalogProvenance, embeddedRegistry, packageLogos, type PackageLogo } from '../data'
import { usePacks } from '../packs'
import { SolarSvg } from './SolarSvg'

type InfoPanelProps = {
    openExternal: (url: string) => void
}

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
                The maintained Solar icon set, shared between Figma and code.
            </p>
            <button className="doc-button" type="button" onClick={() => openExternal('https://solar-icons.vercel.app')}>
                <span>Open documentation</span>
                <SolarSvg className="button-icon" svg={getSvg('arrow-right-up', 'linear')} aria-hidden="true" />
            </button>

            <div className="package-section">
                <h2 className="section-label">Packages</h2>
                <div className="package-grid">
                    {embeddedRegistry.packages.map(item => (
                        <button
                            className="package-link"
                            type="button"
                            key={item.package}
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
                <button className="text-link" type="button" onClick={() => openExternal('https://github.com/saoudi-h/solar-icons')}>
                    GitHub <SolarSvg className="inline-icon" svg={getSvg('arrow-right-up', 'linear')} aria-hidden="true" />
                </button>
            </div>
        </div>
    )
}
