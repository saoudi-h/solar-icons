import { isString } from '../utils'
import { logger } from '../logger'
import type { Context } from '../types'
import { isArrayOfStrings } from '../utils'

/**
 * Returns a step that logs the specified values from the context object.
 * @param display - A string, an array of strings, or an array of objects with `name` and `level` properties.
 *   - If a string, then the step logs a warning saying "No display specified".
 *   - If an array of strings, then the step logs the values of the context object that have keys in the array.
 *   - If an array of objects, then the step logs the values of the context object that have the names specified
 *     in the objects, with the specified log level.
 * @returns The context object unchanged
 */
export const loggerStepGenerator = (
    display: string | string[] | { name: string; level: 'error' | 'warn' | 'info' | 'debug' }[]
) => {
    return async (context: Context) => {
        if (isString(display)) logger.warn('No display specified')
        else if (isArrayOfStrings(display)) {
            Object.keys(context).forEach(key => {
                if (display.includes(key)) {
                    if (key === 'error') logger.error(`${key} : ${context[key]}`)
                    logger.info(`${key} : ${context[key]}`)
                }
            })
        } else {
            for (const value of Object.values(display)) {
                if (context[value.name] === undefined) continue
                logger[value.level](`${value.name} : ${context[value.name]}`)
            }
        }
        return context
    }
}
