import React, { forwardRef } from 'react'
import { motion, MotionProps } from 'framer-motion'

const itemVariants = {
    hidden: { opacity: 0, y: 100 },
    visible: {
        opacity: 1,
        y: 0,
        transition: { duration: 0.5 },
    },
}

type SectionMotionProps = MotionProps & React.HTMLAttributes<HTMLElement>

export const SectionMotion = forwardRef<HTMLElement, SectionMotionProps>(
    ({ children, ...props }, ref) => {
        return (
            <motion.section
                ref={ref}
                initial="hidden"
                whileInView="visible"
                viewport={{ once: true, amount: 0.3 }}
                variants={itemVariants}
                {...props}>
                {children}
            </motion.section>
        )
    }
)

SectionMotion.displayName = 'SectionMotion'
