'use client'
import Image from 'next/image'
import React from 'react'
import { motion } from 'framer-motion'

export const ExplorerShowcase = () => {
    return (
        <div className="relative mt-auto flex h-72 w-full flex-col">
            {/* Browser Viewport with screenshots */}
            <motion.div 
                initial={{ y: 45, opacity: 0 }}
                whileInView={{ 
                    y: 0, 
                    opacity: 1 
                }}
                whileHover={{ scale: 1.08 }}
                transition={{
                    y: { type: 'spring', stiffness: 70, damping: 15, delay: 0.1 },
                    opacity: { duration: 0.5, delay: 0.1 },
                    scale: { type: 'spring', stiffness: 100, damping: 18 }
                }}
                viewport={{ once: true, margin: "-50px" }}
                className="absolute h-92 w-full flex-1 overflow-hidden"
            >
                {/* Light Mode Screenshot */}
                <Image 
                    width={1000}
                    height={1000}
                    src="/icons-explorer-light.webp" 
                    alt="Solar Icons Explorer Light Mode"
                    className="
                      w-full object-cover object-top
                      dark:hidden
                    "
                />
                {/* Dark Mode Screenshot */}
                <Image 
                    width={1200}
                    height={1200}
                    src="/icons-explorer-dark.webp" 
                    alt="Solar Icons Explorer Dark Mode"
                    className="
                      hidden w-full object-cover object-top
                      dark:block
                    "
                />
                
                {/* Subtle overlay shadow to blend in */}
                <div className="
                  pointer-events-none absolute inset-0 bg-linear-to-t
                  from-default-100/20 via-transparent to-transparent
                  dark:from-default-50/25
                " />
            </motion.div>
        </div>
    )
}
