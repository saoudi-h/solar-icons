/**
 * fix descriptions
 *
 */

import path from 'node:path'
import data from '../metadata-descriptions.json' assert { type: 'json' }
import type { Context } from './workflows'
import {
    filtersStepGenerator,
    generateMetadataStep,
    getLinearPngPathStep,
    iconsFromFlatArrayExtractor,
    loggerStepGenerator,
    logStep,
    processIcons,
    saveDescriptionStepGenerator,
} from './workflows'

const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../../svgs')
const PNGS_PATH = path.resolve(__dirname, '../../pngs')
const TEMP_PATH = path.resolve(__dirname, '../../temp')
const METADATA_PATH = path.resolve(__dirname, '../metadata-descriptions.json')

//--------------------------------------------------------------------------------------------------

const containsOnlyAllowedCharacters = (context: Context): boolean => {
    if (!context['categoryTags']) return true
    const regex = /^[\w\s-]*$/
    return !(regex.test(context.tags.join('')) && regex.test(context['categoryTags'].join('')))
}

await processIcons({
    stateId: 'fix-descriptions',
    svgsPath: SVGS_PATH,
    pngsPath: PNGS_PATH,
    tempPath: TEMP_PATH,
    data: data,
    extractor: iconsFromFlatArrayExtractor,
    steps: [
        filtersStepGenerator([containsOnlyAllowedCharacters]),
        getLinearPngPathStep,
        loggerStepGenerator([{ name: 'iconName', level: 'warn' }]),
        loggerStepGenerator([{ name: 'categoryTags', level: 'warn' }]),
        logStep,
        async (context: Context) => {
            const regex = /^[\w\s-]*$/
            return {
                ...context,
                tags: context['categoryTags'].filter((tag: string) => regex.test(tag)),
            }
        },
        loggerStepGenerator([{ name: 'tags', level: 'info' }]),
        generateMetadataStep,
        loggerStepGenerator([{ name: 'description', level: 'error' }]),
        saveDescriptionStepGenerator(METADATA_PATH),
    ],
})
