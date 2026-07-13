import {
    AccessibilityBoldDuotoneIcon,
    BellRingLinearIcon,
    HomeBoldIcon,
    LoginLinearIcon,
    SettingsBoldIcon,
    ShieldBrokenIcon,
    StarLineDuotoneIcon,
    UserOutlineIcon,
} from '@solar-icons/static'
import iconsJson from '@solar-icons/static/icons.json' with { type: 'json' }
import metadataJson from '@solar-icons/static/metadata.json' with { type: 'json' }

import spriteSvg from '@solar-icons/static/sprite?raw'

// Inline sprite SVG to the DOM to allow <use href="#id"> to work properly
const div = document.createElement('div')
div.style.display = 'none'
div.innerHTML = spriteSvg
document.body.insertBefore(div, document.body.firstChild)
renderSprite()

function injectSvg(parent: HTMLElement, svgString: string, label: string) {
    const card = document.createElement('div')
    card.className = 'icon-card'

    const wrapper = document.createElement('div')
    wrapper.className = 'solar-icons-demo'
    wrapper.innerHTML = svgString

    const lbl = document.createElement('span')
    lbl.className = 'icon-label'
    lbl.textContent = label

    card.appendChild(wrapper)
    card.appendChild(lbl)
    parent.appendChild(card)
}

// ---- Section 1: Per-icon ESM module imports ----

const perIconGrid = document.getElementById('per-icon-grid')!
injectSvg(perIconGrid, LoginLinearIcon, 'LoginLinearIcon')
injectSvg(perIconGrid, HomeBoldIcon, 'HomeBoldIcon')
    injectSvg(perIconGrid, SettingsBoldIcon, 'SettingsBoldIcon')
    injectSvg(perIconGrid, BellRingLinearIcon, 'BellRingLinearIcon')
    injectSvg(perIconGrid, ShieldBrokenIcon, 'ShieldBrokenIcon')
injectSvg(perIconGrid, UserOutlineIcon, 'UserOutlineIcon')
injectSvg(perIconGrid, StarLineDuotoneIcon, 'StarLineDuotoneIcon')
injectSvg(perIconGrid, AccessibilityBoldDuotoneIcon, 'AccessibilityBoldDuotoneIcon')

// ---- Section 2: SVG sprite (<use> references) ----

function renderSprite() {
    const spriteGrid = document.getElementById('sprite-grid')!

    const SPRITE_IDS = [
        'login-linear',
        'home-bold',
        'settings-bold',
        'bell-ring-linear',
        'shield-broken',
        'user-outline',
        'star-line-duotone',
        'accessibility-bold-duotone',
    ]

    for (const id of SPRITE_IDS) {
        const card = document.createElement('div')
        card.className = 'icon-card'

        const svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg')
        svg.setAttribute('class', 'sprite-icon')
        svg.setAttribute('viewBox', '0 0 24 24')
        svg.setAttribute('fill', 'none')
        svg.setAttribute('stroke', 'currentColor')
        svg.setAttribute('stroke-width', '1.5')

        const use = document.createElementNS('http://www.w3.org/2000/svg', 'use')
        use.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', `#${id}`)
        svg.appendChild(use)

        const lbl = document.createElement('span')
        lbl.className = 'icon-label'
        lbl.textContent = id

        card.appendChild(svg)
        card.appendChild(lbl)
        spriteGrid.appendChild(card)
    }
}

// ---- Section 3: <img> data: URLs from SVG strings ----

