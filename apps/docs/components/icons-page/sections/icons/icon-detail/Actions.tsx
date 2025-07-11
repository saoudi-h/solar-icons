'use client'
import { Button } from '@/components/ui/button'
import { CopyButton } from '@/components/ui/CopyButton'
import { DownloadMinimalistic as DownloadIcon, useSolar } from '@solar-icons/react'
import { saveAs } from 'file-saver'
import { useAtom } from 'jotai'
import type { FC } from 'react'
import { useRef } from 'react'
import { toast } from 'sonner'
import { selectedIconAtom } from '../context'

const downloadData = (filename: string, data: string) => {
    const link = document.createElement('a')
    link.download = filename
    link.href = data
    link.click()
}

export const Actions: FC = () => {
    const ref = useRef<SVGSVGElement>(null)
    const [selectedIcon] = useAtom(selectedIconAtom)
    const { value } = useSolar()

    if (!selectedIcon) return null

    const handleDownloadSVG = async () => {
        try {
            const url = `https://raw.githubusercontent.com/saoudi-h/solar-icons/main/packages/core/svgs/${selectedIcon?.category}/${value.weight}/${selectedIcon.name}.svg`

            const response = await fetch(url, { method: 'HEAD' })

            if (!response.ok) {
                throw new Error('Failed to download SVG')
            }

            saveAs(url, `${selectedIcon?.name}.svg`)
            toast.success('SVG downloaded')
        } catch {
            console.error('SVG download error')
            toast.error('Failed to download SVG')
        }
    }

    const handleDownloadPNG = async () => {
        try {
            const svgElement = ref.current
            if (!svgElement) throw new Error('SVG element not found')

            const svgString = new XMLSerializer().serializeToString(svgElement)
            const canvas = document.createElement('canvas')
            canvas.width = svgElement.width.baseVal.value
            canvas.height = svgElement.height.baseVal.value
            const ctx = canvas.getContext('2d')

            if (!ctx) throw new Error('Canvas context not available')

            const img = new Image()

            await new Promise<void>((resolve, reject) => {
                img.onload = () => {
                    try {
                        ctx.clearRect(0, 0, canvas.width, canvas.height)
                        ctx.drawImage(img, 0, 0)
                        resolve()
                    } catch (error) {
                        reject(error)
                    }
                }

                img.onerror = e => {
                    reject(new Error('SVG rendering failed'))
                    console.error('Image load error:', e)
                }

                const svgBlob = new Blob([svgString], { type: 'image/svg+xml;charset=utf-8' })
                img.src = URL.createObjectURL(svgBlob)
            })

            const pngData = canvas.toDataURL('image/png')
            downloadData(`${selectedIcon?.name}.png`, pngData)
            toast.success('PNG downloaded')
        } catch (error) {
            console.error('PNG generation error:', error)
            toast.error('Failed to generate PNG')
        }
    }

    const handleCopySVG = async () => {
        try {
            if (!ref.current) throw new Error('SVG element not found')
            await navigator.clipboard.writeText(ref.current.outerHTML)
            toast.success('SVG copied to clipboard')
        } catch (error) {
            console.error('SVG copy error:', error)
            toast.error('Failed to copy SVG to clipboard')
        }
    }

    const handleCopyPNG = async () => {
        try {
            const svgElement = ref.current
            if (!svgElement) throw new Error('SVG element not found')

            const svgString = new XMLSerializer().serializeToString(svgElement)
            const canvas = document.createElement('canvas')
            canvas.width = svgElement.width.baseVal.value
            canvas.height = svgElement.height.baseVal.value
            const ctx = canvas.getContext('2d')

            if (!ctx) throw new Error('Canvas context not available')

            const img = new Image()

            await new Promise<void>((resolve, reject) => {
                img.onload = () => {
                    try {
                        ctx.clearRect(0, 0, canvas.width, canvas.height)
                        ctx.drawImage(img, 0, 0)
                        resolve()
                    } catch (error) {
                        reject(error)
                    }
                }

                img.onerror = () => reject(new Error('SVG rendering failed'))

                const svgBlob = new Blob([svgString], { type: 'image/svg+xml;charset=utf-8' })
                img.src = URL.createObjectURL(svgBlob)
            })

            const pngBlob = await new Promise<Blob | null>(resolve =>
                canvas.toBlob(resolve, 'image/png')
            )

            if (!pngBlob) throw new Error('PNG blob creation failed')

            await navigator.clipboard.write([new ClipboardItem({ 'image/png': pngBlob })])

            toast.success('PNG copied to clipboard')
        } catch (error) {
            console.error('PNG copy error:', error)
            toast.error('Failed to copy PNG to clipboard')
        }
    }

    return (
        <div
            className={`
              flex flex-row gap-2 border-dashed
              max-lg:mb-2 max-lg:border-b max-lg:pb-2
              lg:mr-4 lg:flex-col lg:border-r lg:pr-4
            `}>
            <div className="-z-50 hidden">
                <selectedIcon.Icon
                    ref={ref}
                    size={value.size || 16}
                    weight={value.weight || 'Linear'}
                    color={value.color || ''}
                />
            </div>
            <Button size="default" variant="ghost" onClick={handleDownloadSVG} className={`
              p-1
            `}>
                Get SVG
                <DownloadIcon size={16} weight="Linear" color={''} />
            </Button>
            <Button size="default" variant="ghost" onClick={handleDownloadPNG} className={`
              p-1
            `}>
                Get PNG
                <DownloadIcon size={16} weight="Linear" color={''} />
            </Button>
            <CopyButton size="default" variant="ghost" className="p-1" onCopy={handleCopySVG}>
                Copy SVG
            </CopyButton>
            <CopyButton size="default" variant="ghost" className="p-1" onCopy={handleCopyPNG}>
                Copy PNG
            </CopyButton>
        </div>
    )
}
