import fs from 'node:fs'
import path from 'node:path'
import type { ProcessorStep } from '../types'

/**
 * Processes the context to determine the PNG path for a linear style icon.
 * @param context - The icon processing context containing category and iconName.
 * @returns The updated context with the PNG path if the file exists; logs an error otherwise.
 */
export const getLinearPngPathStep: ProcessorStep = async context => {
    const { category, iconName, pngsPath } = context
    const style = 'Linear'

    const iconPngPath = path.join(pngsPath, category, style, `${iconName}.png`)

    if (!fs.existsSync(iconPngPath)) {
        context.error = `PNG file not found : ${iconPngPath}`
        context.status = 'failure'
    }
    return { ...context, iconPngPath: iconPngPath, style: style }
}
