'use client'

import type { MotionProps } from 'motion/react'
import { motion } from 'motion/react'
import React, { forwardRef } from 'react'

const itemVariants = {
    hidden: { opacity: 0, y: 100 },
    visible: {
        opacity: 1,
        y: 0,
        transition: { duration: 0.5 },
    },
}

type FooterMotionProps = MotionProps & React.HTMLAttributes<HTMLElement>

export const FooterMotion = forwardRef<HTMLElement, FooterMotionProps>(
    ({ children, ...props }, ref) => {
        return (
            <motion.footer
                ref={ref}
                initial="hidden"
                whileInView="visible"
                viewport={{ once: true, amount: 'some' }}
                variants={itemVariants}
                {...props}>
                {children}
            </motion.footer>
        )
    }
)

FooterMotion.displayName = 'FooterMotion'
