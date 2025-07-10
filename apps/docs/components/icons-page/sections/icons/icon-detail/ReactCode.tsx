import { FC } from "react";
import { useAtom } from "jotai";
import { ArrowRightUp, useSolar } from "@solar-icons/react";
import { selectedIconAtom } from "../context";
import { TabContainer } from "./TabContainer";
import { CodeBlockTemplate } from "./CodeBlockTemplate";
import { Button } from "@/components/ui/button";
import Link from "next/link";


export const ReactCode: FC = () => {
    const { value } = useSolar()
    const [selectedIcon] = useAtom(selectedIconAtom)

    return (
        <TabContainer>
            <Button variant="link" size="default" asChild><Link href="/docs/packages/react">Get started with React <ArrowRightUp size={16} weight="Linear" color={""} /></Link></Button>
            <CodeBlockTemplate code={`import { ${selectedIcon?.Icon.displayName} } from '@solar-icons/react'`} />
            <CodeBlockTemplate code={`<${selectedIcon?.Icon.displayName} weight={${value.weight}} size={${value.size}} color='${value.color}' />`} />
        </TabContainer>
    )
}

