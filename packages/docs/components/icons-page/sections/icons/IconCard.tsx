import { IconData } from '@/core/generated/descriptions'
import { motion } from 'framer-motion'

interface IconCardProps extends IconData {
    index: number
}

export const IconCard: React.FC<IconCardProps> = ({ name, Icon, index }) => {
    return (
        <motion.div
            exit={{ scale: 0 }}
            initial={{ scale: 0 }}
            animate={{ scale: 1 }}
            transition={{
                duration: 0.3,
                delay: 0.01 * index,
            }}
            className="flex flex-col items-center justify-center transition hover:bg-accent/20 rounded-lg gap-2 p-2"
            whileHover={{ scale: 1.05 }}>
            <Icon />
            <p className="text-xs font-extralight text-center text-nowrap truncate w-full">
                {name}
            </p>
        </motion.div>
    )
}
