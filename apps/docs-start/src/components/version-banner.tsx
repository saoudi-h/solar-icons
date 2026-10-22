import { Link, useRouterState } from '@tanstack/react-router'
import { Banner } from 'fumadocs-ui/components/banner'

export function VersionBanner() {
    const pathname = useRouterState({ select: state => state.location.pathname })
    if (!pathname.startsWith('/docs/v1')) return null

    return (
        <Banner id="v1-legacy" variant="rainbow">
            You are viewing the v1 documentation. Solar Icons v2 is now stable and brings CSS
            variables, built-in duotone, and one package per framework.{' '}
            <Link to="/docs/$" params={{ _splat: 'v2' }} className="underline">
                Explore v2
            </Link>
        </Banner>
    )
}
