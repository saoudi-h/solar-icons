import Image from 'next/image'

export function FigmaPluginShowcase() {
    return (
        <div className="
          mt-auto max-h-104 overflow-hidden rounded-2xl border
          border-default-300/70 bg-background
          dark:border-default-200
        ">
            <Image
                src="/figma-plugin-thumbnail.png"
                width={1920}
                height={1080}
                alt="Solar Icons plugin browsing Linear icons in Figma"
                className="block h-auto w-full"
            />
        </div>
    )
}
