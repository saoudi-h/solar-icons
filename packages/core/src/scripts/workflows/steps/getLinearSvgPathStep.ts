import fs from 'node:fs'
import path from 'node:path'
import type { ProcessorStep } from '../types'

/**
 * Processes the context to determine the SVG path for a linear style icon.
 * @param context - The icon processing context containing category and iconName.
 * @returns The updated context with the SVG path if the file exists; logs an error otherwise.
 */
export const getLinearSvgPathStep: ProcessorStep = async context => {
    const { category, iconName, svgsPath } = context
    const style = 'Linear'

    const iconSvgPath = path.join(svgsPath, category, style, `${iconName}.svg`)

    if (!fs.existsSync(iconSvgPath)) {
        context.error = `SVG file not found : ${iconSvgPath}`
        context.status = 'failure'
    }
    return { ...context, iconSvgPath: iconSvgPath, style: style }
}
