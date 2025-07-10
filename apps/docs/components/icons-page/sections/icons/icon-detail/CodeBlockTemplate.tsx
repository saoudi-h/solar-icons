import { CodeBlock } from "fumadocs-ui/components/codeblock"
import { DynamicCodeBlock } from "fumadocs-ui/components/dynamic-codeblock"
import { cn } from "@/lib/utils"
import { Pre } from "fumadocs-ui/components/codeblock"
import { ComponentProps } from "react"

const pre = (props: ComponentProps<'pre'>) => (
    <CodeBlock {...props} className={cn('my-0 ', props.className)} keepBackground={true}>
        <Pre>{props.children}</Pre>
    </CodeBlock>
)



export const CodeBlockTemplate = ({ code }: { code: string }) => (
    <DynamicCodeBlock
        options={{
            themes: {
                light: "github-light",
                dark: "github-dark-high-contrast"
            },
            components: {
                // @ts-expect-error 
                pre
            }
        }}
        lang="tsx"
        code={code}
    />
)

