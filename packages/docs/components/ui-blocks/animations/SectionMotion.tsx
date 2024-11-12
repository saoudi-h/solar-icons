import React, { forwardRef } from 'react'
import { motion, MotionProps } from 'framer-motion'

const itemVariants = {
    hidden: { opacity: 0, y: 100 },
    visible: {
        opacity: 1,
        y: 0,
        transition: { duration: 0.5 },
    }
}

type MotionSectionProps = MotionProps & React.HTMLAttributes<HTMLElement>

export const MotionSection = forwardRef<HTMLElement, MotionSectionProps>(
    ({ children, ...props }, ref) => {
        return (
            <motion.section
                ref={ref}
                initial="hidden"
                whileInView="visible"
                viewport={{ once: true, amount: 0.5 }}
                variants={itemVariants}
                {...props}>
                {children}
            </motion.section>
        )
    }
)

MotionSection.displayName = 'SectionMotion'
export default MotionSection
