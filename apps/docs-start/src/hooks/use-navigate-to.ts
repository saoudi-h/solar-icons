import { useRouter } from '@tanstack/react-router'
import { useCallback } from 'react'

import { toTanStackLocation } from '~/utils/routes'

/** Navigates to a path of the site through the router, and to any other address with the browser. */
export function useNavigateTo() {
    const router = useRouter()

    return useCallback(
        (href: string) => {
            const location = toTanStackLocation(href)
            if (!location) {
                window.location.assign(href)
                return
            }

            void router.navigate(location as never)
        },
        [router]
    )
}
