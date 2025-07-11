import { LogoIcon } from '@/components/ui-blocks/logo/LogoIcon'
import type { ImageResponseOptions } from 'next/dist/compiled/@vercel/og/types'
import { ImageResponse } from 'next/og'
import type { ReactElement, ReactNode } from 'react'

interface GenerateProps {
    title: ReactNode
    description?: ReactNode
    primaryTextColor?: string | undefined
}

export function generateOGImage(options: GenerateProps & ImageResponseOptions): ImageResponse {
    const { title, description, primaryTextColor, ...rest } = options

    return new ImageResponse(
        generate({
            title,
            description,
            primaryTextColor,
        }),
        {
            width: 1200,
            height: 630,
            ...rest,
        }
    )
}

export function generate({
    primaryTextColor = 'rgb(255,150,255)',
    ...props
}: GenerateProps): ReactElement {
    return (
        <div
            style={{
                position: 'relative',
                display: 'flex',
                width: '100%',
                height: '100%',
                padding: '1rem',
                backgroundColor: 'rgb(0,0,0)',
            }}>
            <div
                style={{
                    overflow: 'hidden',
                    borderRadius: '3rem',
                    position: 'relative',
                    fontFamily: 'body',
                    display: 'flex',
                    flexDirection: 'column',
                    width: '100%',
                    height: '100%',
                    color: 'white',
                    backgroundColor: 'rgb(15,15,15)',
                }}>
                <svg
                    style={{
                        filter: 'blur(1px)',
                        position: 'absolute',
                        inset: '0',
                        width: '100%',
                        height: '100%',
                        opacity: 0.5,
                    }}>
                    <filter id="noise-filter">
                        <feTurbulence
                            type="fractalNoise"
                            baseFrequency="30.54"
                            numOctaves="10"
                            stitchTiles="stitch"></feTurbulence>
                        <feColorMatrix type="saturate" values="0"></feColorMatrix>
                        <feComponentTransfer>
                            <feFuncR type="linear" slope="0.61"></feFuncR>
                            <feFuncG type="linear" slope="0.61"></feFuncG>
                            <feFuncB type="linear" slope="0.61"></feFuncB>
                            <feFuncA type="linear" slope="1"></feFuncA>
                        </feComponentTransfer>
                        <feComponentTransfer>
                            <feFuncR type="linear" slope="3" intercept="-1.00" />
                            <feFuncG type="linear" slope="3" intercept="-1.00" />
                            <feFuncB type="linear" slope="3" intercept="-1.00" />
                        </feComponentTransfer>
                    </filter>
                    <rect width="100%" height="100%" filter="url(#noise-filter)"></rect>
                </svg>
                <div
                    style={{
                        position: 'absolute',
                        top: '0',
                        left: '50%',
                        transform: 'translateX(-50%) translateY(-50%)',
                        borderRadius: '9999px',
                        width: '66.666667%',
                        height: '66.666667%',
                        backgroundColor: 'transparent',
                        filter: 'blur(128px)',
                        background:
                            'linear-gradient(180deg, hsl(235, 44%, 59%) 0%, transparent 100%)',
                    }}></div>
                <div
                    style={{
                        display: 'flex',
                        flexDirection: 'column',
                        width: '100%',
                        height: '100%',
                        padding: '4rem',
                    }}>
                    <p
                        style={{
                            fontWeight: 700,
                            fontSize: '76px',
                            fontFamily: 'heading',
                        }}>
                        {props.title}
                    </p>
                    <p
                        style={{
                            fontSize: '48px',
                            color: 'rgba(240,240,240,0.7)',
                        }}>
                        {props.description}
                    </p>
                    <div
                        style={{
                            display: 'flex',
                            flexDirection: 'row',
                            alignItems: 'center',
                            gap: '24px',
                            marginTop: 'auto',
                            color: primaryTextColor,
                        }}>
                        <LogoIcon width={64} height={64} color={'hsl(235 44% 59%)'} />
                        <p
                            style={{
                                fontSize: '46px',
                                fontWeight: 700,
                                fontFamily: 'heading',
                            }}>
                            Solar Icons
                        </p>
                    </div>
                </div>
            </div>
        </div>
    )
}
