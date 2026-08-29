export function TagPill({ label }: { label: string }) {
    return (
        <span
            className={`
              inline-flex items-center rounded-full border border-border bg-background px-2.5 py-1
              text-xs font-medium text-muted-foreground select-none
            `}>
            {label}
        </span>
    )
}
