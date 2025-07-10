import { TabContainer } from "./TabContainer";
import { CodeBlockTemplate } from "./CodeBlockTemplate";
import { FC } from "react";
import { useAtom } from "jotai";
import { selectedIconAtom } from "../context";
import { useSolar } from "@solar-icons/react";
import Link from "next/link";
import { ArrowRightUp } from "@solar-icons/react";
import { Button } from "@/components/ui/button";

export const ReactPerfCode: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const { value } = useSolar()

    if (!selectedIcon) return null

    return (
        <TabContainer>
            <Button variant="link" size="default" asChild><Link href="/docs/packages/react-perf">Get started with <span className="font-heading">React Perf</span> <ArrowRightUp size={16} weight="Linear" color={""} /></Link></Button>
            <CodeBlockTemplate code={`import { ${selectedIcon?.Icon.displayName} } from '@solar-icons/react-perf/${value.weight}'`} />
            <CodeBlockTemplate code={`<${selectedIcon?.Icon.displayName} size={${value.size}} color='${value.color}' />`} />
        </TabContainer>
    )
}

