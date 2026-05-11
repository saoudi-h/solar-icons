import { isMarkdownPreferred, rewritePath } from 'fumadocs-core/negotiation'
import type { NextRequest } from 'next/server'
import { NextResponse } from 'next/server'

const { rewrite: rewriteLLM } = rewritePath('/docs/*path', '/llms.mdx/*path')
const { rewrite: rewriteMdx } = rewritePath('/docs{/*path}.mdx', '/llms.mdx{/*path}')

export default function proxy(request: NextRequest) {
    const result = rewriteMdx(request.nextUrl.pathname)
    if (result) {
        return NextResponse.rewrite(new URL(result, request.nextUrl))
    }

    if (isMarkdownPreferred(request)) {
        const result = rewriteLLM(request.nextUrl.pathname)

        if (result) {
            return NextResponse.rewrite(new URL(result, request.nextUrl))
        }
    }

    return NextResponse.next()
}
