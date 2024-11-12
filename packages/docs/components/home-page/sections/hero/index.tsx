'use client'
import React from 'react'
import { Button } from '@/components/ui/button'
import { HeroRotation } from './HeroRotation'

export const HeroSection = () => {
    return (
        <section className="relative flex flex-col items-center rounded-2xl bg-hero-section-centered-navbar px-3 md:rounded-3xl md:px-0 max-w-fd-container self-center w-full gap-2 bg-accent/30 overflow-hidden">
            <div className="my-14 mt-16 flex flex-col items-center justify-center gap-6">
                <h1 className="text-center text-[clamp(2.125rem,1.142rem+3.659vw,4rem)] leading-none text-foreground font-heading font-black">
                    Solar Icons
                    <br />
                    Empower Your Projects
                </h1>
                <p className="text-center text-base text-default-600 sm:w-[466px] md:text-lg md:leading-6">
                    A comprehensive icon library tailored for modern web and mobile applications,
                    with multi-style support and cross-framework compatibility.
                </p>
                <div className="flex flex-col items-center gap-3 sm:flex-row sm:gap-6">
                    <Button variant="default" className="rounded-full" size="xl">
                        Get Started
                    </Button>
                    <Button variant="secondary" className="rounded-full" size="xl">
                        Explore Icons
                    </Button>
                </div>
            </div>
            <HeroRotation />
        </section>
    )
}
