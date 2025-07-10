import { Badge } from "@/components/ui/badge";
import { TabContainer } from "./TabContainer";
import { FC } from "react";
import { Separator } from "@/components/ui/separator";
import { useAtom } from "jotai";
import { selectedIconAtom } from "../context";

export const Tags: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)

    if (!selectedIcon) return null

    return (
        <TabContainer>
            <h4 className="text-lg font-semibold">Icon Tags</h4>
            <div className="flex flex-wrap gap-1 mt-2 w-full">
                {selectedIcon.tags.map((tag) => (
                    <Badge key={tag} colors="accent" variant="default" size="lg" className="rounded-full">
                    # {tag}
                </Badge>
            ))}
        </div>
        <Separator orientation="horizontal" />
        <h4 className="text-lg font-semibold">Category Tags</h4>
        <div className="flex flex-wrap gap-1 mt-2 w-full">
            {selectedIcon.categoryTags.map((tag) => (
                <Badge key={tag} colors="accent" variant="default" size="lg" className="rounded-full">
                    # {tag}
                </Badge>
            ))}
        </div>
    </TabContainer>
    )
}