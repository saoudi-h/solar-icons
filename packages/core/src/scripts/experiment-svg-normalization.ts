/**
 * Experimental SVG normalization report.
 *
 * This script deliberately does not write to `packages/core/svgs/` or any
 * generated package. It renders a small, representative sample using one
 * post-import transformation:
 *
 *   - stroke-merged: convert shape primitives to paths, then merge compatible
 *     stroke subpaths. This keeps `stroke-width` configurable.
 *
 * Duotone accents are split and transformed independently. The stroke-preserving
 * path merge is implemented locally. The source SVGs are untouched.
 */

import fs from 'node:fs'
import os from 'node:os'
import path from 'node:path'
import { pathToFileURL } from 'node:url'

import xmldom from '@xmldom/xmldom'
import sharp from 'sharp'

const { DOMParser, XMLSerializer } = xmldom

type NormalizationMode = 'stroke-merged'
type Tone = 'primary' | 'accent'
type ExperimentStyle = 'Linear' | 'LineDuotone' | 'Outline' | 'Bold' | 'BoldDuotone' | 'Broken'

const STYLES: readonly ExperimentStyle[] = [
    'Linear',
    'LineDuotone',
    'Outline',
    'Bold',
    'BoldDuotone',
    'Broken',
]

/** Twenty logical icons chosen to cover the known overlap-heavy and simple cases. */
const EXPERIMENT_ICONS = [
    ['video', 'gallery'],
    ['video', 'camera'],
    ['video', 'camera-off'],
    ['search', 'magnifier'],
    ['ui', 'menu-dots'],
    ['ui', 'grip'],
    ['ui', 'blocks'],
    ['files', 'file'],
    ['files', 'file-add'],
    ['files', 'file-search'],
    ['files', 'file-pen'],
    ['files', 'file-chart'],
    ['folders', 'folder'],
    ['folders', 'folder-zip'],
    ['messages', 'chat-round'],
    ['messages', 'pen'],
    ['arrows-action', 'move'],
    ['notes', 'archive'],
    ['parts', 'car'],
    ['tools', 'frame'],
] as const

const VISUAL_STYLES: readonly ExperimentStyle[] = ['Linear', 'LineDuotone', 'BoldDuotone']
const CANVAS_SIZE = 128
const OPAQUE_COLOR = '#1c274c'
const ALPHA_COLOR = '#1c274c80'
const RENDER_BACKGROUND = '#ffffff'
const DEFAULT_STROKE_WIDTH = '1.5'
const DRAWABLE_TAGS = new Set(['path', 'circle', 'ellipse', 'rect', 'line', 'polyline', 'polygon'])

type XmlAttribute = {
    name: string
    value: string
}

export type XmlElement = {
    nodeType: number
    tagName: string
    attributes: { length: number; [index: number]: XmlAttribute }
    childNodes: { length: number; [index: number]: XmlElement }
    ownerDocument: { createElement(tagName: string): XmlElement }
    getAttribute(name: string): string
    setAttribute(name: string, value: string): void
    removeAttribute(name: string): void
    cloneNode(deep?: boolean): XmlElement
    appendChild(node: XmlElement): XmlElement
}

export type PathRecord = {
    d: string
    fill: string
    stroke: string
    strokeWidth: string
    strokeLinecap: string
    strokeLinejoin: string
    strokeMiterlimit: string
    strokeDasharray: string
    strokeDashoffset: string
    strokeOpacity: string
    fillRule: string
    clipRule: string
    fillOpacity: string
    vectorEffect: string
    paintOrder: string
    transform: string
    closed: boolean
    paintKind: 'stroke' | 'fill' | 'mixed'
}

type ToneSplit = {
    primary: XmlElement[]
    accent: XmlElement[]
    drawableCount: number
    unsupported: string[]
}

type LayerResult = {
    tone: Tone
    markup: string
    pathCount: number
    strokePathCount: number
    mergedStrokeGroupCount: number
    unmergedStrokeCount: number
    styleConflictCount: number
    styleConflict: boolean
    unmergedFillCount: number
}

type PixelMetric = {
    changedPixels: number
    changedPercent: number
    maxChannelDelta: number
    meanAbsoluteDelta: number
}

type RenderedVariant = {
    svg: string
    dataUri: string
}

type VariantReport = {
    mode: NormalizationMode
    pathCount: number
    strokePathCount: number
    mergedStrokeGroupCount: number
    unmergedStrokeCount: number
    styleConflictCount: number
    styleConflict: boolean
    unmergedFillCount: number
}

type IconReport = {
    category: string
    name: string
    style: ExperimentStyle
    sourcePath: string
    sourceDrawableCount: number
    layerCount: number
    unsupported: string[]
    variants: {
        strokeMerged?: VariantReport
    }
    metrics?: {
        opaque: PixelMetric
        alpha: PixelMetric
    }
}

type VisualEntry = {
    report: IconReport
    source: RenderedVariant
    strokeMerged: RenderedVariant
    sourceWide: RenderedVariant
    strokeMergedWide: RenderedVariant
}

const scriptDir = import.meta.dirname
const defaultSvgsDir = path.resolve(scriptDir, '../../svgs')
const defaultOutputDir = path.join(os.tmpdir(), 'solar-icons-svg-normalization')

const escapeXml = (value: string): string =>
    value
        .replaceAll('&', '&amp;')
        .replaceAll('"', '&quot;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')

const getArg = (name: string, fallback: string): string => {
    const index = process.argv.indexOf(name)
    return index >= 0 && process.argv[index + 1] ? process.argv[index + 1]! : fallback
}

const getChildElements = (node: XmlElement): XmlElement[] => {
    const children: XmlElement[] = []
    for (let index = 0; index < node.childNodes.length; index += 1) {
        const child = node.childNodes[index]
        if (child && child.nodeType === 1) children.push(child)
    }
    return children
}

