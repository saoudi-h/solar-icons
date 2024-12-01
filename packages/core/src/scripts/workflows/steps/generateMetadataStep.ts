import { ChatPromptTemplate } from '@langchain/core/prompts'
import { Ollama } from '@langchain/ollama'
import { isString } from '../utils'
import fs from 'node:fs'
import type { ProcessorStep } from '../types'

/**
 * Processor step that generates metadata for an icon.
 * @param context - The icon processing context containing iconPngPath, tags, and iconName.
 * @throws Will throw an error if pngPath or style is undefined or not a string.
 * @returns The updated context with the description of the icon.
 *
 * This step uses the Ollama library to make a request to a model server,
 * passing the image data and some context information. The response is
 * expected to be a JSON object with two keys: names and categories.
 * The names key should contain an array of two to five single-word names
 * for the icon, and the categories key should contain an array of two to
 * five single-word categories relevant to the icon.
 */
export const generateMetadataStep: ProcessorStep = async context => {
    const { iconPngPath, tags, iconName } = context
    if (!isString(iconPngPath)) {
        throw new Error('pngPath or style is undefined or not a string')
    }

    const imageData = await fs.readFileSync(iconPngPath)

    const llm = new Ollama({
        baseUrl: 'http://localhost:11434',
        model: 'minicpm-v',
        format: 'json',
    }).bind({
        images: [imageData.toString('base64')],
    })

    const promptForJsonMode = ChatPromptTemplate.fromMessages([
        [
            'system',
            `You are an expert in icon classification and naming. Your task is to analyze an icon image and provide structured JSON output.
The output must have two keys:
1. "names": An array of two to five single-word, avoiding duplicates and overly complex phrases.
2. "categories": An array of two to five single-word categories relevant to the icon, avoiding duplicates.
Ensure the output is always valid JSON and consistent with this format. Do not use nested arrays or special structures.`,
        ],
        [
            'human',
            `Analyze the icon image and enrich its descriptive names and categories. The filename is "{file_name}" and the current categories are {categories}. Use these inputs to avoid repetition and ensure your output adds new value.`,
        ],
    ])

    const chainForJsonMode = promptForJsonMode.pipe(llm)

    const description = await chainForJsonMode.invoke({
        file_name: iconName,
        categories: JSON.stringify(tags),
    })

    return { ...context, description: description }
}
