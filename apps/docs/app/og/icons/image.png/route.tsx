import { generateOGImage } from '@/lib/og-template'

export const revalidate = false

export async function GET() {
    return generateOGImage({
        title: 'Explore Icons',
        description: 'Browse and discover the complete Solar Icons collection',
        badge: 'ICONS',
    })
}