const getStyleMap = (element: XmlElement): Record<string, string> => {
    const style = element.getAttribute('style')
    if (!style) return {}

    const values: Record<string, string> = {}
    for (const declaration of style.split(';')) {
        const separator = declaration.indexOf(':')
        if (separator < 0) continue
        const name = declaration.slice(0, separator).trim()
        const value = declaration.slice(separator + 1).trim()
        if (name && value) values[name] = value
    }
    return values
}

const getAttribute = (element: XmlElement, name: string): string => {
    const direct = element.getAttribute(name)
    if (direct) return direct
    return getStyleMap(element)[name] ?? ''
}

const normalizePaint = (value: string): string => value.trim().toLowerCase()

const opacityNumber = (element: XmlElement): number | null => {
    const value = getAttribute(element, 'opacity').trim()
    if (!value) return null
    const parsed = Number(value)
    return Number.isFinite(parsed) ? parsed : null
}

const hasHalfOpacity = (element: XmlElement): boolean => {
    const value = opacityNumber(element)
    return value !== null && Math.abs(value - 0.5) < Number.EPSILON
}

const collectOpacityValues = (element: XmlElement, values: number[] = []): number[] => {
    const value = opacityNumber(element)
    if (value !== null && Math.abs(value - 1) >= Number.EPSILON) values.push(value)
    for (const child of getChildElements(element)) collectOpacityValues(child, values)
    return values
}

const containsHalfOpacity = (element: XmlElement): boolean => {
    for (const child of getChildElements(element)) {
        if (hasHalfOpacity(child) || containsHalfOpacity(child)) return true
    }
    return false
}

const countDrawableElements = (element: XmlElement): number => {
    let count = DRAWABLE_TAGS.has(element.tagName) ? 1 : 0
    for (const child of getChildElements(element)) count += countDrawableElements(child)
    return count
}

export const parseSource = (raw: string): XmlElement => {
    const document = new DOMParser().parseFromString(raw, 'image/svg+xml')
    const root = document.documentElement as unknown as XmlElement
    if (!root || root.tagName === 'parsererror') throw new Error('Could not parse SVG XML.')
    return root
}

const serialize = (node: unknown): string => {
    const serializer = new XMLSerializer()
    return serializer.serializeToString(node as Parameters<typeof serializer.serializeToString>[0])
}

const SVG_NUMBER_PATTERN = /[-+]?(?:\d*\.\d+|\d+\.?)(?:[eE][-+]?\d+)?/g
const PRIMITIVE_GEOMETRY_ATTRIBUTES = new Set([
    'cx',
    'cy',
    'r',
    'rx',
    'ry',
    'x',
    'y',
    'x1',
    'x2',
    'y1',
    'y2',
    'width',
    'height',
    'points',
])

const formatNumber = (value: number): string => {
    if (Object.is(value, -0) || Math.abs(value) < Number.EPSILON) return '0'
    return String(value)
}

const numericAttribute = (element: XmlElement, name: string, fallback?: number): number => {
    const raw = getAttribute(element, name)
    if (!raw && fallback !== undefined) return fallback

    const value = Number(raw)
    if (!Number.isFinite(value)) throw new Error(`Invalid ${name} value on <${element.tagName}>.`)
    return value
}

const requiredNumericAttribute = (element: XmlElement, name: string): number => {
    const raw = getAttribute(element, name)
    if (!raw) throw new Error(`Missing ${name} value on <${element.tagName}>.`)
    return numericAttribute(element, name)
}

const pointList = (element: XmlElement): number[] => {
    const raw = getAttribute(element, 'points')
    const matches = raw.match(SVG_NUMBER_PATTERN)
    if (!matches || matches.length < 4 || matches.length % 2 !== 0) {
        throw new Error(`Invalid points value on <${element.tagName}>.`)
    }
    return matches.map(Number)
}

const circlePathData = (element: XmlElement): string => {
    const cx = numericAttribute(element, 'cx', 0)
    const cy = numericAttribute(element, 'cy', 0)
    const radius = requiredNumericAttribute(element, 'r')
    if (radius <= 0) throw new Error('Circle radius must be positive.')

    const left = formatNumber(cx - radius)
    const right = formatNumber(cx + radius)
    const centerY = formatNumber(cy)
    const r = formatNumber(radius)
    return `M ${left} ${centerY} A ${r} ${r} 0 1 0 ${right} ${centerY} A ${r} ${r} 0 1 0 ${left} ${centerY} Z`
}

const ellipsePathData = (element: XmlElement): string => {
    const cx = numericAttribute(element, 'cx', 0)
    const cy = numericAttribute(element, 'cy', 0)
    const rx = requiredNumericAttribute(element, 'rx')
    const ry = requiredNumericAttribute(element, 'ry')
    if (rx <= 0 || ry <= 0) throw new Error('Ellipse radii must be positive.')

    const left = formatNumber(cx - rx)
    const right = formatNumber(cx + rx)
    const centerY = formatNumber(cy)
    const horizontalRadius = formatNumber(rx)
    const verticalRadius = formatNumber(ry)
    return `M ${left} ${centerY} A ${horizontalRadius} ${verticalRadius} 0 1 0 ${right} ${centerY} A ${horizontalRadius} ${verticalRadius} 0 1 0 ${left} ${centerY} Z`
}

