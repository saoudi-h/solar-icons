import { Heart, Home as HomeIcon, Weigher } from '@solar-icons/react'

import { Server } from './Server'

interface AppProps {
    dynamicWeight: 'Linear' | 'Outline'
}

export function App({ dynamicWeight }: AppProps) {
    return (
        <main>
            <Heart weight="Bold" aria-label="Favourite" />
            <HomeIcon weight={dynamicWeight} />
            <Weigher />
            <Server />
        </main>
    )
}
