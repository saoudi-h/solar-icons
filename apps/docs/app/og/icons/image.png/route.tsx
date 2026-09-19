import { generateOGImage } from '@/lib/og-template'

export const revalidate = false

export async function GET() {
    return generateOGImage({
        title: 'Explore Solar Icons',
        description: 'Browse all six styles',
    })
}
