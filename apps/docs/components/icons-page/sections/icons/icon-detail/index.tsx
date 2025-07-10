'use client'

import { useAtom } from 'jotai'
import { InfoCircle } from '@solar-icons/react'
import { FC } from 'react'
import { IconVariants } from './IconVariants'
import { Tags } from './Tags'
import { ReactCode } from './ReactCode'
import { ReactPerfCode } from './ReactPerf'
import { FloatingDrawer } from './FloatingDrawer'
import { categoriesAtom, selectedIconAtom } from '../context'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { MotionTabs } from '@/components/ui/MotionTabs'
import { CategoryOption } from '../utils'
import { Toggle } from '@/components/ui/toggle'
import { Download } from './Download'


export function IconDetail() {

    return (
        <FloatingDrawer>
            <Content />
        </FloatingDrawer>
    )
}

const Content: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const [categories, setCategories] = useAtom(categoriesAtom)


    const handleCategorySelection = (category: string) => {
        if (categories.some(c => c.value === category)) {
            setCategories([])
        }else {
            setCategories([{ value: category, label: category } as CategoryOption])
        }
    }

    if (!selectedIcon) return null

    return (
    <div className="p-4 flex flex-col md:flex-row h-full w-full">
        <div>
            <div className="flex md:flex-col-reverse flex-row md:justify-end justify-start item-start gap-4 align-center min-w-64 max-md:border-b md:border-r border-dashed max-md:pb-2 max-md:mb-2 md:pr-4 md:mr-4 h-full border-border">
                
                <div className="flex justify-center items-center md:size-56">
                    <selectedIcon.Icon className="size-12 md:size-48" />
                </div>

                <div className="flex flex-col justify-between items-start">
                    <h3 className="font-bold font-heading text-xl text-left">{selectedIcon?.name}</h3>
                    <div className="flex gap-2">
                        <Toggle
                            pressed={categories.some(c => c.value === selectedIcon?.category)}
                            onClick={() => handleCategorySelection(selectedIcon?.category)} 
                            variant="outline" size="default" colors="accent" className="capitalize font-heading">
                            {selectedIcon?.category}
                        </Toggle>
                    <Tooltip>
                        <TooltipTrigger>
                            <InfoCircle size={16} color={""} weight="Linear" />
                        </TooltipTrigger>
                        <TooltipContent>
                            Category
                        </TooltipContent>
                    </Tooltip>
                    </div>
                </div>
            </div>
        </div>

        <Download />
        <MotionTabs tabs={[
            { title: "Icon Variants", value: "variants", content: <IconVariants /> },
            { title: "Tags", value: "tags", content: <Tags /> },
            { title: "React", value: "react", content: <ReactCode /> },
            { title: "React Perf", value: "react-perf", content: <ReactPerfCode /> },
        ]} />
    </div>
    )
}

