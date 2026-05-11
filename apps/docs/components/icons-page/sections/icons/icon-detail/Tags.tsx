import { Badge } from '@/components/ui/badge'
import { useAtom } from 'jotai'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'

export const Tags: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)

    if (!selectedIcon) return null

    return (
        <>
            <div
                className={`
                  flex flex-col gap-2 border-b border-dashed border-border p-2
                  max-lg:mb-2 max-lg:pb-2
                  lg:mr-4 lg:pr-4
                `}>
                <h4 className="font-heading text-lg font-semibold">Icon Tags</h4>
                <div className="mt-2 flex w-full flex-wrap gap-2">
                    {selectedIcon.tags.map(tag => (
                        <Badge
                            key={tag}
                            colors="accent"
                            variant="default"
                            size="lg"
                            className="rounded-full">
                            {tag}
                        </Badge>
                    ))}
                </div>
            </div>
            <div className="flex flex-col gap-2 p-2">
                <h4 className="font-heading text-lg font-semibold">Category Tags</h4>
                <div className="mt-2 flex w-full flex-wrap gap-2">
                    {selectedIcon.categoryTags.map(tag => (
                        <Badge
                            key={tag}
                            colors="accent"
                            variant="default"
                            size="lg"
                            className="rounded-full">
                            {tag}
                        </Badge>
                    ))}
                </div>
            </div>
        </>
    )
}
