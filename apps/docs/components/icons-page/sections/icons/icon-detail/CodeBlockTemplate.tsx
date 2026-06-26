import { cn } from '@/lib/utils'

export const CodeBlockTemplate = ({ code, lang }: { code: string; lang: string }) => (
    <pre
        data-lang={lang}
        className={cn(
            `
              my-0 overflow-x-auto rounded-lg border bg-fd-card p-3 font-mono
              text-xs text-fd-card-foreground
            `
        )}>
        <code>{code}</code>
    </pre>
)
