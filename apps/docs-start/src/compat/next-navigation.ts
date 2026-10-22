import { useRouter as useTanStackRouter, useRouterState } from '@tanstack/react-router'

import { toTanStackLocation } from './routes'

export function usePathname(): string {
    return useRouterState({ select: state => state.location.pathname })
}

export function useRouter() {
    const router = useTanStackRouter()

    function navigate(href: string, replace = false) {
        const location = toTanStackLocation(href)
        if (!location) {
            window.location.assign(href)
            return
        }

        void router.navigate({ ...location, replace } as never)
    }

    return {
        push: (href: string) => navigate(href),
        replace: (href: string) => navigate(href, true),
        back: () => router.history.back(),
        forward: () => router.history.forward(),
        refresh: () => router.invalidate(),
    }
}
