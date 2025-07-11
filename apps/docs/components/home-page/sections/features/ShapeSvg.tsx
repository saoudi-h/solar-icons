'use client'
import { motion } from 'framer-motion'
import type { SVGProps } from 'react'
import React from 'react'

const ShapeSvg = React.forwardRef<SVGSVGElement, SVGProps<SVGSVGElement>>(({ ...props }, ref) => (
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1422 800" {...props} ref={ref}>
        <g fill="none" stroke="currentColor" strokeLinecap="round">
            <path d="M0 520q355.5-245 711-120t711 120"></path>
            <path d="M0 468q355.5-193 711-68t711 68" opacity="0.51"></path>
            <path d="M0 416q355.5-141 711-16t711 16" opacity="0.7"></path>
            <path d="M0 364q355.5-89 711 36t711-36" opacity="0.99"></path>
            <path d="M0 312q355.5-37 711 88t711-88" opacity="0.48"></path>
            <path d="M0 260q355.5 15 711 140t711-140" opacity="0.62"></path>
            <path d="M0 208q355.5 67 711 192t711-192" opacity="0.76"></path>
            <path d="M0 156q355.5 119 711 244t711-244" opacity="0.32"></path>
            <path d="M0 104q355.5 171 711 296t711-296" opacity="0.98"></path>
        </g>
    </svg>
))

ShapeSvg.displayName = 'ShapeSvg'

const MotionShapeSvg = motion.create(ShapeSvg)

export { MotionShapeSvg, ShapeSvg }
