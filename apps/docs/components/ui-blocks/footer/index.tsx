import { NoiseSvg } from '@/components/ui/noise-svg'
import { ArrowRightUp } from '@solar-icons/react/ssr'
import Link from 'next/link'
import React from 'react'
import { FooterMotion } from '../animations/FooterMotion'
import { Logo } from '../logo'
import type { FooterProps } from './types'

export const Footer: React.FC<FooterProps> = ({ sections, bottomText }) => {
    return (
        <FooterMotion
            className={`
          relative flex w-full flex-1 flex-col
          md:px-10
        `}>
            <div
                className={`
                  relative mt-6 flex w-full max-w-fd-container flex-col
                  items-center gap-8 self-center py-0
                  md:mx-10 md:mt-12 md:py-12
                `}>
                <div
                    className={`
                      relative w-full gap-2 overflow-hidden rounded-none
                      bg-accent/30 py-12
                      md:rounded-3xl
                    `}>
                    <div className="absolute inset-0 z-0 overflow-hidden">
                        <NoiseSvg
                            className={`
                              pointer-events-none absolute inset-0 size-full
                              opacity-30
                            `}
                        />
                        <div
                            className={`
                              absolute top-0 left-1/3 h-1/2 w-1/2
                              -translate-x-1/2 -translate-y-1/2 rounded-full
                              bg-linear-to-b from-teal-950/30 to-transparent
                              blur-3xl
                            `}></div>
                        <div
                            className={`
                              absolute top-0 left-2/3 h-1/3 w-1/3
                              -translate-x-1/2 -translate-y-1/2 rounded-full
                              bg-linear-to-b from-pink-700/20 to-transparent
                              blur-3xl
                            `}></div>
                        <div
                            className="absolute inset-0"
                            style={{
                                background:
                                    'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                            }}
                        />
                    </div>
                    <div
                        className={`
                          relative my-14 mt-16 flex flex-col gap-12 px-12
                          lg:flex-row lg:gap-2
                        `}>
                        <div
                            className={`
                          space-y-4
                          md:pr-8
                        `}>
                            <div className="flex items-center justify-start">
                                <Logo />
                            </div>
                            <p className="text-base text-muted-foreground">{bottomText}</p>
                        </div>

                        <div
                            className={`
                              container mx-auto grid grid-cols-1 gap-8 px-4
                              md:grid-cols-3
                            `}>
                            {sections.map((section, index) => {
                                return (
                                    <div key={index}>
                                        <h3
                                            className={`
                                          mb-4 font-heading text-base font-bold
                                        `}>
                                            {section.title}
                                        </h3>
                                        <ul className="space-y-2">
                                            {section.links.map((link, linkIndex) => (
                                                <li key={linkIndex}>
                                                    <Link
                                                        href={link.url}
                                                        className={`
                                                          flex flex-row
                                                          items-center gap-3
                                                          rounded-md border-l-2
                                                          border-transparent
                                                          bg-linear-to-r
                                                          from-transparent
                                                          to-transparent py-1
                                                          pl-2
                                                          text-muted-foreground
                                                          transition-colors
                                                          duration-100
                                                          ease-linear
                                                          hover:border-primary
                                                          hover:from-primary/30
                                                          hover:text-primary
                                                        `}>
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
