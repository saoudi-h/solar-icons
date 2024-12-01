import { Skeleton } from '@/components/ui/skeleton'

export const GridPlaceholder: React.FC = () => {
    return (
        <>
            {Array(50)
                .fill(0)
                .map((_, index) => (
                    <div
                        key={index}
                        className="flex flex-col items-center justify-center rounded-lg gap-2 p-2">
                        <Skeleton className="size-8 rounded-3xl" />
                        <Skeleton className="h-2 w-20" />
                    </div>
                ))}
        </>
    )
}
