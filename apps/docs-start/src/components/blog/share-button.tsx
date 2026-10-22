import { CopyIcon } from '@solar-icons/react/dynamic/copy'
import { ShareIcon } from '@solar-icons/react/dynamic/share'
import { useCopyButton } from 'fumadocs-ui/utils/use-copy-button'

export function ShareButton({ url }: { url: string }) {
    const [checked, onCopy] = useCopyButton(async () => {
        await navigator.clipboard.writeText(`${window.location.origin}${url}`)
    })

    return (
        <button
            type="button"
            onClick={onCopy}
            className={`
              inline-flex items-center gap-2 rounded-full border border-border px-3 py-1.5 text-sm
              font-medium transition-colors hover:bg-accent
            `}>
            {checked ? 'Copied' : 'Share'}
            {checked ? (
                <CopyIcon size={16} weight="Linear" />
            ) : (
                <ShareIcon size={16} weight="Linear" />
            )}
        </button>
    )
}
