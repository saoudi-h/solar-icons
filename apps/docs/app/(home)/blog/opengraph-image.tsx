import { ImageResponse } from 'next/og'

import { loadCover, loadHeadingFont, OG_SIZE, OgTemplate } from './components/og'

export const alt = 'Solar Icons blog'
export const size = OG_SIZE
export const contentType = 'image/png'

export default async function OpengraphImage() {
    const [cover, font] = await Promise.all([loadCover(), loadHeadingFont()])

    return new ImageResponse(
        <OgTemplate
            title="Blog"
            description="Articles about Solar Icons, interface design, and development."
            cover={cover}
        />,
        {
            ...size,
            fonts: [{ name: 'Bricolage', data: font, weight: 700, style: 'normal' }],
        }
    )
}
