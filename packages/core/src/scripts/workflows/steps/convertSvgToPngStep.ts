import fs from 'node:fs'
import path from 'node:path'
import sharp from 'sharp'
import type { ProcessorStep } from '../types'
import { isString } from '../utils'

/**
 * Converts an SVG file to a PNG file using the given context.
 * @param context - The processing context containing `svgPath` and `outputDir`.
 * @throws Will throw an error if `svgPath` or `outputDir` is undefined.
 * @returns The updated context with the `iconName` of the converted PNG file.
 */
export const convertSvgToPngStep: ProcessorStep = async context => {
    const { iconSvgPath, style, pngsPath } = context
    if (!isString(iconSvgPath) || !isString(style)) {
        throw new Error('svgPath or style is undefined or not a string')
    }

    const outputDir = path.join(pngsPath, context.category, style)
    const svgContent = fs.readFileSync(iconSvgPath, 'utf-8')
    const pngName = path.basename(iconSvgPath, '.svg') + '.png'
    const outputPath = path.join(outputDir, pngName)

    try {
        if (!fs.existsSync(outputDir)) {
            fs.mkdirSync(outputDir, { recursive: true })
        }

        await sharp(Buffer.from(svgContent)).resize(128).png().toFile(outputPath)
    } catch (error) {
        context.status = 'failure'
        context.error = `Error on converting ${iconSvgPath} : ${error}`
    }

    return { ...context, pngPath: outputPath }
}