{
    const imgGrid = document.getElementById('img-grid')!

    const IMG_DATA: Array<{ svg: string; label: string }> = [
        { svg: LoginLinearIcon, label: 'LoginLinearIcon' },
        { svg: HomeBoldIcon, label: 'HomeBoldIcon' },
        { svg: SettingsBoldIcon, label: 'SettingsBoldIcon' },
        { svg: BellRingLinearIcon, label: 'BellRingLinearIcon' },
        { svg: ShieldBrokenIcon, label: 'ShieldBrokenIcon' },
        { svg: UserOutlineIcon, label: 'UserOutlineIcon' },
        { svg: StarLineDuotoneIcon, label: 'StarLineDuotoneIcon' },
        { svg: AccessibilityBoldDuotoneIcon, label: 'AccessibilityBoldDuotoneIcon' },
    ]

    for (const { svg, label } of IMG_DATA) {
        const card = document.createElement('div')
        card.className = 'icon-card'

        const img = document.createElement('img')
        const whiteSvg = svg.replace(/currentColor/g, '#ffffff')
        img.src = `data:image/svg+xml;utf8,${encodeURIComponent(whiteSvg)}`
        img.width = 24
        img.height = 24
        img.alt = label

        const lbl = document.createElement('span')
        lbl.className = 'icon-label'
        lbl.textContent = label

        card.appendChild(img)
        card.appendChild(lbl)
        imgGrid.appendChild(card)
    }
}

// ---- Section 4: CSS variable theming and Grid View ----

{
    const themeGrid = document.getElementById('theme-grid')!
    const styleSelect = <HTMLSelectElement>document.getElementById('style-select')!

    function renderGrid() {
        const style = styleSelect.value
        themeGrid.innerHTML = ''
        
        const suffix = `-${style}`
        for (const [key, svg] of Object.entries(iconsJson as Record<string, string>)) {
            if (key.endsWith(suffix)) {
                const wrapper = document.createElement('div')
                wrapper.className = 'flex items-center justify-center p-2 rounded hover:bg-white/5 transition-colors cursor-pointer'
                wrapper.title = key
                wrapper.innerHTML = svg
                themeGrid.appendChild(wrapper)
            }
        }
    }

    styleSelect.addEventListener('change', renderGrid)
    renderGrid()

    const colorInput = <HTMLInputElement>document.getElementById('theme-color')!
    const sizeInput = <HTMLInputElement>document.getElementById('theme-size')!
    const strokeInput = <HTMLInputElement>document.getElementById('theme-stroke')!
    const secondaryColorInput = <HTMLInputElement>document.getElementById('theme-secondary-color')!
    const secondaryOpacityInput = <HTMLInputElement>document.getElementById('theme-secondary-opacity')!

    function apply() {
        themeGrid.style.setProperty('--solar-color', colorInput.value)
        themeGrid.style.setProperty('--solar-size', `${sizeInput.value}px`)
        themeGrid.style.setProperty('--solar-stroke-width', strokeInput.value)
        themeGrid.style.setProperty('--solar-secondary-color', secondaryColorInput.value)
        themeGrid.style.setProperty('--solar-secondary-opacity', secondaryOpacityInput.value)
    }

    colorInput.addEventListener('input', apply)
    sizeInput.addEventListener('input', apply)
    strokeInput.addEventListener('input', apply)
    secondaryColorInput.addEventListener('input', apply)
    secondaryOpacityInput.addEventListener('input', apply)

    apply()
}

// ---- Section 5: Metadata stats ----

{
    const metadataInfo = document.getElementById('metadata-info')!
    const iconCount = Object.keys(iconsJson).length
    const categoryCount = Object.keys(metadataJson.categories).length
    const totalEntries = Object.values(metadataJson.categories).reduce(
        (sum: number, cat: { icons: string[] }) => sum + cat.icons.length,
        0
    )
    metadataInfo.innerHTML = `
        <div class="flex gap-6 flex-wrap">
            <div class="theme-panel">
                <label>Total icon files</label>
                <span class="text-xl font-bold">${iconCount.toLocaleString()}</span>
            </div>
            <div class="theme-panel">
                <label>Categories</label>
                <span class="text-xl font-bold">${categoryCount}</span>
            </div>
            <div class="theme-panel">
                <label>Icons in metadata</label>
                <span class="text-xl font-bold">${totalEntries.toLocaleString()}</span>
            </div>
            <div class="theme-panel">
                <label>Styles</label>
                <span class="text-xl font-bold">6</span>
                <span class="text-xs opacity-50">Bold · BoldDuotone · Broken · Linear · LineDuotone · Outline</span>
            </div>
        </div>
    `
}