const rectanglePathData = (element: XmlElement): string => {
    const x = numericAttribute(element, 'x', 0)
    const y = numericAttribute(element, 'y', 0)
    const width = requiredNumericAttribute(element, 'width')
    const height = requiredNumericAttribute(element, 'height')
    if (width <= 0 || height <= 0) throw new Error('Rectangle dimensions must be positive.')

    const rawRx = getAttribute(element, 'rx')
    const rawRy = getAttribute(element, 'ry')
    let rx = rawRx ? Number(rawRx) : rawRy ? Number(rawRy) : 0
    let ry = rawRy ? Number(rawRy) : rawRx ? Number(rawRx) : 0
    if (!Number.isFinite(rx) || !Number.isFinite(ry)) {
        throw new Error('Invalid rectangle corner radius.')
    }
    rx = Math.min(Math.max(rx, 0), width / 2)
    ry = Math.min(Math.max(ry, 0), height / 2)

    const right = x + width
    const bottom = y + height
    if (rx === 0 || ry === 0) {
        return `M ${formatNumber(x)} ${formatNumber(y)} H ${formatNumber(right)} V ${formatNumber(bottom)} H ${formatNumber(x)} Z`
    }

    return [
        `M ${formatNumber(x + rx)} ${formatNumber(y)}`,
        `H ${formatNumber(right - rx)}`,
        `A ${formatNumber(rx)} ${formatNumber(ry)} 0 0 1 ${formatNumber(right)} ${formatNumber(y + ry)}`,
        `V ${formatNumber(bottom - ry)}`,
        `A ${formatNumber(rx)} ${formatNumber(ry)} 0 0 1 ${formatNumber(right - rx)} ${formatNumber(bottom)}`,
        `H ${formatNumber(x + rx)}`,
        `A ${formatNumber(rx)} ${formatNumber(ry)} 0 0 1 ${formatNumber(x)} ${formatNumber(bottom - ry)}`,
        `V ${formatNumber(y + ry)}`,
        `A ${formatNumber(rx)} ${formatNumber(ry)} 0 0 1 ${formatNumber(x + rx)} ${formatNumber(y)}`,
        'Z',
    ].join(' ')
}

const linePathData = (element: XmlElement): string =>
    `M ${formatNumber(numericAttribute(element, 'x1', 0))} ${formatNumber(numericAttribute(element, 'y1', 0))} L ${formatNumber(numericAttribute(element, 'x2', 0))} ${formatNumber(numericAttribute(element, 'y2', 0))}`

const pointPathData = (element: XmlElement): string => {
    const points = pointList(element)
    const commands = [`M ${formatNumber(points[0]!)} ${formatNumber(points[1]!)}`]
    for (let index = 2; index < points.length; index += 2) {
        commands.push(`L ${formatNumber(points[index]!)} ${formatNumber(points[index + 1]!)}`)
    }
    if (element.tagName === 'polygon') commands.push('Z')
    return commands.join(' ')
}

const primitivePathData = (element: XmlElement): string => {
    switch (element.tagName) {
        case 'circle':
            return circlePathData(element)
        case 'ellipse':
            return ellipsePathData(element)
        case 'rect':
            return rectanglePathData(element)
        case 'line':
            return linePathData(element)
        case 'polyline':
        case 'polygon':
            return pointPathData(element)
        default:
            throw new Error(`Unsupported primitive <${element.tagName}>.`)
    }
}

const isNoOpCircleRotation = (element: XmlElement): boolean => {
    if (element.tagName !== 'circle') return false
    const transform = getAttribute(element, 'transform').trim()
    const match =
        /^rotate\(\s*([-+]?\d*\.?\d+)(?:\s+([-+]?\d*\.?\d+)\s+([-+]?\d*\.?\d+))?\s*\)$/i.exec(
            transform
        )
    if (!match) return false

    const angle = Number(match[1])
    if (Math.abs(angle % 360) < Number.EPSILON) return true
    if (!match[2] || !match[3]) return false

    const cx = numericAttribute(element, 'cx', 0)
    const cy = numericAttribute(element, 'cy', 0)
    return (
        Math.abs(Number(match[2]) - cx) < Number.EPSILON &&
        Math.abs(Number(match[3]) - cy) < Number.EPSILON
    )
}

const copyPrimitiveAttributes = (source: XmlElement, target: XmlElement): void => {
    for (let index = 0; index < source.attributes.length; index += 1) {
        const attribute = source.attributes[index]
        if (!attribute || PRIMITIVE_GEOMETRY_ATTRIBUTES.has(attribute.name)) continue
        if (attribute.name === 'transform' && isNoOpCircleRotation(source)) continue
        target.setAttribute(attribute.name, attribute.value)
    }
}

const primitiveToPath = (element: XmlElement): XmlElement => {
    const pathElement = element.ownerDocument.createElement('path')
    copyPrimitiveAttributes(element, pathElement)
    pathElement.setAttribute('d', primitivePathData(element))
    return pathElement
}

const convertNodeToPath = (element: XmlElement): XmlElement => {
    if (element.tagName === 'path') return element.cloneNode(true)
    if (DRAWABLE_TAGS.has(element.tagName)) return primitiveToPath(element)

    const clone = element.cloneNode(false)
    for (const child of getChildElements(element)) clone.appendChild(convertNodeToPath(child))
    return clone
}

/** Convert simple SVG primitives without asking an external vector editor. */
export const convertPrimitivesToPaths = (raw: string): string => {
    const root = parseSource(raw)
    const convertedRoot = root.cloneNode(false)
    for (const child of getChildElements(root)) convertedRoot.appendChild(convertNodeToPath(child))
    return serialize(convertedRoot)
}

