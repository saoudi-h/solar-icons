import { getUmamiScript } from '@/lib/umami-script'

export const revalidate = 86400

export function GET() {
    return getUmamiScript('loader.js')
}
