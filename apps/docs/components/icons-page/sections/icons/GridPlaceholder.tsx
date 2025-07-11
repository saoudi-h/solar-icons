import { Skeleton } from '@/components/ui/skeleton'

export const GridPlaceholder: React.FC = () => {
    return (
        <>
            {Array(50)
                .fill(0)
                .map((_, index) => (
                    <div
                        key={index}
                        className={`
                          wrap flex flex-col items-center justify-center gap-4
                          rounded-lg p-4
                        `}>
                        <Skeleton className="size-16 rounded-3xl" />
                        <Skeleton className="h-3 w-24" />
                    </div>
                ))}
        </>
    )
}