export const splitTones = (root: XmlElement): ToneSplit => {
    const primary: XmlElement[] = []
    const accent: XmlElement[] = []
    const unsupported: string[] = []
    let drawableCount = 0

    for (const child of getChildElements(root)) {
        if (child.tagName === 'defs' || child.tagName === 'clipPath') {
            unsupported.push(`<${child.tagName}> definitions are not handled by this experiment`)
            continue
        }

        drawableCount += countDrawableElements(child)
        if (hasHalfOpacity(child)) {
            if (collectOpacityValues(child).length > 1) {
                unsupported.push('nested opacity values in accent group')
                continue
            }
            accent.push(child)
            continue
        }

        const opacityValues = collectOpacityValues(child)
        if (opacityValues.some(value => Math.abs(value - 0.5) >= Number.EPSILON)) {
            unsupported.push('non-standard opacity')
        }

        if (child.tagName === 'g') {
            if (containsHalfOpacity(child)) {
                unsupported.push('mixed-opacity group')
            } else {
                unsupported.push('non-duotone group')
            }
        }

        if (getAttribute(child, 'clip-path')) {
            unsupported.push('clip-path is not handled by this experiment')
        }
        primary.push(child)
    }

    return { primary, accent, drawableCount, unsupported: [...new Set(unsupported)] }
}

const makeToneSvg = (root: XmlElement, elements: readonly XmlElement[]): string => {
    const clone = root.cloneNode(false)
    for (const element of elements) {
        clone.appendChild(element.cloneNode(true))
    }
    return serialize(clone)
}

const collectPathElements = (element: XmlElement, paths: XmlElement[] = []): XmlElement[] => {
    for (const child of getChildElements(element)) {
        if (child.tagName === 'defs' || child.tagName === 'clipPath') continue
        if (child.tagName === 'path') paths.push(child)
        else collectPathElements(child, paths)
    }
    return paths
}

const PATH_TOKEN_PATTERN = /[a-zA-Z]|[-+]?(?:\d*\.\d+|\d+\.?)(?:[eE][-+]?\d+)?/g
const PATH_COMMAND_ARITY: Record<string, number> = {
    A: 7,
    C: 6,
    H: 1,
    L: 2,
    M: 2,
    Q: 4,
    S: 4,
    T: 2,
    V: 1,
}

type Point = { x: number; y: number }

const pointsEqual = (first: Point, second: Point): boolean =>
    Math.abs(first.x - second.x) < 0.000001 && Math.abs(first.y - second.y) < 0.000001

/** Return true when every subpath is explicitly or geometrically closed. */
const isClosedPathData = (d: string): boolean => {
    const tokens = d.match(PATH_TOKEN_PATTERN) ?? []
    if (tokens.length === 0) return false

    let index = 0
    let command = ''
    let current: Point = { x: 0, y: 0 }
    let start: Point | null = null
    let hasSubpath = false
    let subpathClosed = false
    let allClosed = true

    const finishSubpath = (): void => {
        if (start && !subpathClosed && !pointsEqual(current, start)) allClosed = false
    }

    while (index < tokens.length) {
        const token = tokens[index]!
        if (/^[a-zA-Z]$/.test(token)) {
            const upperCommand = token.toUpperCase()
            if (upperCommand === 'Z') {
                if (!start) return false
                current = { ...start }
                subpathClosed = true
                command = ''
                index += 1
                continue
            }
            if (upperCommand === 'M' && hasSubpath) finishSubpath()
            command = token
            index += 1
            continue
        }

        if (!command) return false
        const upperCommand = command.toUpperCase()
        const arity = PATH_COMMAND_ARITY[upperCommand]
        if (!arity || index + arity > tokens.length) return false

        const values = tokens.slice(index, index + arity)
        if (values.some(value => /^[a-zA-Z]$/.test(value))) return false
        const numbers = values.map(Number)
        if (numbers.some(value => !Number.isFinite(value))) return false
        const relative = command === command.toLowerCase()

        if (upperCommand === 'M') {
            const next = {
                x: relative ? current.x + numbers[0]! : numbers[0]!,
                y: relative ? current.y + numbers[1]! : numbers[1]!,
            }
            current = next
            start = { ...next }
            hasSubpath = true
            subpathClosed = false
            command = relative ? 'l' : 'L'
        } else if (upperCommand === 'H') {
            current = { x: relative ? current.x + numbers[0]! : numbers[0]!, y: current.y }
        } else if (upperCommand === 'V') {
            current = { x: current.x, y: relative ? current.y + numbers[0]! : numbers[0]! }
        } else {
            const endIndex =
                upperCommand === 'A'
                    ? 5
                    : upperCommand === 'C'
                      ? 4
                      : upperCommand === 'Q' || upperCommand === 'S'
                        ? 2
                        : 0
            const endYIndex = endIndex + 1
            current = {
                x: relative ? current.x + numbers[endIndex]! : numbers[endIndex]!,
                y: relative ? current.y + numbers[endYIndex]! : numbers[endYIndex]!,
            }
        }
        index += arity
    }

    finishSubpath()
    return hasSubpath && allClosed
}

const effectiveAttribute = (element: XmlElement, name: string, fallback: string): string => {
    const value = getAttribute(element, name).trim()
    return value || fallback
}

export const pathRecord = (element: XmlElement): PathRecord => {
    const d = getAttribute(element, 'd')
    const fill = normalizePaint(getAttribute(element, 'fill'))
    const stroke = normalizePaint(getAttribute(element, 'stroke'))
    const strokeWidth = effectiveAttribute(element, 'stroke-width', DEFAULT_STROKE_WIDTH)
    const paintKind =
        stroke && (!fill || fill === 'none')
            ? 'stroke'
            : fill && fill !== 'none'
              ? stroke
                  ? 'mixed'
                  : 'fill'
              : 'stroke'

    return {
        d,
        fill,
        stroke,
        strokeWidth,
        strokeLinecap: effectiveAttribute(element, 'stroke-linecap', 'butt'),
        strokeLinejoin: effectiveAttribute(element, 'stroke-linejoin', 'miter'),
        strokeMiterlimit: effectiveAttribute(element, 'stroke-miterlimit', '4'),
        strokeDasharray: effectiveAttribute(element, 'stroke-dasharray', 'none'),
        strokeDashoffset: effectiveAttribute(element, 'stroke-dashoffset', '0'),
        strokeOpacity: effectiveAttribute(element, 'stroke-opacity', '1'),
        fillRule: effectiveAttribute(element, 'fill-rule', 'nonzero'),
        clipRule: effectiveAttribute(element, 'clip-rule', 'nonzero'),
        fillOpacity: effectiveAttribute(element, 'fill-opacity', '1'),
        vectorEffect: effectiveAttribute(element, 'vector-effect', 'none'),
        paintOrder: effectiveAttribute(element, 'paint-order', 'normal'),
        transform: effectiveAttribute(element, 'transform', 'none'),
        closed: isClosedPathData(d),
        paintKind,
    }
}

