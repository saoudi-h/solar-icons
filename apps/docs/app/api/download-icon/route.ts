import { NextRequest, NextResponse } from 'next/server'
import fs from 'fs/promises'
import path from 'path'
import sharp from 'sharp'

export async function GET(request: NextRequest) {
    const { searchParams } = new URL(request.url)
    const iconName = searchParams.get('iconName')
    const format = searchParams.get('format')

    if (!iconName || !format) {
        return new NextResponse('Missing iconName or format', { status: 400 })
    }

    const iconPath = path.join(process.cwd(), '../../packages/core/svgs', iconName + '.svg')

    try {
        const svgContent = await fs.readFile(iconPath, 'utf-8')

        if (format === 'svg') {
            return new NextResponse(svgContent, {
                headers: {
                    'Content-Type': 'image/svg+xml',
                    'Content-Disposition': `attachment; filename="${iconName}.svg"`,
                },
            })
        } else if (format === 'png') {
            const pngBuffer = await sharp(Buffer.from(svgContent)).png().toBuffer()
            return new NextResponse(pngBuffer, {
                headers: {
                    'Content-Type': 'image/png',
                    'Content-Disposition': `attachment; filename="${iconName}.png"`,
                },
            })
        }

        return new NextResponse('Invalid format', { status: 400 })
    } catch (error) {
        return new NextResponse('Icon not found', { status: 404 })
    }
}
