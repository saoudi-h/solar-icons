import { Button } from "@/components/ui/button";
import { FC } from "react";
import { selectedIconAtom } from "../context";
import { useAtom } from "jotai";
import { DownloadMinimalistic as DownloadIcon, useSolar } from "@solar-icons/react";
import { saveAs } from "file-saver";

const capitalize = (str: string) => {
    return str.charAt(0).toUpperCase() + str.slice(1);
}

export const Download: FC = () => {

    const [selectedIcon] = useAtom(selectedIconAtom)
    const { value } = useSolar()

    if (!selectedIcon) return null


    const handleDownloadSVG = async () => {
    
        // https://raw.githubusercontent.com/saoudi-h/solar-icons/main/packages/core/svgs/list/BoldDuotone/list-arrow-down.svg

        saveAs(
          `https://raw.githubusercontent.com/saoudi-h/solar-icons/main/packages/core/svgs/${selectedIcon?.category}/${value.weight}/${selectedIcon.name}.svg`,
          `${selectedIcon?.name}.svg`
        );
      };


    const handleDownloadPNG = () => {
        // TODO: implement download png
        console.log("handleDownloadPNG")
    }
    

    return (
    <div className="flex flex-row gap-2 md:flex-col max-md:border-b md:border-r max-md:pb-2 max-md:mb-2 md:pr-4 md:mr-4 border-dashed">
        <Button 
        size="default"
        variant="ghost"
        onClick={handleDownloadSVG}
        className="p-1"
        >
            SVG
            <DownloadIcon size={16} weight="Linear" color={""} />
        </Button>
        <Button 
        size="default"
        variant="ghost"
        onClick={handleDownloadPNG}
        className="p-1"
        >
            PNG
            <DownloadIcon size={16} weight="Linear" color={""} />
        </Button>
    </div>
    )
}

