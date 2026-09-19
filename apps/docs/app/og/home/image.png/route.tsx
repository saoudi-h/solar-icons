import { generateOGImage } from '@/lib/og-template'

export const revalidate = false

export async function GET() {
    return generateOGImage({
        title: 'Solar Icons',
        description: '1,380 icons · 6 styles',
    })
}
