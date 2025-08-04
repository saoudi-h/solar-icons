/**
 * Generate PNGs from SVGs
 *
 * This script generates PNGs from SVGs based on the metadata.json file.
 * This step involves generating and enriching icon information,
 * like descriptive names and categories, to enhance search functionality
 * on the docs website.
 */

import path from 'node:path'
import metadata from '../metadata.json' assert { type: 'json' }

import {
    convertSvgToPngStep,
    getLinearSvgPathStep,
    iconsFromCategoriesExtractor,
} from './workflows'
import { processIcons } from './workflows/processIcons'

const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../../svgs')
const PNGS_PATH = path.resolve(__dirname, '../../pngs')
const TEMP_PATH = path.resolve(__dirname, '../../temp')

await processIcons({
    stateId: 'pngs',
    svgsPath: SVGS_PATH,
    pngsPath: PNGS_PATH,
    tempPath: TEMP_PATH,
    data: metadata,
    extractor: iconsFromCategoriesExtractor,
    steps: [getLinearSvgPathStep, convertSvgToPngStep],
})
