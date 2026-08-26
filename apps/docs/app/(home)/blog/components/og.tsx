import fs from 'node:fs/promises'
import path from 'node:path'

import { siteUrl } from '@/lib/metadata'

export const OG_SIZE = { width: 1200, height: 630 }

const FALLBACK_COVER = 'blog-fallback-image-og.png'
const HEADING_FONT = 'assets/og/BricolageGrotesque-Bold.ttf'

const LOGO_PATH =
    'M231.568 895.459s-.057-317.869 1.29-323.02c.774-2.96 2.46-.887 8.54 10.492 54.264 101.557 176.21 192.298 319.114 237.455 132.655 41.918 202.129-47.141 123.043-157.732-26.702-37.341-35.127-46.303-289.274-307.706-41.689-42.88-70.437-75.863-70.437-80.813 0-.553 8.418 3.215 18.707 8.374 22.415 11.238 124.572 57.31 187.508 84.563 154.71 66.994 174.327 77.802 214.908 118.411C880.826 621.436 813.984 849.03 626.64 888.38c-50.742 10.658-395.072 7.079-395.072 7.079zm422.915-169.18c-24.406-11.007-62.778-28.085-85.27-37.951-182.594-80.095-219.952-97.933-254.94-121.733-163.986-111.546-132.45-362.603 53.354-424.741 37.365-12.496 26.812-11.93 235.955-12.64 98.741-.335 189.132.512 189.132.512s-.104 73 .055 140.314c.184 77.805-.025 151.057.116 162.782.303 25.056.189 25.168-8.467 8.308-51.062-99.466-174.692-193.793-310.916-237.224-144.244-45.987-217.894 50.75-126.614 166.303 25.406 32.163 62.734 72.023 167.412 178.772 158.812 161.953 192.678 197.911 185.925 197.412-.752-.055-21.335-9.107-45.742-20.114z'

export async function loadHeadingFont() {
    return fs.readFile(path.join(process.cwd(), HEADING_FONT))
}

function toDataUri(buffer: Buffer, extension: string) {
    const type = extension === 'png' ? 'image/png' : 'image/jpeg'
    return `data:${type};base64,${buffer.toString('base64')}`
}

export async function loadCover(source?: string) {
    try {
        if (source && /^https?:\/\//i.test(source)) {
            const response = await fetch(source)
            if (!response.ok) throw new Error('fetch failed')
            const type = (response.headers.get('content-type') ?? '').split(';')[0]
            if (!['image/png', 'image/jpeg'].includes(type)) {
                throw new Error('unsupported type')
            }
            const buffer = Buffer.from(await response.arrayBuffer())
            return `data:${type};base64,${buffer.toString('base64')}`
        }

        if (source?.startsWith('/')) {
            const extension = path.extname(source).slice(1).toLowerCase()
            if (!['png', 'jpg', 'jpeg'].includes(extension)) {
                throw new Error('unsupported extension')
            }
            const buffer = await fs.readFile(path.join(process.cwd(), 'public', source))
            return toDataUri(buffer, extension)
        }

        throw new Error('no cover')
    } catch {
        const buffer = await fs.readFile(path.join(process.cwd(), 'public', FALLBACK_COVER))
        return toDataUri(buffer, 'png')
    }
}

function clampText(value: string, max: number) {
    const text = value.trim()
    return text.length <= max ? text : `${text.slice(0, max - 1).trimEnd()}…`
}

export function OgTemplate({
    title,
    description,
    cover,
}: {
    title: string
    description?: string
    cover: string
}) {
    return (
        <div
            style={{
                width: '100%',
                height: '100%',
                display: 'flex',
                flexDirection: 'column',
                justifyContent: 'space-between',
                backgroundColor: '#F4F3EE',
                padding: 56,
                position: 'relative',
                overflow: 'hidden',
            }}>
            <div
                style={{
                    position: 'absolute',
                    width: 400,
                    height: 400,
                    borderRadius: 200,
                    backgroundColor: '#6E73C8',
                    opacity: 0.14,
                    left: -130,
                    bottom: -170,
                    display: 'flex',
                }}
            />
            <div
                style={{
                    position: 'absolute',
                    width: 24,
                    height: 24,
                    borderRadius: 12,
                    backgroundColor: '#D7E51A',
                    left: 920,
                    bottom: 16,
                    display: 'flex',
                }}
            />

            <div style={{ display: 'flex', alignItems: 'center', gap: 14 }}>
                <svg width="44" height="44" viewBox="0 0 1024 1024">
                    <path d={LOGO_PATH} fill="#12131A" />
                </svg>
                <div
                    style={{
                        fontSize: 27,
                        fontWeight: 700,
                        color: '#12131A',
                        fontFamily: 'Bricolage',
                    }}>
                    Solar Icons
                </div>
            </div>

            <div
                style={{
                    display: 'flex',
                    alignItems: 'center',
                    gap: 48,
                    position: 'relative',
                }}>
                <div
                    style={{
                        display: 'flex',
                        flexDirection: 'column',
                        width: 600,
                        gap: 22,
                    }}>
                    <div
                        style={{
                            fontSize: 54,
                            fontWeight: 700,
                            lineHeight: 1.12,
                            color: '#12131A',
                            fontFamily: 'Bricolage',
                        }}>
                        {clampText(title, 84)}
                    </div>
                    {description ? (
                        <div
                            style={{
                                fontSize: 25,
                                lineHeight: 1.45,
                                color: '#565B69',
                            }}>
                            {clampText(description, 130)}
                        </div>
                    ) : null}
                </div>
                <div
                    style={{
                        display: 'flex',
                        width: 440,
                        height: 430,
                        borderRadius: 28,
                        overflow: 'hidden',
                        border: '2px solid #12131A',
                        backgroundColor: '#ffffff',
                    }}>
                    <img src={cover} width={440} height={430} style={{ objectFit: 'cover' }} />
                </div>
            </div>

            <div style={{ display: 'flex', fontSize: 20, color: '#8D98AE' }}>
                {`${siteUrl.host}/blog`}
            </div>
        </div>
    )
}