export const extractPathRecords = (raw: string): PathRecord[] => {
    const root = parseSource(raw)
    return collectPathElements(root)
        .map(pathRecord)
        .filter(record => record.d.length > 0)
}

const strokePaintKey = (record: PathRecord): string =>
    [
        record.fill,
        record.stroke,
        record.strokeWidth,
        record.strokeLinejoin,
        record.strokeMiterlimit,
        record.strokeDasharray,
        record.strokeDashoffset,
        record.strokeOpacity,
        record.fillRule,
        record.clipRule,
        record.fillOpacity,
        record.vectorEffect,
        record.paintOrder,
        record.transform,
    ].join('\u001f')

const effectiveLinecaps = (records: readonly PathRecord[]): string[] => [
    ...new Set(records.filter(record => !record.closed).map(record => record.strokeLinecap)),
]

const compatibleStrokeRun = (records: readonly PathRecord[]): boolean => {
    if (records.length === 0) return false
    const first = records[0]!
    if (records.some(record => strokePaintKey(record) !== strokePaintKey(first))) return false
    return effectiveLinecaps(records).length <= 1
}

const mergedLinecap = (records: readonly PathRecord[]): string => {
    const openLinecaps = effectiveLinecaps(records)
    return openLinecaps[0] ?? records[0]!.strokeLinecap
}

/**
 * A path's initial relative `m` is relative to the origin of that path. Once
 * several `d` attributes are concatenated, it would instead be relative to
 * the previous subpath's final point. Make only that initial command
 * absolute before joining subpaths.
 */
const asIndependentSubpath = (d: string): string => d.replace(/^\s*m\b/, 'M')

const joinPathData = (records: readonly PathRecord[]): string =>
    records.map(record => asIndependentSubpath(record.d)).join(' ')

const appendStrokeAttributes = (attributes: string[], record: PathRecord): void => {
    attributes.push('stroke="currentColor"')
    attributes.push(`stroke-width="${escapeXml(record.strokeWidth)}"`)
    if (record.strokeLinecap !== 'butt') {
        attributes.push(`stroke-linecap="${escapeXml(record.strokeLinecap)}"`)
    }
    if (record.strokeLinejoin !== 'miter') {
        attributes.push(`stroke-linejoin="${escapeXml(record.strokeLinejoin)}"`)
    }
    if (record.strokeMiterlimit !== '4') {
        attributes.push(`stroke-miterlimit="${escapeXml(record.strokeMiterlimit)}"`)
    }
    if (record.strokeDasharray !== 'none') {
        attributes.push(`stroke-dasharray="${escapeXml(record.strokeDasharray)}"`)
    }
    if (record.strokeDashoffset !== '0') {
        attributes.push(`stroke-dashoffset="${escapeXml(record.strokeDashoffset)}"`)
    }
    if (record.strokeOpacity !== '1') {
        attributes.push(`stroke-opacity="${escapeXml(record.strokeOpacity)}"`)
    }
}

const appendCommonPaintAttributes = (attributes: string[], record: PathRecord): void => {
    if (record.fillOpacity !== '1') {
        attributes.push(`fill-opacity="${escapeXml(record.fillOpacity)}"`)
    }
    if (record.vectorEffect !== 'none') {
        attributes.push(`vector-effect="${escapeXml(record.vectorEffect)}"`)
    }
    if (record.paintOrder !== 'normal') {
        attributes.push(`paint-order="${escapeXml(record.paintOrder)}"`)
    }
    if (record.transform !== 'none') {
        attributes.push(`transform="${escapeXml(record.transform)}"`)
    }
}

const makePath = (
    record: PathRecord,
    d: string,
    mode: NormalizationMode,
    opacity?: string
): string => {
    const attributes = [`d="${escapeXml(d)}"`]
    if (record.paintKind !== 'stroke') {
        attributes.push('fill="currentColor"')
        if (record.fillRule !== 'nonzero') {
            attributes.push(`fill-rule="${escapeXml(record.fillRule)}"`)
        }
        if (record.clipRule !== 'nonzero') {
            attributes.push(`clip-rule="${escapeXml(record.clipRule)}"`)
        }
    }
    if (record.paintKind === 'stroke') {
        attributes.push('fill="none"')
        appendStrokeAttributes(attributes, record)
    }
    if (record.paintKind === 'mixed') {
        appendStrokeAttributes(attributes, record)
    }
    appendCommonPaintAttributes(attributes, record)
    if (opacity) attributes.push(`opacity="${opacity}"`)
    return `<path ${attributes.join(' ')} />`
}

