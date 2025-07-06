import React from 'react'
import { FooterProps } from './types'
import Link from 'next/link'
import { ArrowRightUp } from '@solar-icons/react/ssr'
import { Logo } from '../logo'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { FooterMotion } from '../animations/FooterMotion'

export const Footer: React.FC<FooterProps> = ({ sections, bottomText }) => {
    return (
        <FooterMotion className="relative flex w-full md:px-10 flex-1 flex-col">
            <div className="relative flex flex-col items-center mt-24 max-w-fd-container self-center w-full gap-8 py-12 md:mx-10">
                <div className="relative gap-2 bg-accent/30 rounded-2xl md:rounded-3xl py-12 w-full overflow-hidden">
                    <div className="absolute inset-0 overflow-hidden z-0">
                        <NoiseSvg className="absolute size-full inset-0 pointer-events-none opacity-30" />
                        <div className="absolute rounded-full w-1/2 h-1/2 top-0 left-1/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-teal-950/30 to-transparent blur-3xl"></div>
                        <div className="absolute rounded-full w-1/3 h-1/3 top-0 left-2/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-pink-700/20 to-transparent blur-3xl"></div>
                        <div
                            className="absolute inset-0"
                            style={{
                                background:
                                    'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                            }}
                        />
                    </div>
                    <div className="relative my-14 mt-16 flex flex-col lg:flex-row gap-12 lg:gap-2 px-12">
                        <div className="space-y-4 md:pr-8">
                            <div className="flex items-center justify-start">
                                <Logo />
                            </div>
                            <p className="text-small text-muted-foreground">{bottomText}</p>
                        </div>

                        <div className="container mx-auto px-4 grid grid-cols-1 md:grid-cols-3 gap-8">
                            {sections.map((section, index) => {
                                return (
                                    <div key={index}>
                                        <h3 className="text-md font-bold mb-4 font-heading">
                                            {section.title}
                                        </h3>
                                        <ul className="space-y-2">
                                            {section.links.map((link, linkIndex) => (
                                                <li key={linkIndex}>
                                                    <Link
                                                        href={link.url}
                                                        className="flex flex-row gap-3 items-center text-muted-foreground hover:text-primary transition-colors duration-100 ease-linear border-l-2 pl-2 py-1 border-transparent hover:border-primary rounded-md bg-gradient-to-r from-transparent to-transparent hover:from-primary/30">
                                                        {link.icon && link.icon}
                                                        {link.label}
                                                        {link.external && (
                                                            <ArrowRightUp size={16} />
                                                        )}
                                                    </Link>
                                                </li>
                                            ))}
                                        </ul>
                                    </div>
                                )
                            })}
                        </div>
                    </div>
                </div>
            </div>
        </FooterMotion>
    )
}
