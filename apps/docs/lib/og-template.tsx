import fs from 'node:fs/promises'
import path from 'node:path'

import { ImageResponse } from 'next/og'

const SOLAR_LOGO_PATH =
    'M231.568 895.459s-.057-317.869 1.29-323.02c.774-2.96 2.46-.887 8.54 10.492 54.264 101.557 176.21 192.298 319.114 237.455 132.655 41.918 202.129-47.141 123.043-157.732-26.702-37.341-35.127-46.303-289.274-307.706-41.689-42.88-70.437-75.863-70.437-80.813 0-.553 8.418 3.215 18.707 8.374 22.415 11.238 124.572 57.31 187.508 84.563 154.71 66.994 174.327 77.802 214.908 118.411C880.826 621.436 813.984 849.03 626.64 888.38c-50.742 10.658-395.072 7.079-395.072 7.079zm422.915-169.18c-24.406-11.007-62.778-28.085-85.27-37.951-182.594-80.095-219.952-97.933-254.94-121.733-163.986-111.546-132.45-362.603 53.354-424.741 37.365-12.496 26.812-11.93 235.955-12.64 98.741-.335 189.132.512 189.132.512s-.104 73 .055 140.314c.184 77.805-.025 151.057.116 162.782.303 25.056.189 25.168-8.467 8.308-51.062-99.466-174.692-193.793-310.916-237.224-144.244-45.987-217.894 50.75-126.614 166.303 25.406 32.163 62.734 72.023 167.412 178.772 158.812 161.953 192.678 197.911 185.925 197.412-.752-.055-21.335-9.107-45.742-20.114z'

const OG_FIELD = path.join(process.cwd(), 'public/og/solar-icons-field.png')
const ALEO_REGULAR = path.join(
    process.cwd(),
    'node_modules/@fontsource/aleo/files/aleo-latin-400-normal.woff'
)
const ALEO_BOLD = path.join(
    process.cwd(),
    'node_modules/@fontsource/aleo/files/aleo-latin-700-normal.woff'
)
const HOST_GROTESK = path.join(
    process.cwd(),
    'node_modules/@fontsource/host-grotesk/files/host-grotesk-latin-400-normal.woff'
)

interface OGImageProps {
    title: string
    description?: string
}

interface OGAssets {
    field: string
    aleoRegular: Buffer
    aleoBold: Buffer
    hostGrotesk: Buffer
}

let assetsPromise: Promise<OGAssets> | undefined

function toDataUri(buffer: Buffer) {
    return `data:image/png;base64,${buffer.toString('base64')}`
}

function loadOGAssets() {
    if (!assetsPromise) {
        assetsPromise = Promise.all([
            fs.readFile(OG_FIELD),
            fs.readFile(ALEO_REGULAR),
            fs.readFile(ALEO_BOLD),
            fs.readFile(HOST_GROTESK),
        ]).then(([field, aleoRegular, aleoBold, hostGrotesk]) => ({
            field: toDataUri(field),
            aleoRegular,
            aleoBold,
            hostGrotesk,
        }))
    }

    return assetsPromise
}

function clampText(value: string, max: number) {
    const text = value.trim()
    return text.length <= max ? text : `${text.slice(0, max - 1).trimEnd()}…`
}

function compactDescription(value: string, max: number) {
    const text = value.trim()
    const firstSentence = text.split(/[.!?](?:\s|$)/, 1)[0]?.trim() || text
    const clauses = firstSentence.split(/,\s*/)
    let compact = clauses[0]?.trim() || firstSentence

    for (const clause of clauses.slice(1)) {
        const candidate = `${compact}, ${clause.trim()}`
        if (candidate.length > max) break
        compact = candidate
    }

    return clampText(compact, max)
}

export async function generateOGImage({ title, description }: OGImageProps) {
    const assets = await loadOGAssets()

    return new ImageResponse(
        <div
            style={{
                display: 'flex',
                width: '100%',
                height: '100%',
                padding: '42px 48px 42px 58px',
                gap: '42px',
                backgroundColor: '#f5f6fb',
                color: '#171923',
                fontFamily: 'Host Grotesk',
            }}>
            <div
                style={{
                    display: 'flex',
                    flexDirection: 'column',
                    justifyContent: 'space-between',
                    width: '450px',
                    height: '100%',
                }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="40"
                        height="40"
                        viewBox="0 0 1024 1024">
                        <path d={SOLAR_LOGO_PATH} fill="#171923" />
                    </svg>
                    <span
                        style={{
                            fontFamily: 'Aleo',
                            fontSize: '28px',
                            fontWeight: 700,
                            color: '#171923',
                        }}>
                        Solar Icons
                    </span>
                </div>

                <div
                    style={{
                        display: 'flex',
                        flexDirection: 'column',
                        justifyContent: 'center',
                        flexGrow: 1,
                        paddingTop: '28px',
                        paddingBottom: '28px',
                    }}>
                    <div
                        style={{
                            maxWidth: '450px',
                            fontFamily: 'Aleo',
                            fontSize: '86px',
                            fontWeight: 400,
                            lineHeight: 0.98,
                            color: '#171923',
                        }}>
                        {clampText(title, 48)}
                    </div>
                    {description ? (
                        <div
                            style={{
                                maxWidth: '440px',
                                marginTop: '26px',
                                fontSize: '34px',
                                fontWeight: 400,
                                lineHeight: 1.16,
                                color: '#45464e',
                            }}>
                            {compactDescription(description, 56)}
                        </div>
                    ) : null}
                </div>

                <div
                    style={{
                        display: 'flex',
                        fontSize: '18px',
                        fontWeight: 400,
                        color: '#6b7187',
                    }}>
                    solar-icons.vercel.app
                </div>
            </div>

            <div
                style={{
                    display: 'flex',
                    width: '600px',
                    height: '548px',
                    overflow: 'hidden',
                    borderRadius: '32px',
                    backgroundColor: '#d9d7ec',
                }}>
                {/* oxlint-disable-next-line nextjs/no-img-element -- Satori accepts data URIs for local raster assets. */}
                <img
                    src={assets.field}
                    width="600"
                    height="548"
                    alt=""
                    style={{ width: '600px', height: '548px' }}
                />
            </div>
        </div>,
        {
            width: 1200,
            height: 630,
            fonts: [
                { name: 'Aleo', data: assets.aleoRegular, weight: 400, style: 'normal' },
                { name: 'Aleo', data: assets.aleoBold, weight: 700, style: 'normal' },
                { name: 'Host Grotesk', data: assets.hostGrotesk, weight: 400, style: 'normal' },
            ],
        }
    )
}
