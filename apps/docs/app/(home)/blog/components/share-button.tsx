'use client'

import { CopyIcon } from '@solar-icons/react/dynamic/copy'
import { ShareIcon } from '@solar-icons/react/dynamic/share'
import { useCopyButton } from 'fumadocs-ui/utils/use-copy-button'

import { Button } from '@/components/ui/button'

export function ShareButton({ url }: { url: string }) {
    const [checked, onCopy] = useCopyButton(async () => {
        await navigator.clipboard.writeText(`${window.location.origin}${url}`)
    })

    return (
        <Button
            type="button"
            onClick={onCopy}
            variant="outline"
            size="sm"
            className="rounded-full"
            colors="default">
            {checked ? 'Copied' : 'Share'}
            {checked ? (
                <CopyIcon size={16} weight="Linear" />
            ) : (
                <ShareIcon size={16} weight="Linear" />
            )}
        </Button>
    )
}
