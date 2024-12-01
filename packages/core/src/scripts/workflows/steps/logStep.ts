import { logger } from '../logger'
import type { ProcessorStep } from '../types'

/**
 * A simple step that logs the context object.
 * This is useful for inspecting the state of the context at a particular point in the pipeline.
 * @param context - The context object to log
 * @returns The context object unchanged
 */
export const logStep: ProcessorStep = async context => {
    logger.info(context)
    return context
}
