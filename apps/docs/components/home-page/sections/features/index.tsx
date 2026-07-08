'use client'
import { SectionMotion } from '@/components/ui-blocks/animations/SectionMotion'
import { Heading } from '@/components/ui/heading'
import { cn } from '@/lib/utils'
import { motion } from 'framer-motion'
import React from 'react'

import { Button } from '@/components/ui/button'
import { ArrowRightIcon } from '@solar-icons/react/linear/arrow-right'
import Link from 'next/link'
import { DocsShowcase } from './DocsShowcase'
import { DxShowcase } from './DxShowcase'
import { ExplorerShowcase } from './ExplorerShowcase'
import { FrameworksShowcase } from './FrameworksShowcase'
import { StylesShowcase } from './StylesShowcase'

export const FeaturesSection = () => {
    // Stagger animation variants
    const containerVariants = {
        hidden: { opacity: 0 },
        visible: {
            opacity: 1,
            transition: {
                staggerChildren: 0.08,
                delayChildren: 0.1,
            },
        },
    }

    const itemVariants = {
        hidden: { opacity: 0, y: 20 },
        visible: {
            opacity: 1,
            y: 0,
            transition: {
                type: 'spring' as const,
                stiffness: 100,
                damping: 18,
            },
        },
    }

    return (
        <SectionMotion
            variants={containerVariants}
            className="
              relative container flex w-full flex-col items-center gap-12
              self-center px-4 py-20
              md:px-0
            ">
            {/* Title Block */}
            <motion.div
                variants={itemVariants}
                className="flex flex-col items-center gap-4 text-center">
                <Heading
                    size="h1"
                    className="
                      text-3xl font-extrabold tracking-tight
                      md:text-5xl
                    ">
                    Built for{' '}
                    <span
                        className="
                          box-decoration-clone underline decoration-primary
                          underline-offset-8
                        ">
                        All
                    </span>
                </Heading>
                <p
                    className="
                      max-w-145 text-sm/relaxed text-muted-foreground
                      md:text-base
                    ">
                    A complete icon set with six visual styles, native frontend framework packages,
                    autocomplete typings, and AI-ready documentation.
                </p>
            </motion.div>

            {/* Bento Grid Layout */}
            <div
                className="
                  mt-4 grid w-full grid-cols-1 gap-2
                  md:grid-cols-12
                ">
                {/* Card 1: Explore & Search (md:col-span-7) */}
                <motion.div
                    variants={itemVariants}
                    className="
                      flex
                      md:col-span-7
                    ">
                    <BentoCard>
                        <BentoHeader
                            title="Explore and Search"
                            description="Filter 1,200+ icons by category, search by keywords, adjust size, weights, and copy code snippets for React, Svelte, Vue, etc."
                            href="/icons"
                            buttonText="Search"
                        />
                        <ExplorerShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 2: Native Frameworks (md:col-span-5) */}
                <motion.div
                    variants={itemVariants}
                    className="
                      flex
                      md:col-span-5
                    ">
                    <BentoCard>
                        <BentoHeader
                            title="Native Framework Packages"
                            description="Integrate icons directly into React, React Native, Vue, Nuxt, Svelte, SolidJS, or Angular projects without wrappers."
                            href="#available-packages"
                            buttonText="Packages"
                        />
                        <FrameworksShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 3: Six Visual Styles (md:col-span-4) */}
                <motion.div
                    variants={itemVariants}
                    className="
                      flex
                      md:col-span-4
                    ">
                    <BentoCard>
                        <BentoHeader
                            title="Six Visual Styles"
                            description="Swap weights and styles on the fly. Each icon includes Linear, Bold, Outline, BoldDuotone, LineDuotone, and Broken variants."
                        />
                        <StylesShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 4: AI-Ready Documentation (md:col-span-4) */}
                <motion.div
                    variants={itemVariants}
                    className="
                      flex
                      md:col-span-4
                    ">
                    <BentoCard>
                        <BentoHeader
                            title="AI-Ready Documentation"
                            description="Includes llms.txt and llms-full.txt context files for AI agents. Copy any page as Markdown to load documentation into Claude, ChatGPT, or Cursor."
                            href="/docs"
                            buttonText="Docs"
                        />
                        <DocsShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 5: Type-Safe DX (md:col-span-4) */}
                <motion.div
                    variants={itemVariants}
                    className="
                      flex
                      md:col-span-4
                    ">
                    <BentoCard>
                        <BentoHeader
                            title="Type-Safe Autocomplete"
                            description="Get autocomplete suggestions for icon weights and parameters in VS Code or Cursor. Features inline JSDoc typings and syntax-highlighted previews."
                        />
                        <DxShowcase />
                    </BentoCard>
                </motion.div>
            </div>
        </SectionMotion>
    )
}

/* Base Bento Card Wrapper */
const BentoCard = ({ children, className }: { children: React.ReactNode; className?: string }) => {
    return (
        <div
            className={cn(
                `
                  relative flex w-full flex-col justify-between overflow-hidden
                  rounded-3xl bg-default-200/70 p-6
                  dark:bg-default-100
                `,
                className
            )}>
            {children}
            {/* Gradient Veil overlay at the bottom to fade visual mockups into the card base */}
            <div
                className="
                  pointer-events-none absolute inset-x-0 bottom-0 z-30 h-32
                  bg-linear-to-t from-default-100 to-transparent
                  dark:from-default-50/70
                "
            />
        </div>
    )
}

/* Consistent Card Header Component */
const BentoHeader = ({
    title,
    description,
    href,
    buttonText,
}: {
    title: string
    description: string
    href?: string
    buttonText?: string
}) => (
    <div className="relative mb-6 flex flex-col gap-1.5 text-left select-none">
        <div className="flex items-start justify-between gap-4">
            <h3
                className="
                  text-lg font-bold tracking-tight text-foreground
                  md:text-lg
                ">
                {title}
            </h3>
            {href && buttonText && (
                <Button
                    asChild
                    size="sm"
                    variant="default"
                    colors="muted"
                    className="rounded-full">
                    <Link href={href}>
                        {buttonText}
                        <ArrowRightIcon />
                    </Link>
                </Button>
            )}
        </div>
        <p
            className="
              text-xs/relaxed font-light text-muted-foreground
              md:text-sm/relaxed
            ">
            {description}
        </p>
    </div>
)
