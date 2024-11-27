/**
 * Generate Descriptions
 *
 */

import metadata from '../metadata.json' assert { type: 'json' }
import path from 'node:path'

import {
    getLinearPngPathStep,
    processIcons,
    iconsFromCategoriesExtractor,
    saveDescriptionStepGenerator,
    generateMetadataStep,
} from './workflows'

const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../../svgs')
const PNGS_PATH = path.resolve(__dirname, '../../pngs')
const TEMP_PATH = path.resolve(__dirname, '../../temp')
const METADATA_PATH = path.resolve(__dirname, '../metadata-descriptions.json')

//--------------------------------------------------------------------------------------------------

await processIcons({
    stateId: 'descriptions',
    svgsPath: SVGS_PATH,
    pngsPath: PNGS_PATH,
    tempPath: TEMP_PATH,
    data: metadata,
    extractor: iconsFromCategoriesExtractor,
    steps: [
        getLinearPngPathStep,
        generateMetadataStep,
        saveDescriptionStepGenerator(METADATA_PATH),
    ],
})
