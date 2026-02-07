'use client'
import { motion } from 'framer-motion'
import React from 'react'
import { LogoIcon } from './LogoIcon'

export const Logo: React.FC = () => {
    const containerVariants = {
        initial: {},
        hover: {},
    }

    const iconVariants = {
        initial: {
            rotateY: 0,
            rotateX: 0,
        },
        hover: {
            rotateY: 45,
            rotateX: 30,
            transition: { type: 'spring' as const, stiffness: 400, damping: 25 },
        },
    }

    return (
        <motion.div
            className={`
              flex cursor-pointer items-center justify-center gap-4 p-2
            `}
            initial="initial"
            whileHover="hover"
            variants={containerVariants}
            style={{
                transformPerspective: 300,
                transformStyle: 'preserve-3d',
            }}>
            <motion.div

                variants={iconVariants}
                style={{ pointerEvents: 'none' }}
            >
                <LogoIcon className="size-8" />
            </motion.div>

            <span className={`
              font-heading pointer-events-none text-lg font-black
            `}>Solar Icons</span>
        </motion.div>
    )
}
