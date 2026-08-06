import { HomeBold, WeigherBold } from '@solar-icons/react-perf'
import { Heart, Home as HomeIcon } from '@solar-icons/react'

interface AppProps {
    dynamicWeight: 'Linear' | 'Outline'
}

export function App({ dynamicWeight }: AppProps) {
    return (
        <main>
            <HomeBold />
            <WeigherBold />
            <Heart weight="Bold" aria-label="Favourite" />
            <HomeIcon weight={dynamicWeight} />
        </main>
    )
}
