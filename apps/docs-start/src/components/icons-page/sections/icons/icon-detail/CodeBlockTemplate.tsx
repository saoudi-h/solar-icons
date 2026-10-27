import { CodeBlock, Pre } from 'fumadocs-ui/components/codeblock'
import { DynamicCodeBlock } from 'fumadocs-ui/components/dynamic-codeblock'
import type { ComponentProps } from 'react'

import { CopyButton } from '~/components/ui/CopyButton'
import { cn } from '~/lib/utils'

const pre = (props: ComponentProps<'pre'>, code: string) => (
    <CodeBlock
        {...props}
        className={cn('my-0', props.className)}
        keepBackground={true}
        allowCopy={false}
        Actions={({ className }) => (
            <div className={className}>
                <CopyButton
                    variant="ghost"
                    size="icon"
                    aria-label="Copy Text"
                    onCopy={() => navigator.clipboard.writeText(code)}
                />
            </div>
        )}>
        <Pre>{props.children}</Pre>
    </CodeBlock>
)

export const CodeBlockTemplate = ({ code, lang }: { code: string; lang: string }) => (
    <DynamicCodeBlock
        options={{
            themes: {
                light: 'github-light',
                dark: 'github-dark-high-contrast',
            },
            components: {
                pre: props => pre(props, code),
            },
        }}
        lang={lang}
        code={code}
    />
)
