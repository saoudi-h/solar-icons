import pLimit from 'p-limit'
import pc from 'picocolors'
import type { IconDataExtractor, ProcessorStep, Context } from './types'
import { StateManager } from './StateManager'
import { isString } from './utils'

/**
 * Process icons according to the given steps.
 * @param params - An object with the following properties:
 * @param params.steps - The steps to take for each icon.
 * @param params.concurrency - The maximum number of steps to run concurrently.
 * @param params.svgsPath - The path to the directory containing the SVG files.
 * @param params.pngsPath - The path to the directory where the PNG files will be saved.
 * @param params.stateId - The id of the state, used to create the file name for the state file.
 * @param params.data - The data to process.
 * @param params.extractor - The function to extract the icons from the data.
 * @param params.tempPath - The path to the directory where the state file will be saved.
 * @returns A promise resolving when all icons have been processed.
 */
export const processIcons = async ({
    stateId,
    data,
    extractor,
    steps,
    concurrency = 1,
    svgsPath,
    pngsPath,
    tempPath,
}: {
    stateId?: string
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    data: any
    extractor: IconDataExtractor
    steps: ProcessorStep[]
    concurrency?: number
    svgsPath: string
    pngsPath: string
    tempPath: string
}): Promise<void> => {
    const limit = pLimit(concurrency)
    const stateManager = stateId ? new StateManager(stateId, tempPath) : null

    const tasks: Promise<void>[] = []

    for await (const iconData of extractor(data)) {
        const { iconName, category } = iconData
        if (!isString(iconName) || !isString(category)) {
            throw new Error(`Invalid icon data: ${JSON.stringify(iconData)}`)
        }
        const iconKey = `${category}/${iconName}`

        if (stateManager && stateManager.hasProcessed(iconKey)) {
            console.log(pc.red(`Skipping already processed icon: ${iconKey}`))
            continue
        }

        tasks.push(
            limit(async () => {
                let context: Context = {
                    svgsPath,
                    pngsPath,
                    ...iconData,
                }

                for (const step of steps) {
                    context = await step(context)
                    if (stateManager) {
                        if (context.status === 'failure') {
                            stateManager.markFailure(iconKey)
                            console.log(pc.red(`Failed processing ${iconKey}: ${context.error}`))
                            return
                        } else if (context.status === 'success') {
                            stateManager.markSuccess(iconKey)
                            return
                        }
                    }
                }
                if (stateManager) {
                    stateManager.markSuccess(iconKey)
                }
            })
        )
    }

    await Promise.all(tasks)

    if (stateManager) {
        stateManager.safeClear()
    }
}
