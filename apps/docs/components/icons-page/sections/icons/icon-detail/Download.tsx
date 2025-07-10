'use client'
import { Button } from "@/components/ui/button";
import { FC, useRef } from "react";
import { selectedIconAtom } from "../context";
import { useAtom } from "jotai";
import { DownloadMinimalistic as DownloadIcon, useSolar } from "@solar-icons/react";
import { saveAs } from "file-saver";
import { CopyButton } from "@/components/ui/CopyButton";

export const downloadData = (filename: string, data: string) => {
    const link = document.createElement('a');
    link.download = filename;
    link.href = data;
    link.click();
}


export const Download: FC = () => {

    const ref = useRef<SVGSVGElement>(null);

    const [selectedIcon] = useAtom(selectedIconAtom)
    const { value } = useSolar()

    if (!selectedIcon) return null


    const handleDownloadSVG = async () => {
        saveAs(
          `https://raw.githubusercontent.com/saoudi-h/solar-icons/main/packages/core/svgs/${selectedIcon?.category}/${value.weight}/${selectedIcon.name}.svg`,
          `${selectedIcon?.name}.svg`
        );
      };


    

    const handleDownloadPNG = () => {
        const svgElement = ref.current!;
        const svgString = new XMLSerializer().serializeToString(svgElement);
        
        const canvas = document.createElement('canvas');
        canvas.width = svgElement.width.baseVal.value;
        canvas.height = svgElement.height.baseVal.value;
        const ctx = canvas.getContext("2d");
        
        const img = new Image();
        img.onload = function() {
            ctx!.clearRect(0, 0, canvas.width, canvas.height);
            ctx!.drawImage(img, 0, 0);
            const pngData = canvas.toDataURL('image/png');
            downloadData(`${selectedIcon?.name}.png`, pngData);
        };
        
        const svgBlob = new Blob([svgString], {type: 'image/svg+xml;charset=utf-8'});
        img.src = URL.createObjectURL(svgBlob);
    };

    const handleCopySVG = () => {
        console.log("handleCopySVG")
        navigator.clipboard?.writeText(ref.current!.outerHTML);
      };
    
    

    return (
    <div className="flex flex-row gap-2 md:flex-col max-md:border-b md:border-r max-md:pb-2 max-md:mb-2 md:pr-4 md:mr-4 border-dashed">
        <div className="hidden -z-50">
            <selectedIcon.Icon ref={ref} size={value.size || 16} weight={value.weight || "Linear"} color={value.color || ""} />
        </div>
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
        <CopyButton
            size="default"
            variant="ghost"
            className="p-1"
            onCopy={handleCopySVG}
        >
            Copy SVG
        </CopyButton>  
    </div>
    )
}


<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" color="#0f4159" fill="none" viewBox="0 0 24 24"><path opacity="0.5" d="M12 22C16.9706 22 21 17.9706 21 13C21 8.02944 16.9706 4 12 4C7.02944 4 3 8.02944 3 13C3 17.9706 7.02944 22 12 22Z" fill="currentColor"></path><path d="M9.00002 10.75C8.58581 10.75 8.25002 10.4142 8.25002 10C8.25002 9.58579 8.58581 9.25 9.00002 9.25H15C15.3034 9.25 15.5768 9.43273 15.6929 9.71299C15.809 9.99324 15.7449 10.3158 15.5304 10.5303L10.8107 15.25H15C15.4142 15.25 15.75 15.5858 15.75 16C15.75 16.4142 15.4142 16.75 15 16.75H9.00002C8.69668 16.75 8.4232 16.5673 8.30711 16.287C8.19103 16.0068 8.25519 15.6842 8.46969 15.4697L13.1894 10.75H9.00002Z" fill="currentColor"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M8.2405 2.33986C8.45409 2.67841 8.3502 3.1244 8.00844 3.33599L4.11657 5.74562C3.77481 5.95722 3.32461 5.8543 3.11102 5.51574C2.89742 5.17718 3.00131 4.7312 3.34307 4.5196L7.23494 2.10998C7.5767 1.89838 8.0269 2.0013 8.2405 2.33986Z" fill="currentColor"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M15.7595 2.33985C15.9731 2.0013 16.4233 1.89838 16.7651 2.10998L20.6569 4.5196C20.9987 4.7312 21.1026 5.17719 20.889 5.51574C20.6754 5.8543 20.2252 5.95722 19.8834 5.74562L15.9916 3.33599C15.6498 3.1244 15.5459 2.67841 15.7595 2.33985Z" fill="currentColor"></path></svg>
