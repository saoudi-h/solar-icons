'use client'
import { motion } from 'framer-motion'
import React from 'react'
import { LogoIcon } from './LogoIcon'

export const Logo: React.FC = () => {
  // On définit les variantes ici
  const containerVariants = {
    initial: {},
    hover: {}
  }

  const iconVariants = {
    initial: { 
      rotateY: 0, 
      rotateX: 0 
    },
    hover: { 
      rotateY: 45, 
      rotateX: 30,
      transition: { type: 'spring', stiffness: 400, damping: 25 }
    }
  }

  return (
    <motion.div
      className="flex cursor-pointer items-center justify-center gap-4 p-2"
      // Le secret est ici : on définit l'état nommé pour le groupe
      initial="initial"
      whileHover="hover"
      variants={containerVariants}
      style={{
        transformPerspective: 300,
        transformStyle: 'preserve-3d',
      }}
    >
      <motion.div
        // Cet enfant reçoit l'instruction "hover" du parent
        // et cherche la clé "hover" dans ses propres variants
        variants={iconVariants}
        style={{ pointerEvents: 'none' }} // Évite que l'icône n'interfère avec le hover du parent
      >
        <LogoIcon className="size-8" />
      </motion.div>

      <span className="font-heading pointer-events-none text-lg font-black">
        Solar Icons
      </span>
    </motion.div>
  )
}