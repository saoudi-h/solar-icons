import { ImageResponse } from 'next/og'

const SOLAR_LOGO_PATH =
    'M231.568 895.459s-.057-317.869 1.29-323.02c.774-2.96 2.46-.887 8.54 10.492 54.264 101.557 176.21 192.298 319.114 237.455 132.655 41.918 202.129-47.141 123.043-157.732-26.702-37.341-35.127-46.303-289.274-307.706-41.689-42.88-70.437-75.863-70.437-80.813 0-.553 8.418 3.215 18.707 8.374 22.415 11.238 124.572 57.31 187.508 84.563 154.71 66.994 174.327 77.802 214.908 118.411C880.826 621.436 813.984 849.03 626.64 888.38c-50.742 10.658-395.072 7.079-395.072 7.079zm422.915-169.18c-24.406-11.007-62.778-28.085-85.27-37.951-182.594-80.095-219.952-97.933-254.94-121.733-163.986-111.546-132.45-362.603 53.354-424.741 37.365-12.496 26.812-11.93 235.955-12.64 98.741-.335 189.132.512 189.132.512s-.104 73 .055 140.314c.184 77.805-.025 151.057.116 162.782.303 25.056.189 25.168-8.467 8.308-51.062-99.466-174.692-193.793-310.916-237.224-144.244-45.987-217.894 50.75-126.614 166.303 25.406 32.163 62.734 72.023 167.412 178.772 158.812 161.953 192.678 197.911 185.925 197.412-.752-.055-21.335-9.107-45.742-20.114z'

interface OGImageProps {
    title: string
    description?: string
    badge?: string
}

