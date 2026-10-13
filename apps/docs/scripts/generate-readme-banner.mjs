#!/usr/bin/env node
/**
 * Renders the README hero banner from its HTML source.
 *
 * Usage: `pnpm generate:banner` from apps/docs (needs a Chromium binary:
 * CHROMIUM_PATH or one of chromium, chromium-browser, google-chrome on PATH).
 * Writes ressources/solar-icons-banner.png (1200x630) plus the .webp twin.
 * There is no CI render: freshness is enforced by
 * `pnpm check:icon-inventory` (icon paths exist, every README-table package
 * has a logo), and RELEASE-PROCEDURE lists this command in the catalog
 * checklist.
 */
import { execFileSync, execSync } from 'node:child_process'
import fs from 'node:fs'
import { createRequire } from 'node:module'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const here = path.dirname(fileURLToPath(import.meta.url))
const docsRoot = path.resolve(here, '..')
const require = createRequire(path.join(docsRoot, 'package.json'))
const sharp = require('sharp')

const HTML = path.join(docsRoot, 'ressources/solar-icons-banner.html')
const PNG = path.join(docsRoot, 'ressources/solar-icons-banner.png')
const WEBP = path.join(docsRoot, 'ressources/solar-icons-banner.webp')

function findChromium() {
    if (process.env.CHROMIUM_PATH && fs.existsSync(process.env.CHROMIUM_PATH)) {
        return process.env.CHROMIUM_PATH
    }
    for (const binary of ['chromium', 'chromium-browser', 'google-chrome']) {
        try {
            const found = execSync(`command -v ${binary}`, { encoding: 'utf8' }).trim()
            if (found) return found
        } catch {
            // try the next binary
        }
    }
    return null
}

async function main() {
    if (!fs.existsSync(HTML)) throw new Error(`banner source missing: ${HTML}`)
    const chromium = findChromium()
    if (!chromium) {
        throw new Error(
            'No Chromium binary found (tried CHROMIUM_PATH, chromium, chromium-browser, google-chrome).'
        )
    }

    execFileSync(
        chromium,
        [
            '--headless=new',
            '--no-sandbox',
            '--disable-gpu',
            '--hide-scrollbars',
            '--force-device-scale-factor=1',
            `--screenshot=${PNG}`,
            '--window-size=1200,630',
            '--virtual-time-budget=8000',
            `file://${HTML}`,
        ],
        { stdio: 'inherit' }
    )

    const metadata = await sharp(PNG).metadata()
    if (metadata.width !== 1200 || metadata.height !== 630) {
        throw new Error(`banner must render at 1200x630, got ${metadata.width}x${metadata.height}`)
    }
    await sharp(PNG).webp({ quality: 90 }).toFile(WEBP)
    console.log(`Banner written: ${PNG} + ${WEBP}`)
}

await main()
