import { llms } from 'fumadocs-core/source'

import { source } from '@/lib/source'
// cached forever
export const revalidate = false
export function GET() {
    return new Response(llms(source).index())
}
