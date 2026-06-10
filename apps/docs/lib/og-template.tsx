import { ImageResponse } from '@takumi-rs/image-response'

const LOGO_SVG_DATA_URI =
    'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCI+PHBhdGggZD0iTTIzMS41NjggODk1LjQ1OXMtLjA1Ny0zMTcuODY5IDEuMjktMzIzLjAyYy43NzQtMi45NiAyLjQ2LS44ODcgOC41NCAxMC40OTIgNTQuMjY0IDEwMS41NTcgMTc2LjIxIDE5Mi4yOTggMzE5LjExNCAyMzcuNDU1IDEzMi42NTUgNDEuOTE4IDIwMi4xMjktNDcuMTQxIDEyMy4wNDMtMTU3LjczMi0yNi43MDItMzcuMzQxLTM1LjEyNy00Ni4zMDMtMjg5LjI3NC0zMDcuNzA2LTQxLjY4OS00Mi44OC03MC40MzctNzUuODYzLTcwLjQzNy04MC44MTMgMC0uNTUzIDguNDE4IDMuMjE1IDE4LjcwNyA4LjM3NCAyMi40MTUgMTEuMjM4IDEyNC41NzIgNTcuMzEgMTg3LjUwOCA4NC41NjMgMTU0LjcxIDY2Ljk5NCAxNzQuMzI3IDc3LjgwMiAyMTQuOTA4IDExOC40MTFDODgwLjgyNiA2MjEuNDM2IDgxMy45ODQgODQ5LjAzIDYyNi42NCA4ODguMzhjLTUwLjc0MiAxMC42NTgtMzk1LjA3MiA3LjA3OS0zOTUuMDcyIDcuMDc5em00MjIuOTE1LTE2OS4xOGMtMjQuNDA2LTExLjAwNy02Mi43NzgtMjguMDg1LTg1LjI3LTM3Ljk1MS0xODIuNTk0LTgwLjA5NS0yMTkuOTUyLTk3LjkzMy0yNTQuOTQtMTIxLjczMy0xNjMuOTg2LTExMS41NDYtMTMyLjQ1LTM2Mi42MDMgNTMuMzU0LTQyNC43NDEgMzcuMzY1LTEyLjQ5NiAyNi44MTItMTEuOTMgMjM1Ljk1NS0xMi42NCA5OC43NDEtLjMzNSAxODkuMTMyLjUxMiAxODkuMTMyLjUxMnMtLjEwNCA3MyAuMDU1IDE0MC4zMTRjLjE4NCA3Ny44MDUtLjAyNSAxNTEuMDU3LjExNiAxNjIuNzgyLjMwMyAyNS4wNTYuMTg5IDI1LjE2OC04LjQ2NyA4LjMwOC01MS4wNjItOTkuNDY2LTE3NC42OTItMTkzLjc5My0zMTAuOTE2LTIzNy4yMjQtMTQ0LjI0NC00NS45ODctMjE3Ljg5NCA1MC43NS0xMjYuNjE0IDE2Ni4zMDMgMjUuNDA2IDMyLjE2MyA2Mi43MzQgNzIuMDIzIDE2Ny40MTIgMTc4Ljc3MiAxNTguODEyIDE2MS45NTMgMTkyLjY3OCAxOTcuOTExIDE4NS45MjUgMTk3LjQxMi0uNzUyLS4wNTUtMjEuMzM1LTkuMTA3LTQ1Ljc0Mi0yMC4xMTR6IiBmaWxsPSIjNjM2NmYxIi8+PC9zdmc+'

interface OGImageProps {
    title: string
    description?: string
}

export function generateOGImage({ title, description }: OGImageProps) {
    return new ImageResponse(
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
                            color: 'rgb(240,240,240)',
                        }}>
                        {title}
                    </p>
                    {description && (
                        <p
                            style={{
                                fontSize: '48px',
                                color: 'rgba(240,240,240,0.7)',
                            }}>
                            {description}
                        </p>
                    )}
                    <div
                        style={{
                            display: 'flex',
                            flexDirection: 'row',
                            alignItems: 'center',
                            gap: '24px',
                            marginTop: 'auto',
                        }}>
                        <img
                            src={LOGO_SVG_DATA_URI}
                            width={64}
                            height={64}
                            style={{ objectFit: 'contain' }}
                        />
                        <p
                            style={{
                                fontSize: '46px',
                                fontWeight: 700,
                                color: 'rgb(240,240,240)',
                            }}>
                            Solar Icons
                        </p>
                    </div>
                </div>
            </div>
        </div>,
        {
            width: 1200,
            height: 630,
            format: 'webp',
        }
    )
}
