import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import { useEffect, useState, type FC } from 'react'

import { Button } from '~/components/ui/button'
import { Link } from '~/components/ui/link'
import { cn, toPascalCase } from '~/lib/utils'

import { useSelectedIcon, useStyleURL, weightToStyleSlug } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

type SolidTarget = 'v2' | 'v1'

const SOLID_TARGET_STORAGE_KEY = 'solar-icons:explorer-solid-target'

const SOLID_TARGETS: readonly { value: SolidTarget; label: string; pkg: string }[] = [
    { value: 'v2', label: 'Solid 2', pkg: '@solar-icons/solid-v2' },
    { value: 'v1', label: 'Solid 1', pkg: '@solar-icons/solid' },
]

function useSolidTarget() {
    const [target, setTarget] = useState<SolidTarget>('v2')
    useEffect(() => {
        try {
            const stored = localStorage.getItem(SOLID_TARGET_STORAGE_KEY)
            if (stored === 'v2' || stored === 'v1') setTarget(stored)
        } catch {
            // Storage can be unavailable; Solid 2 remains the default target.
        }
    }, [])
    const select = (next: SolidTarget) => {
        setTarget(next)
        try {
            localStorage.setItem(SOLID_TARGET_STORAGE_KEY, next)
        } catch {
            // Same as above.
        }
    }
    return [target, select] as const
}

export const SolidCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()
    const [target, setTarget] = useSolidTarget()

    if (!selectedIcon) return null
    const importName = toPascalCase(selectedIcon.name) + 'Icon'
    const base = selectedIcon.name
    const styleSlug = weightToStyleSlug(weight)
    const active = SOLID_TARGETS.find(item => item.value === target) ?? SOLID_TARGETS[0]!

    return (
        <div className="flex flex-col gap-2">
            <div className="flex flex-wrap items-center justify-between gap-2">
                <Button
                    variant="link"
                    size="default"
                    className="h-auto justify-start self-start p-0 text-xs"
                    asChild>
                    <Link href="/docs/v2/packages/solid">
                        Get started with <span className="font-heading">Solid</span>{' '}
                        <ArrowRightUpIcon size={16} />
                    </Link>
                </Button>
                <div
                    role="group"
                    aria-label="Solid version"
                    className="inline-flex items-center gap-0.5 rounded-md bg-foreground/[0.06] p-0.5">
                    {SOLID_TARGETS.map(option => {
                        const isActive = option.value === active.value
                        return (
                            <button
                                key={option.value}
                                type="button"
                                aria-pressed={isActive}
                                onClick={() => setTarget(option.value)}
                                className={cn(
                                    `
                                      rounded-sm px-2 py-0.5 text-[11px] font-medium
                                      transition-colors
                                      focus-visible:ring-2 focus-visible:ring-primary/70
                                      focus-visible:outline-hidden
                                    `,
                                    isActive
                                        ? 'bg-background text-foreground shadow-2xs ring-1 ring-foreground/15'
                                        : 'text-muted-foreground hover:text-foreground'
                                )}>
                                {option.label}
                            </button>
                        )
                    })}
                </div>
            </div>
            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${importName} } from '${active.pkg}/${styleSlug}/${base}'`}
            />
            <CodeBlockTemplate lang="tsx" code={`<${importName} size={24} />`} />
        </div>
    )
}
