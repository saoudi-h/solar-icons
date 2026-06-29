import { Skeleton } from '@/components/ui/skeleton'

/**
 * Mirrors the layout of a single row in `CategoryNav`:
 *   `flex items-center justify-between gap-2 rounded-md px-2.5 py-1.5`
 * with a name placeholder on the left and a count placeholder on
 * the right. Same height (`h-7` ≈ the real row's `py-1.5` + text
 * height), same gap, same rounded corners — so the skeleton
 * block lines up with the real sidebar instead of looking like
 * a generic list of pills.
 */
const CategoryRowPlaceholder = () => (
    <div
        className="
          flex items-center justify-between gap-2 rounded-md px-2.5 py-1.5
        ">
        <Skeleton className="h-3 w-20 rounded-sm bg-default-300" />
        <Skeleton className="h-3 w-6 rounded-sm bg-default-300" />
    </div>
)

export const GridPlaceholder: React.FC = () => {
    return (
        <>
            {Array(50)
                .fill(0)
                .map((_, index) => (
                    <div
                        key={index}
                        className={`
                          flex flex-col items-center justify-center gap-2
                          rounded-lg px-2 py-4
                        `}>
                        <Skeleton className="size-12 rounded-xl bg-default-300" />
                        <Skeleton className="h-3 w-16 rounded-sm bg-default-300" />
                    </div>
                ))}
        </>
    )
}

export { CategoryRowPlaceholder }
