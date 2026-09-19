import fs from 'node:fs/promises'
import path from 'node:path'

import sharp from 'sharp'

const FIELD_WIDTH = 600
const FIELD_HEIGHT = 548
const COLUMNS = 8
const ROWS = 6
const ICON_SIZE = 34
const FIELD_PADDING = 32
const ICON_SCALE = ICON_SIZE / 24

const SOURCE_HTML = path.join(process.cwd(), 'ressources/solar-icons-banner.html')
const CORE_SVGS = path.resolve(process.cwd(), '../../packages/core/svgs')
const OUTPUT = path.join(process.cwd(), 'public/og/solar-icons-field.png')

function getIconPaths(source: string) {
    const paths = [...source.matchAll(/src="(?:\.\.\/)+packages\/core\/svgs\/([^"]+\.svg)"/g)].map(
        match => match[1]
    )

    return [...new Set(paths)]
}

function getIconMarkup(source: string) {
    const inner = source.match(/<svg[^>]*>([\s\S]*)<\/svg>/)?.[1]
    if (!inner) return null

    return inner
        .replace(/<title>[\s\S]*?<\/title>/gi, '')
        .replace(/currentColor/gi, '#171923')
        .replace(/#1c274c/gi, '#171923')
}

async function loadIconMarkup(iconPath: string) {
    const source = await fs.readFile(path.join(CORE_SVGS, iconPath), 'utf8')

    if (/<(?:defs|mask|clippath|pattern)\b/i.test(source)) return null

    return getIconMarkup(source)
}

async function main() {
    const source = await fs.readFile(SOURCE_HTML, 'utf8')
    const iconPaths = getIconPaths(source)
    const iconMarkups: string[] = []

    for (const iconPath of iconPaths) {
        const markup = await loadIconMarkup(iconPath)
        if (!markup) continue

        iconMarkups.push(markup)
        if (iconMarkups.length === COLUMNS * ROWS) break
    }

    if (iconMarkups.length < COLUMNS * ROWS) {
        throw new Error(`Expected ${COLUMNS * ROWS} usable icons, found ${iconMarkups.length}`)
    }

    const innerWidth = FIELD_WIDTH - FIELD_PADDING * 2
    const innerHeight = FIELD_HEIGHT - FIELD_PADDING * 2
    const cellWidth = innerWidth / COLUMNS
    const cellHeight = innerHeight / ROWS
    const icons = iconMarkups
        .map((markup, index) => {
            const column = index % COLUMNS
            const row = Math.floor(index / COLUMNS)
            const x = FIELD_PADDING + column * cellWidth + (cellWidth - ICON_SIZE) / 2
            const y = FIELD_PADDING + row * cellHeight + (cellHeight - ICON_SIZE) / 2

            return `<g fill="none" transform="translate(${x.toFixed(2)} ${y.toFixed(2)}) scale(${ICON_SCALE.toFixed(4)})" opacity="0.84">${markup}</g>`
        })
        .join('')

    const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="${FIELD_WIDTH}" height="${FIELD_HEIGHT}" viewBox="0 0 ${FIELD_WIDTH} ${FIELD_HEIGHT}">
  <defs>
    <radialGradient id="cyan" cx="18%" cy="20%" r="55%">
      <stop offset="0" stop-color="#46cdef" stop-opacity="0.16" />
      <stop offset="1" stop-color="#46cdef" stop-opacity="0" />
    </radialGradient>
    <radialGradient id="coral" cx="82%" cy="20%" r="58%">
      <stop offset="0" stop-color="#ff6d50" stop-opacity="0.18" />
      <stop offset="1" stop-color="#ff6d50" stop-opacity="0" />
    </radialGradient>
    <radialGradient id="violet" cx="62%" cy="92%" r="62%">
      <stop offset="0" stop-color="#5c53da" stop-opacity="0.22" />
      <stop offset="1" stop-color="#5c53da" stop-opacity="0" />
    </radialGradient>
    <filter id="noise-filter">
      <feTurbulence type="fractalNoise" baseFrequency="0.54" numOctaves="4" stitchTiles="stitch" />
      <feColorMatrix type="saturate" values="0" />
      <feComponentTransfer>
        <feFuncR type="linear" slope="0.61" />
        <feFuncG type="linear" slope="0.61" />
        <feFuncB type="linear" slope="0.61" />
        <feFuncA type="linear" slope="1" />
      </feComponentTransfer>
    </filter>
  </defs>
  <rect width="100%" height="100%" fill="#d9d7ec" />
  <rect width="100%" height="100%" fill="url(#cyan)" />
  <rect width="100%" height="100%" fill="url(#coral)" />
  <rect width="100%" height="100%" fill="url(#violet)" />
  <rect width="100%" height="100%" opacity="0.39" filter="url(#noise-filter)" />
  ${icons}
</svg>`

    await fs.mkdir(path.dirname(OUTPUT), { recursive: true })
    await sharp(Buffer.from(svg)).png({ palette: true, quality: 90, dither: 0.5 }).toFile(OUTPUT)
    console.log(`Generated ${OUTPUT} from ${iconMarkups.length} Solar Icons`)
}

await main()
