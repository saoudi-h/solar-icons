import { generateOGImage } from '@/lib/og-template'

export const revalidate = false

export async function GET() {
    return generateOGImage({
        title: 'Solar Icons',
        description: 'The icon library for React applications and more',
        badge: 'LIBRARY',
    })
}
