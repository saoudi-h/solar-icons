import React from 'react'
import { FooterProps } from './types'
import Link from 'next/link'
import { ArrowRightUp } from '@solar-icons/react/ssr'
import { Logo } from '../logo'

export const Footer: React.FC<FooterProps> = ({ sections, bottomText }) => {
    return (
        <footer className="flex w-full flex-col border-t border-border bg-accent/30">
            <div className="max-w-fd-container px-6 pb-8 pt-16 sm:pt-24 lg:px-8 lg:pt-32 self-center w-full flex flex-col lg:flex-row">
                    <div className="space-y-8 md:pr-8">
                        <div className="flex items-center justify-start">
                                <Logo />
                        </div>
                        <p className="text-small text-muted-foreground">{bottomText}</p>
                    </div>

                    <div className="container mx-auto px-4 grid grid-cols-1 md:grid-cols-3 lg:grid-cols-4 gap-8">
                        {sections.map((section, index) => {
                            console.log('section.title : ', section.title)
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
                                                    {link.external && <ArrowRightUp size={16} />}
                                                </Link>
                                            </li>
                                        ))}
                                    </ul>
                                </div>
                            )
                        })}
                    </div>
                </div>
        </footer>
    )
}