export const layerMarkup = (
    records: readonly PathRecord[],
    mode: NormalizationMode,
    opacity?: string
): LayerResult => {
    if (records.length === 0) throw new Error('No drawable paths remained after conversion.')

    const chunks: { kind: 'stroke' | 'other'; records: PathRecord[] }[] = []
    let styleConflictCount = 0
    for (const record of records) {
        const previous = chunks[chunks.length - 1]
        if (record.paintKind !== 'stroke') {
            chunks.push({ kind: 'other', records: [record] })
            continue
        }

        if (previous?.kind === 'stroke' && compatibleStrokeRun([...previous.records, record])) {
            previous.records.push(record)
        } else {
            if (previous?.kind === 'stroke') styleConflictCount += 1
            chunks.push({ kind: 'stroke', records: [record] })
        }
    }

    const markup = chunks.map(chunk => {
        const first = chunk.records[0]!
        const outputRecord =
            chunk.kind === 'stroke' && chunk.records.length > 1
                ? { ...first, strokeLinecap: mergedLinecap(chunk.records) }
                : first
        return makePath(
            outputRecord,
            chunk.kind === 'stroke' ? joinPathData(chunk.records) : first.d,
            mode,
            opacity
        )
    })
    const strokeChunks = chunks.filter(chunk => chunk.kind === 'stroke')
    const mergedStrokeGroupCount = strokeChunks.filter(chunk => chunk.records.length > 1).length
    const unmergedStrokeCount = strokeChunks.filter(chunk => chunk.records.length === 1).length
    const outputStrokePathCount = strokeChunks.length

    return {
        tone: opacity ? 'accent' : 'primary',
        markup: markup.join('\n'),
        pathCount: markup.length,
        strokePathCount: outputStrokePathCount,
        mergedStrokeGroupCount,
        unmergedStrokeCount,
        styleConflictCount,
        styleConflict: styleConflictCount > 0,
        unmergedFillCount: chunks.filter(chunk => chunk.kind === 'other').length,
    }
}

const rootSvg = (root: XmlElement, body: string): string => {
    const width = getAttribute(root, 'width') || '24'
    const height = getAttribute(root, 'height') || '24'
    const viewBox = getAttribute(root, 'viewBox') || '0 0 24 24'
    return `<svg xmlns="http://www.w3.org/2000/svg" width="${escapeXml(width)}" height="${escapeXml(height)}" viewBox="${escapeXml(viewBox)}" fill="none">${body}</svg>`
}

const normalizeSvg = (raw: string): { svg: string; split: ToneSplit; layers: LayerResult[] } => {
    const root = parseSource(raw)
    const split = splitTones(root)
    if (split.unsupported.length > 0) {
        throw new Error(`Unsupported structure: ${split.unsupported.join('; ')}`)
    }

    const layers: LayerResult[] = []
    const primaryInput = makeToneSvg(root, split.primary)
    const primaryOutput = convertPrimitivesToPaths(primaryInput)
    layers.push(layerMarkup(extractPathRecords(primaryOutput), 'stroke-merged'))

    if (split.accent.length > 0) {
        const accentInput = makeToneSvg(root, split.accent)
        const accentOutput = convertPrimitivesToPaths(accentInput)
        layers.push(layerMarkup(extractPathRecords(accentOutput), 'stroke-merged', '0.5'))
    }

    const orderedLayers = [...layers].reverse().map(layer => layer.markup)
    return { svg: rootSvg(root, orderedLayers.join('\n')), split, layers }
}

