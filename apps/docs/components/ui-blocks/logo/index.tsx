'use client'
import React from 'react'
import { LogoIcon } from './LogoIcon'
import { motion } from 'framer-motion'

export const Logo: React.FC = () => (
    <div className="flex items-center justify-center gap-4 perspective-dramatic">
        <motion.div
            whileHover={{ rotateY: 45, rotateX: 10 }}
            transition={{ type: 'spring', stiffness: 400 }}>
            <LogoIcon className="size-8" />
        </motion.div>
        <span className="text-lg font-heading font-black">Solar Icons</span>
    </div>
)
