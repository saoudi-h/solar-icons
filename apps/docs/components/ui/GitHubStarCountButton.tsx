'use client'
import githubIcon from '@iconify-icons/mdi/github'
import { Icon } from '@iconify/react'
import NumberFlow from '@number-flow/react'
import { StarIcon } from '@solar-icons/react/dynamic/star'

import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { useGitHubStars } from '@/lib/use-github-stars'
import { cn } from '@/lib/utils'

export interface GitHubStarCountButtonProps {
    className?: string
}

/**
 * Compact call to action that links to the repository and shows how
 * many stars it has. It lives in the site header, where it is visible
 * on every page, next to the larger button of the community section.
 *
 * The GitHub logo comes first: the star count alone does not say where
 * it goes. The star comes last, and comes alive on hover, so the
 * button reads as the one that asks for a star without saying it.
 */
export const GitHubStarCountButton: React.FC<GitHubStarCountButtonProps> = ({ className }) => {
    const stars = useGitHubStars()
    const label = `Solar Icons on GitHub, ${stars} stars`

    return (
        <Tooltip>
            <TooltipTrigger asChild>
                <a
                    href="https://github.com/saoudi-h/solar-icons"
                    target="_blank"
                    rel="noreferrer"
                    aria-label={label}
                    className={cn(
                        `
                          group inline-flex h-10 shrink-0 items-center gap-2 rounded-full border
                          border-border bg-secondary/40 px-3 text-sm text-muted-foreground
                          transition-colors
                          hover:border-primary/50 hover:bg-primary/10 hover:text-primary
                          focus-visible:ring-2 focus-visible:ring-ring focus-visible:outline-none
                        `,
                        className
                    )}>
                    <Icon
                        icon={githubIcon}
                        aria-hidden
                        ssr
                        className="
                          size-4.5 shrink-0 text-muted-foreground transition-colors
                          group-hover:text-primary
                        "
                    />
                    <span
                        className="
                          font-mono text-sm font-semibold text-foreground tabular-nums
                          transition-colors
                          group-hover:text-primary
                        ">
                        <NumberFlow value={stars} format={{ minimumIntegerDigits: 1 }} />
                    </span>
                    <StarIcon
                        aria-hidden
                        size={16}
                        weight="Bold"
                        className="
                          shrink-0 text-warning/60 transition-all duration-300 ease-out
                          group-hover:scale-120 group-hover:rotate-12 group-hover:text-primary
                        "
                    />
                </a>
            </TooltipTrigger>
            <TooltipContent side="bottom">{label}</TooltipContent>
        </Tooltip>
    )
}

GitHubStarCountButton.displayName = 'GitHubStarCountButton'