const colorize = (svg: string, color: string): string =>
    svg.replaceAll(/#1c274c/gi, color).replaceAll('currentColor', color)

const withStrokeWidth = (svg: string, strokeWidth: number): string =>
    svg.replaceAll(/stroke-width="[^"]*"/g, `stroke-width="${strokeWidth}"`)

const renderSvg = async (
    svg: string,
    color: string,
    strokeWidth?: number
): Promise<RenderedVariant> => {
    const renderedSvg = strokeWidth === undefined ? svg : withStrokeWidth(svg, strokeWidth)
    const rendered = await sharp(Buffer.from(colorize(renderedSvg, color)))
        .resize(CANVAS_SIZE, CANVAS_SIZE, { fit: 'contain' })
        .flatten({ background: RENDER_BACKGROUND })
        .png()
        .toBuffer()
    return { svg, dataUri: `data:image/png;base64,${rendered.toString('base64')}` }
}

const metric = async (before: string, after: string, color: string): Promise<PixelMetric> => {
    const [beforeRaw, afterRaw] = await Promise.all([
        sharp(Buffer.from(colorize(before, color)))
            .resize(CANVAS_SIZE, CANVAS_SIZE, { fit: 'contain' })
            .flatten({ background: RENDER_BACKGROUND })
            .raw()
            .toBuffer(),
        sharp(Buffer.from(colorize(after, color)))
            .resize(CANVAS_SIZE, CANVAS_SIZE, { fit: 'contain' })
            .flatten({ background: RENDER_BACKGROUND })
            .raw()
            .toBuffer(),
    ])

    let changedPixels = 0
    let maxChannelDelta = 0
    let totalDelta = 0
    for (let index = 0; index < beforeRaw.length; index += 1) {
        const delta = Math.abs(beforeRaw[index]! - afterRaw[index]!)
        if (delta > maxChannelDelta) maxChannelDelta = delta
        if (delta > 2) changedPixels += index % 3 === 0 ? 1 : 0
        totalDelta += delta
    }

    const pixelCount = CANVAS_SIZE * CANVAS_SIZE
    return {
        changedPixels,
        changedPercent: (changedPixels / pixelCount) * 100,
        maxChannelDelta,
        meanAbsoluteDelta: totalDelta / beforeRaw.length,
    }
}

const formatPercent = (value: number): string => `${value.toFixed(2)}%`
const htmlEscape = (value: string): string =>
    value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')

const iconOutputHref = (report: IconReport, filename: string): string =>
    `icons/${encodeURIComponent(report.category)}/${encodeURIComponent(report.style)}/${encodeURIComponent(report.name)}/${filename}`

const renderCard = (entry: VisualEntry, colorLabel: string): string => {
    const label = `${entry.report.category}/${entry.report.name} · ${entry.report.style}`
    const image = (title: string, variant: RenderedVariant): string =>
        `<figure><img src="${variant.dataUri}" alt="${htmlEscape(label)} — ${title}"><figcaption>${title}</figcaption></figure>`
    const sourceHref = iconOutputHref(entry.report, 'source.svg')
    const mergedHref = iconOutputHref(entry.report, 'stroke-merged.svg')
    const markup = (title: string, svg: string): string =>
        `<details><summary>${title} markup</summary><pre><code>${htmlEscape(svg)}</code></pre></details>`
    return `<article><h3>${htmlEscape(label)}</h3><p class="condition">${colorLabel}</p><p class="links"><a href="${sourceHref}">Open source.svg</a><a href="${mergedHref}">Open stroke-merged.svg</a></p><div class="samples">${image('Source', entry.source)}${image('Stroke merged', entry.strokeMerged)}</div><div class="markup-grid">${markup('Source', entry.source.svg)}${markup('Stroke merged', entry.strokeMerged.svg)}</div><p class="condition wide-label">Stroke-width control check · 3</p><div class="samples">${image('Source · width 3', entry.sourceWide)}${image('Stroke merged · width 3', entry.strokeMergedWide)}</div></article>`
}

const buildReportHtml = (
    reports: readonly IconReport[],
    visualEntries: readonly VisualEntry[]
): string => {
    const rows = reports
        .map(report => {
            const stroke = report.variants.strokeMerged
            const alpha = report.metrics?.alpha
            const sourceLink = `<a href="${iconOutputHref(report, 'source.svg')}">source</a>`
            const mergedLink = stroke
                ? `<a href="${iconOutputHref(report, 'stroke-merged.svg')}">merged</a>`
                : '—'
            return `<tr><td>${htmlEscape(`${report.category}/${report.name}`)}</td><td>${report.style}</td><td>${report.sourceDrawableCount}</td><td>${report.layerCount}</td><td>${stroke ? stroke.pathCount : '—'}</td><td>${stroke ? stroke.mergedStrokeGroupCount : '—'}</td><td>${stroke ? stroke.unmergedStrokeCount : '—'}</td><td>${stroke ? stroke.styleConflictCount : '—'}</td><td>${alpha ? formatPercent(alpha.changedPercent) : '—'}</td><td>${sourceLink} · ${mergedLink}</td></tr>`
        })
        .join('')

    const visualSections = VISUAL_STYLES.map(style => {
        const entries = visualEntries.filter(entry => entry.report.style === style)
        return `<section><h2>${style} · alpha color</h2><p class="note">Source and transformations rendered with <code>${ALPHA_COLOR}</code>. Differences are intentional candidates for review, not automatic failures.</p>${entries.map(entry => renderCard(entry, `currentColor = ${ALPHA_COLOR}`)).join('')}</section>`
    }).join('')

    return `<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Solar SVG normalization experiment</title>
<style>
:root { color-scheme: light; font: 14px/1.45 system-ui, sans-serif; }
body { margin: 32px; color: #18233f; background: #f6f7fb; }
h1, h2, h3 { margin: 0 0 12px; }
h1 { font-size: 28px; }
h2 { margin-top: 36px; padding-top: 24px; border-top: 1px solid #d9dce5; }
h3 { font-size: 15px; font-weight: 600; }
.note, .condition { color: #5d6578; }
.links { display: flex; gap: 14px; margin: 0 0 12px; font-size: 12px; }
code { padding: 2px 4px; background: #e9ebf2; border-radius: 3px; }
table { width: 100%; border-collapse: collapse; margin: 20px 0; background: white; }
th, td { padding: 8px 10px; text-align: left; border-bottom: 1px solid #e5e7ed; }
th { font-weight: 600; background: #eef0f6; }
article { margin: 18px 0; padding: 16px; background: white; border: 1px solid #e1e4ec; border-radius: 10px; }
.condition { margin: -6px 0 8px; font-size: 12px; }
.samples { display: flex; gap: 22px; flex-wrap: wrap; }
.markup-grid { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px; margin-top: 14px; }
details { min-width: 0; }
summary { cursor: pointer; color: #3b57a3; font-size: 12px; }
pre { max-height: 260px; overflow: auto; padding: 10px; background: #f6f7fb; border: 1px solid #e1e4ec; white-space: pre-wrap; word-break: break-word; }
pre code { padding: 0; background: transparent; font: 11px/1.35 ui-monospace, SFMono-Regular, Menlo, monospace; }
figure { margin: 0; width: 128px; text-align: center; }
figure img { display: block; width: 128px; height: 128px; border: 1px solid #e4e6ed; image-rendering: auto; }
figcaption { margin-top: 6px; color: #5d6578; font-size: 12px; }
</style>
</head>
<body>
<h1>Solar SVG normalization experiment</h1>
<p>Twenty logical icons × six styles. The reference SVGs were read from <code>packages/core/svgs</code>; no source or generated package file was changed.</p>
<p><strong>Stroke merged</strong> uses a local SVG transform: it converts simple primitives to paths and joins only adjacent, same-tone stroke subpaths with a compatible paint and stroke signature. Closed subpaths may use different linecaps because their endpoints are not visible; the output chooses the linecap required by any open subpath. It retains configurable <code>stroke-width</code>; blocked merges are reported instead of changing line joins or other paint properties.</p>
<p>Duotone tones are processed independently. The table's alpha column is the percentage of pixels that changed against the source when rendered with a 50% alpha color; a change can mean that overlap darkening was removed, not that the result is wrong.</p>
<p>No fill-to-outline conversion, compression comparison, or source replacement is part of this experiment. The SVG links and expandable markup below expose the actual input and generated output.</p>
<table><thead><tr><th>Icon</th><th>Style</th><th>Source elements</th><th>Tones</th><th>Candidate paths</th><th>Fused groups</th><th>Kept separate</th><th>Blocked style changes</th><th>Alpha pixel delta</th><th>SVG files</th></tr></thead><tbody>${rows}</tbody></table>
${visualSections}
</body>
</html>`
}

const main = async (): Promise<void> => {
    const svgsDir = getArg('--svgs', defaultSvgsDir)
    const outputDir = getArg('--output', defaultOutputDir)
    const iconsDir = path.join(outputDir, 'icons')
    fs.rmSync(iconsDir, { recursive: true, force: true })
    fs.mkdirSync(iconsDir, { recursive: true })

    const reports: IconReport[] = []
    const visualEntries: VisualEntry[] = []

    for (const [category, name] of EXPERIMENT_ICONS) {
        for (const style of STYLES) {
            const sourcePath = path.join(svgsDir, category, style, `${name}.svg`)
            const source = fs.readFileSync(sourcePath, 'utf8')
            const parsed = parseSource(source)
            const split = splitTones(parsed)
            const report: IconReport = {
                category,
                name,
                style,
                sourcePath,
                sourceDrawableCount: split.drawableCount,
                layerCount: split.accent.length > 0 ? 2 : 1,
                unsupported: split.unsupported,
                variants: {},
            }

            const iconDir = path.join(iconsDir, category, style, name)
            fs.mkdirSync(iconDir, { recursive: true })
            fs.writeFileSync(path.join(iconDir, 'source.svg'), source)

            if (split.unsupported.length > 0) {
                reports.push(report)
                continue
            }

            let normalized: Record<NormalizationMode, { svg: string; layers: LayerResult[] }>
            try {
                normalized = {
                    'stroke-merged': normalizeSvg(source),
                }
            } catch (error) {
                const reason = error instanceof Error ? error.message : String(error)
                report.unsupported.push(`normalization failed: ${reason}`)
                reports.push(report)
                continue
            }

            const reportFor = (mode: NormalizationMode): VariantReport => {
                const result = normalized[mode]
                const layerResults = result.layers
                return {
                    mode,
                    pathCount: (result.svg.match(/<path\b/g) ?? []).length,
                    strokePathCount: layerResults.reduce(
                        (sum, layer) => sum + layer.strokePathCount,
                        0
                    ),
                    mergedStrokeGroupCount: layerResults.reduce(
                        (sum, layer) => sum + layer.mergedStrokeGroupCount,
                        0
                    ),
                    unmergedStrokeCount: layerResults.reduce(
                        (sum, layer) => sum + layer.unmergedStrokeCount,
                        0
                    ),
                    styleConflictCount: layerResults.reduce(
                        (sum, layer) => sum + layer.styleConflictCount,
                        0
                    ),
                    styleConflict: layerResults.some(layer => layer.styleConflict),
                    unmergedFillCount: layerResults.reduce(
                        (sum, layer) => sum + layer.unmergedFillCount,
                        0
                    ),
                }
            }

            report.variants.strokeMerged = reportFor('stroke-merged')
            fs.writeFileSync(
                path.join(iconDir, 'stroke-merged.svg'),
                normalized['stroke-merged'].svg
            )

            report.metrics = {
                opaque: await metric(source, normalized['stroke-merged'].svg, OPAQUE_COLOR),
                alpha: await metric(source, normalized['stroke-merged'].svg, ALPHA_COLOR),
            }

            if (VISUAL_STYLES.includes(style)) {
                visualEntries.push({
                    report,
                    source: await renderSvg(source, ALPHA_COLOR),
                    strokeMerged: await renderSvg(normalized['stroke-merged'].svg, ALPHA_COLOR),
                    sourceWide: await renderSvg(source, ALPHA_COLOR, 3),
                    strokeMergedWide: await renderSvg(
                        normalized['stroke-merged'].svg,
                        ALPHA_COLOR,
                        3
                    ),
                })
            }

            reports.push(report)
        }
    }

    const summary = STYLES.map(style => {
        const items = reports.filter(report => report.style === style)
        const processed = items.filter(item => item.variants.strokeMerged)
        const alphaDeltas = processed.map(item => item.metrics?.alpha.changedPercent ?? 0)
        return {
            style,
            selected: items.length,
            processed: processed.length,
            skipped: items.length - processed.length,
            blockedStyleChanges: processed.reduce(
                (sum, item) => sum + (item.variants.strokeMerged?.styleConflictCount ?? 0),
                0
            ),
            meanAlphaPixelDelta: alphaDeltas.length
                ? alphaDeltas.reduce((sum, value) => sum + value, 0) / alphaDeltas.length
                : 0,
        }
    })

    const reportJson = {
        generatedAt: new Date().toISOString(),
        engine: 'local-svg-path-consolidation',
        svgsDir,
        selectedIcons: EXPERIMENT_ICONS.map(([category, name]) => `${category}/${name}`),
        styles: STYLES,
        summary,
        reports,
    }
    fs.writeFileSync(path.join(outputDir, 'report.json'), JSON.stringify(reportJson, null, 2))
    fs.writeFileSync(path.join(outputDir, 'report.html'), buildReportHtml(reports, visualEntries))

    console.log(`Experiment complete: ${reports.length} SVG variants inspected.`)
    console.log(`Report: ${path.join(outputDir, 'report.html')}`)
    console.log(`Data:   ${path.join(outputDir, 'report.json')}`)
    for (const row of summary) {
        console.log(
            `${row.style.padEnd(12)} processed=${String(row.processed).padStart(2)} skipped=${String(row.skipped).padStart(2)} blocked=${String(row.blockedStyleChanges).padStart(2)} alphaΔ=${row.meanAlphaPixelDelta.toFixed(2)}%`
        )
    }
}

const isExecutedDirectly =
    process.argv[1] !== undefined &&
    import.meta.url === pathToFileURL(path.resolve(process.argv[1])).href

if (isExecutedDirectly) await main()
