'use client'
import React from 'react'
import { Button } from '@/components/ui/button'
import { HeroRotation } from './HeroRotation'
import { Heading } from '@/components/ui/heading'

export const HeroSection = () => {
    return (
        <section className="relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full">
            <div className="gap-2 bg-accent/30 overflow-hidden rounded-2xl md:rounded-3xl py-12 w-full">
                <div className="my-14 mt-16 flex flex-col items-center justify-center gap-6">
                    <Heading size="h1" justify="center">
                        Solar Icons
                        <br />
                        Empower Your Projects
                    </Heading>
                    <p className="text-center text-base text-muted-foreground sm:w-[466px] md:text-lg md:leading-6">
                        A comprehensive icon library tailored for modern web and mobile
                        applications, with multi-style support and cross-framework compatibility.
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
            </div>
        </section>
    )
}
