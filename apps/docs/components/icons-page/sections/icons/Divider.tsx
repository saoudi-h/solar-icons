import { cn } from '@/lib/utils'

export const Divider: React.FC<{ className?: string }> = ({ className }) => {
    return <div aria-hidden="true" className={cn('h-6 w-px bg-border/40', className)} />
}