export function generateOGImage({ title, description, badge = 'DOCS' }: OGImageProps) {
    return new ImageResponse(
        <div
            style={{
                position: 'relative',
                display: 'flex',
                width: '100%',
                height: '100%',
                padding: '24px',
                backgroundColor: '#030509',
            }}>
            {/* Main Container Card */}
            <div
                style={{
                    position: 'relative',
                    display: 'flex',
                    flexDirection: 'row',
                    alignItems: 'center',
                    justifyContent: 'space-between',
                    width: '100%',
                    height: '100%',
                    borderRadius: '32px',
                    backgroundColor: '#080b11',
                    border: '1px solid rgba(255, 255, 255, 0.08)',
                    padding: '72px',
                    overflow: 'hidden',
                }}>
                {/* Background Glows (Using pure SVG radialGradients to guarantee Satori support) */}
                <svg
                    width="600"
                    height="600"
                    style={{
                        position: 'absolute',
                        top: '-150px',
                        right: '-150px',
                        pointerEvents: 'none',
                    }}>
                    <defs>
                        <radialGradient id="glow-top-right" cx="50%" cy="50%" r="50%">
                            <stop offset="0%" stopColor="#6366f1" stopOpacity="0.15" />
                            <stop offset="100%" stopColor="#6366f1" stopOpacity="0" />
                        </radialGradient>
                    </defs>
                    <rect width="600" height="600" fill="url(#glow-top-right)" />
                </svg>

                <svg
                    width="500"
                    height="500"
                    style={{
                        position: 'absolute',
                        bottom: '-150px',
                        left: '-150px',
                        pointerEvents: 'none',
                    }}>
                    <defs>
                        <radialGradient id="glow-bottom-left" cx="50%" cy="50%" r="50%">
                            <stop offset="0%" stopColor="#8b5cf6" stopOpacity="0.1" />
                            <stop offset="100%" stopColor="#8b5cf6" stopOpacity="0" />
                        </radialGradient>
                    </defs>
                    <rect width="500" height="500" fill="url(#glow-bottom-left)" />
                </svg>

                {/* Left Side: Text and Badges */}
                <div
                    style={{
                        display: 'flex',
                        flexDirection: 'column',
                        justifyContent: 'space-between',
                        width: '640px',
                        height: '100%',
                    }}>
                    {/* Header: Brand Logo & Text */}
                    <div
                        style={{
                            display: 'flex',
                            flexDirection: 'row',
                            alignItems: 'center',
                            gap: '12px',
                        }}>
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="36"
                            height="36"
                            viewBox="0 0 1024 1024"
                            style={{ width: '36px', height: '36px' }}>
                            <path d={SOLAR_LOGO_PATH} fill="#818cf8" />
                        </svg>
                        <span
                            style={{
                                fontSize: '24px',
                                fontWeight: 800,
                                color: '#ffffff',
                                letterSpacing: '0.05em',
                            }}>
                            SOLAR ICONS
                        </span>
                    </div>

                    {/* Middle: Title & Description */}
                    <div
                        style={{
                            display: 'flex',
                            flexDirection: 'column',
                            justifyContent: 'center',
                            flexGrow: 1,
                            marginTop: '32px',
                            marginBottom: '32px',
                        }}>
                        <span
                            style={{
                                fontSize: '56px',
                                fontWeight: 800,
                                color: '#ffffff',
                                letterSpacing: '-0.02em',
                                lineHeight: 1.15,
                            }}>
                            {title}
                        </span>
                        {description && (
                            <span
                                style={{
                                    fontSize: '24px',
                                    color: '#94a3b8',
                                    lineHeight: 1.4,
                                    marginTop: '16px',
                                }}>
                                {description}
                            </span>
                        )}
                    </div>

                    {/* Footer: Badge and URL */}
                    <div
                        style={{
                            display: 'flex',
                            flexDirection: 'row',
                            alignItems: 'center',
                            gap: '20px',
                        }}>
                        <div
                            style={{
                                display: 'flex',
                                padding: '6px 16px',
                                borderRadius: '9999px',
                                backgroundColor: 'rgba(99, 102, 241, 0.12)',
                                border: '1px solid rgba(99, 102, 241, 0.25)',
                                color: '#a5b4fc',
                                fontSize: '14px',
                                fontWeight: 700,
                                letterSpacing: '0.08em',
                            }}>
                            {badge.toUpperCase()}
                        </div>
                        <span
                            style={{
                                fontSize: '18px',
                                color: 'rgba(255, 255, 255, 0.4)',
                                letterSpacing: '0.02em',
                            }}>
                            solar-icons.vercel.app
                        </span>
                    </div>
                </div>

                {/* Right Side: Glowing Cosmic Emblem */}
                <div
                    style={{
                        display: 'flex',
                        alignItems: 'center',
                        justifyContent: 'center',
                        width: '360px',
                        height: '100%',
                        position: 'relative',
                    }}>
                    {/* Outer Orbiting Ring */}
                    <div
                        style={{
                            display: 'flex',
                            alignItems: 'center',
                            justifyContent: 'center',
                            width: '320px',
                            height: '320px',
                            borderRadius: '160px',
                            border: '1px solid rgba(99, 102, 241, 0.15)',
                            backgroundColor: 'rgba(99, 102, 241, 0.01)',
                            position: 'relative',
                        }}>
                        {/* Orbiting Particle 1 */}
                        <div
                            style={{
                                position: 'absolute',
                                top: '40px',
                                right: '40px',
                                width: '12px',
                                height: '12px',
                                borderRadius: '6px',
                                backgroundColor: '#818cf8',
                            }}
                        />

                        {/* Middle Ring */}
                        <div
                            style={{
                                display: 'flex',
                                alignItems: 'center',
                                justifyContent: 'center',
                                width: '240px',
                                height: '240px',
                                borderRadius: '120px',
                                border: '1px solid rgba(99, 102, 241, 0.25)',
                                backgroundColor: 'rgba(99, 102, 241, 0.03)',
                                position: 'relative',
                            }}>
                            {/* Orbiting Particle 2 */}
                            <div
                                style={{
                                    position: 'absolute',
                                    bottom: '30px',
                                    left: '30px',
                                    width: '8px',
                                    height: '8px',
                                    borderRadius: '4px',
                                    backgroundColor: '#c084fc',
                                }}
                            />

                            {/* Inner Circle / Glowing Core */}
                            <div
                                style={{
                                    display: 'flex',
                                    alignItems: 'center',
                                    justifyContent: 'center',
                                    width: '160px',
                                    height: '160px',
                                    borderRadius: '80px',
                                    border: '1px solid rgba(255, 255, 255, 0.08)',
                                    position: 'relative',
                                }}>
                                <svg
                                    width="160"
                                    height="160"
                                    style={{
                                        position: 'absolute',
                                        top: 0,
                                        left: 0,
                                        pointerEvents: 'none',
                                    }}>
                                    <defs>
                                        <radialGradient id="glow-core" cx="50%" cy="50%" r="50%">
                                            <stop offset="0%" stopColor="#6366f1" stopOpacity="0.25" />
                                            <stop offset="100%" stopColor="#6366f1" stopOpacity="0.05" />
                                        </radialGradient>
                                    </defs>
                                    <rect width="160" height="160" rx="80" ry="80" fill="url(#glow-core)" />
                                </svg>
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="88"
                                    height="88"
                                    viewBox="0 0 1024 1024"
                                    style={{
                                        width: '88px',
                                        height: '88px',
                                        position: 'relative',
                                        zIndex: 10,
                                    }}>
                                    <defs>
                                        <linearGradient id="logo-grad-emblem" x1="0%" y1="0%" x2="100%" y2="100%">
                                            <stop offset="0%" stopColor="#818cf8" />
                                            <stop offset="100%" stopColor="#c084fc" />
                                        </linearGradient>
                                    </defs>
                                    <path d={SOLAR_LOGO_PATH} fill="url(#logo-grad-emblem)" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>,
        {
            width: 1200,
            height: 630,
        }
    )
}
