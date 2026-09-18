/**
 * Validate the visual contract of the six exported SVG styles.
 *
 * This check inspects the SVG paint model rather than relying on regular
 * expressions. Presentation attributes, inline styles, inherited paint,
 * grouped opacity, and stroke caps are resolved before a rule is evaluated.
 */

import fs from 'node:fs'
import path from 'node:path'
import { pathToFileURL } from 'node:url'

import xmldom from '@xmldom/xmldom'
import pc from 'picocolors'

const { DOMParser } = xmldom

export type SvgStyle = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'

export type SvgQualitySeverity = 'error' | 'warning'

export type SvgQualityIssue = {
    rule: string
    message: string
    element: string
    severity: SvgQualitySeverity
}

type XmlAttribute = {
    name: string
    value: string
}

type XmlElement = {
    nodeType: number
    tagName: string
    attributes: { length: number; [index: number]: XmlAttribute }
    childNodes: { length: number; [index: number]: XmlElement }
    getAttribute(name: string): string
}

type PaintState = {
    fill: string
    stroke: string
    strokeLinecap: string
    opacity: number | null
    rendered: boolean
    inDefinition: boolean
}

const __dirname = import.meta.dirname
const PACKAGE_ROOT = path.resolve(__dirname, '../..')
const SVGS_PATH = path.resolve(__dirname, '../../svgs')
const REPORTS_PATH = path.join(PACKAGE_ROOT, 'reports')
const MARKDOWN_REPORT_PATH = path.join(REPORTS_PATH, 'svg-quality-report.md')
const JSON_REPORT_PATH = path.join(REPORTS_PATH, 'svg-quality-report.json')
const OPACITY_TOLERANCE = 1e-9

const DRAWABLE_TAGS = new Set(['path', 'circle', 'ellipse', 'rect', 'line', 'polyline', 'polygon'])

const LINE_STYLES = new Set<SvgStyle>(['Broken', 'LineDuotone', 'Linear'])
const DUOTONE_STYLES = new Set<SvgStyle>(['LineDuotone', 'BoldDuotone'])
const BOLD_STYLES = new Set<SvgStyle>(['Bold', 'BoldDuotone'])
const OUTLINE_STYLE: SvgStyle = 'Outline'
const DEFINITION_TAGS = new Set(['defs', 'clippath', 'mask', 'pattern', 'symbol'])
const SUPPORTED_STYLES = new Set<SvgStyle>([
    'Broken',
    'LineDuotone',
    'Linear',
    'Outline',
    'Bold',
    'BoldDuotone',
])

const normalize = (value: string): string => value.trim().toLowerCase()

const getStyleMap = (element: XmlElement): Record<string, string> => {
    const style = element.getAttribute('style')
    if (!style) return {}

    const values: Record<string, string> = {}
    for (const declaration of style.split(';')) {
        const separator = declaration.indexOf(':')
        if (separator < 0) continue
        const name = normalize(declaration.slice(0, separator))
        const value = declaration.slice(separator + 1).trim()
        if (name && value) values[name] = value
    }
    return values
}

const getLocalAttribute = (element: XmlElement, name: string): string => {
    const styled = getStyleMap(element)[name]
    if (styled !== undefined) return styled
    return element.getAttribute(name)?.trim() ?? ''
}

const inheritedPaint = (local: string, parent: string): string => {
    const normalized = normalize(local)
    if (!normalized || normalized === 'inherit') return parent
    return normalized
}

const parseOpacity = (value: string): number | null => {
    const normalized = normalize(value)
    if (!normalized || normalized === 'inherit') return null

    const numeric = normalized.endsWith('%')
        ? Number(normalized.slice(0, -1)) / 100
        : Number(normalized)

    return Number.isFinite(numeric) ? numeric : null
}

const resolveOpacity = (local: string, parent: number | null): number | null => {
    const normalized = normalize(local)
    if (!normalized || normalized === 'inherit') return parent

    const value = parseOpacity(normalized)
    if (value === null || parent === null) return null
    return parent * value
}

const isNone = (value: string): boolean => normalize(value) === 'none'
const isAllowedColor = (value: string): boolean => normalize(value) === '#1c274c'

type RuleDescription = {
    title: string
    expected: string
    action: string
}

const RULE_DESCRIPTIONS: Readonly<Record<string, RuleDescription>> = {
    'bold-style-paint': {
        title: 'Bold style contains visible strokes',
        expected: 'Bold and BoldDuotone use filled surfaces without visible strokes.',
        action: 'In Figma, convert the object to a filled surface and remove its stroke.',
    },
    'color-not-allowed': {
        title: 'Non-canonical color',
        expected:
            'Every visible painted SVG value is #1C274C. The paint keyword none and colors inside non-rendered clipping definitions are allowed.',
        action: 'Replace the reported visible color in Figma with #1C274C.',
    },
    'duotone-missing-accent': {
        title: 'Duotone has no 50% tone',
        expected: 'A duotone contains at least one opaque element and one element at 50% opacity.',
        action: 'Optional follow-up: add or assign a 50% tone in Figma.',
    },
    'duotone-missing-opaque': {
        title: 'Duotone has no opaque tone',
        expected: 'A duotone contains at least one opaque element and one element at 50% opacity.',
        action: 'Optional follow-up: add or assign an opaque tone in Figma.',
    },
    'duotone-opacity': {
        title: 'Duotone uses an unsupported opacity',
        expected: 'Duotone painted elements use only 100% or 50% effective opacity.',
        action: 'Change the reported opacity in Figma to 100% or 50%.',
    },
    'invalid-svg': {
        title: 'Invalid SVG',
        expected: 'The file must be valid SVG/XML.',
        action: 'Re-export the icon from Figma and inspect the reported file.',
    },
    'line-style-fill': {
        title: 'Line style contains a visible fill',
        expected: 'Linear, Broken and LineDuotone use stroke-only geometry.',
        action: 'In Figma, remove the visible fill and keep the geometry as a stroke.',
    },
    'line-style-stroke-cap': {
        title: 'Line style has a non-round cap',
        expected: 'Every visible stroke in Linear, Broken and LineDuotone uses round caps.',
        action: 'Set the path end points to Round in Figma.',
    },
    'outline-style-paint': {
        title: 'Outline is not a single filled path',
        expected: 'Outline uses one filled path and no visible stroke.',
        action: 'Flatten the Outline icon to one filled path in Figma.',
    },
    'opacity-invalid': {
        title: 'Invalid opacity value',
        expected: 'Opacity values are finite numbers or percentages.',
        action: 'Replace the reported opacity with a valid value in Figma.',
    },
    'single-tone-opacity': {
        title: 'Single-tone style uses transparency',
        expected: 'Non-duotone styles use fully opaque painted geometry.',
        action: 'Remove the transparency in Figma.',
    },
}

const isAllowedDuotoneOpacity = (value: number): boolean =>
    Math.abs(value - 1) < OPACITY_TOLERANCE || Math.abs(value - 0.5) < OPACITY_TOLERANCE

const isOpaque = (value: number): boolean => Math.abs(value - 1) < OPACITY_TOLERANCE
const isAccent = (value: number): boolean => Math.abs(value - 0.5) < OPACITY_TOLERANCE

const getChildElements = (element: XmlElement): XmlElement[] => {
    const children: XmlElement[] = []
    for (let index = 0; index < element.childNodes.length; index += 1) {
        const child = element.childNodes[index]
        if (child && child.nodeType === 1) children.push(child)
    }
    return children
}

const elementLabel = (element: XmlElement): string => {
    const id = element.getAttribute('id')?.trim() ?? ''
    return id ? '<' + element.tagName + '#' + id + '>' : '<' + element.tagName + '>'
}

const addIssue = (
    issues: SvgQualityIssue[],
    rule: string,
    message: string,
    element: XmlElement,
    severity: SvgQualitySeverity = 'error'
): void => {
    issues.push({ rule, message, element: elementLabel(element), severity })
}

export const parseSvg = (raw: string): XmlElement => {
    const document = new DOMParser().parseFromString(raw, 'image/svg+xml')
    const root = document.documentElement as unknown as XmlElement
    if (!root || normalize(root.tagName) === 'parsererror') {
        throw new Error('Could not parse SVG XML.')
    }
    return root
}

export const analyzeSvg = (raw: string, style: SvgStyle): SvgQualityIssue[] => {
    const root = parseSvg(raw)
    const issues: SvgQualityIssue[] = []
    const paintedOpacities: number[] = []

    const visit = (element: XmlElement, parent: PaintState): void => {
        const tagName = normalize(element.tagName)
        const localFill = getLocalAttribute(element, 'fill')
        const localStroke = getLocalAttribute(element, 'stroke')
        const localLinecap = getLocalAttribute(element, 'stroke-linecap')
        const localOpacity = getLocalAttribute(element, 'opacity')
        const localDisplay = normalize(getLocalAttribute(element, 'display'))
        const localVisibility = normalize(getLocalAttribute(element, 'visibility'))
        const inDefinition = parent.inDefinition || DEFINITION_TAGS.has(tagName)
        const rendered =
            parent.rendered &&
            localDisplay !== 'none' &&
            localVisibility !== 'hidden' &&
            !inDefinition
        const state: PaintState = {
            fill: inheritedPaint(localFill, parent.fill),
            stroke: inheritedPaint(localStroke, parent.stroke),
            strokeLinecap: inheritedPaint(localLinecap, parent.strokeLinecap),
            opacity: resolveOpacity(localOpacity, parent.opacity),
            rendered,
            inDefinition,
        }

        const localOpacityIsInvalid =
            localOpacity.length > 0 &&
            normalize(localOpacity) !== 'inherit' &&
            parseOpacity(localOpacity) === null

        if (rendered) {
            for (const [paintName, paintValue] of [
                ['fill', localFill],
                ['stroke', localStroke],
            ] as const) {
                if (paintValue && !isNone(paintValue) && normalize(paintValue) !== 'inherit') {
                    if (!isAllowedColor(paintValue)) {
                        addIssue(
                            issues,
                            'color-not-allowed',
                            paintName + ' uses "' + paintValue + '"; expected "#1C274C".',
                            element
                        )
                    }
                }
            }
        }

        if (rendered && DRAWABLE_TAGS.has(tagName)) {
            const hasFill = !isNone(state.fill)
            const hasStroke = !isNone(state.stroke)
            const hasPaint = hasFill || hasStroke

            if (localOpacityIsInvalid) {
                addIssue(
                    issues,
                    'opacity-invalid',
                    'Opacity "' + localOpacity + '" is not a finite number or percentage.',
                    element
                )
            }

            if (hasPaint && state.opacity !== null) {
                paintedOpacities.push(state.opacity)
            }

            if (LINE_STYLES.has(style)) {
                if (hasFill) {
                    addIssue(
                        issues,
                        'line-style-fill',
                        'Line style has a visible fill "' +
                            state.fill +
                            '"; expected stroke-only geometry.',
                        element
                    )
                }
                if (hasStroke && normalize(state.strokeLinecap) !== 'round') {
                    addIssue(
                        issues,
                        'line-style-stroke-cap',
                        'Stroked geometry uses "' +
                            state.strokeLinecap +
                            '" caps; expected "round".',
                        element
                    )
                }
            }

            if (BOLD_STYLES.has(style) && hasPaint && (!hasFill || hasStroke)) {
                addIssue(
                    issues,
                    'bold-style-paint',
                    'Bold style must use filled surfaces without visible strokes.',
                    element
                )
            }

            if (style === OUTLINE_STYLE && hasPaint && (!hasFill || hasStroke)) {
                addIssue(
                    issues,
                    'outline-style-paint',
                    'Outline style must use one filled path without visible strokes.',
                    element
                )
            }

            if (DUOTONE_STYLES.has(style) && state.opacity !== null) {
                if (!isAllowedDuotoneOpacity(state.opacity)) {
                    addIssue(
                        issues,
                        'duotone-opacity',
                        'Duotone geometry has effective opacity ' +
                            state.opacity +
                            '; only 1 or 0.5 is allowed.',
                        element
                    )
                }
            } else if (
                !DUOTONE_STYLES.has(style) &&
                state.opacity !== null &&
                !isOpaque(state.opacity)
            ) {
                addIssue(
                    issues,
                    'single-tone-opacity',
                    'Non-duotone geometry has effective opacity ' + state.opacity + '; expected 1.',
                    element
                )
            }
        }

        for (const child of getChildElements(element)) visit(child, state)
    }

    visit(root, {
        fill: 'black',
        stroke: 'none',
        strokeLinecap: 'butt',
        opacity: 1,
        rendered: true,
        inDefinition: false,
    })

    // Outline structure is intentionally not constrained here. Figma may export
    // a single visual union as several SVG drawables, and that is a valid
    // representation as long as the paint model remains fill-only.

    if (DUOTONE_STYLES.has(style)) {
        if (!paintedOpacities.some(isOpaque)) {
            issues.push({
                rule: 'duotone-missing-opaque',
                message: 'Duotone icon has no painted geometry at opacity 1.',
                element: '<svg>',
                severity: 'warning',
            })
        }
        if (!paintedOpacities.some(isAccent)) {
            issues.push({
                rule: 'duotone-missing-accent',
                message: 'Duotone icon has no painted geometry at opacity 0.5.',
                element: '<svg>',
                severity: 'warning',
            })
        }
    }

    return issues
}

const isSvgStyle = (value: string): value is SvgStyle => SUPPORTED_STYLES.has(value as SvgStyle)

const collectSvgFiles = (directory: string): string[] => {
    const files: string[] = []
    const visit = (current: string): void => {
        for (const entry of fs.readdirSync(current, { withFileTypes: true })) {
            const absolute = path.join(current, entry.name)
            if (entry.isDirectory()) {
                visit(absolute)
            } else if (entry.isFile() && entry.name.endsWith('.svg')) {
                files.push(absolute)
            }
        }
    }
    visit(directory)
    return files.sort()
}

export type SvgQualityReport = {
    checkedFiles: number
    issueCount: number
    errorCount: number
    warningCount: number
    filesWithIssues: number
    ruleCounts: Readonly<Record<string, number>>
    issues: ReadonlyArray<{ file: string; issue: SvgQualityIssue }>
}

export const checkSvgQuality = (svgsPath = SVGS_PATH): SvgQualityReport => {
    const issues: Array<{ file: string; issue: SvgQualityIssue }> = []
    const files = collectSvgFiles(svgsPath)

    for (const file of files) {
        const relative = path.relative(svgsPath, file).split(path.sep)
        const styleName = relative.at(-2) ?? ''
        if (!isSvgStyle(styleName)) continue

        try {
            const raw = fs.readFileSync(file, 'utf8')
            for (const current of analyzeSvg(raw, styleName)) {
                issues.push({
                    file: path.relative(svgsPath, file).split(path.sep).join('/'),
                    issue: current,
                })
            }
        } catch (error) {
            issues.push({
                file: path.relative(svgsPath, file).split(path.sep).join('/'),
                issue: {
                    rule: 'invalid-svg',
                    message: error instanceof Error ? error.message : String(error),
                    element: '<svg>',
                    severity: 'error',
                },
            })
        }
    }

    const ruleCounts: Record<string, number> = {}
    const filesWithIssues = new Set<string>()
    let errorCount = 0
    let warningCount = 0
    for (const entry of issues) {
        ruleCounts[entry.issue.rule] = (ruleCounts[entry.issue.rule] ?? 0) + 1
        filesWithIssues.add(entry.file)
        if (entry.issue.severity === 'error') errorCount += 1
        else warningCount += 1
    }

    return {
        checkedFiles: files.length,
        issueCount: issues.length,
        errorCount,
        warningCount,
        filesWithIssues: filesWithIssues.size,
        ruleCounts,
        issues,
    }
}

const markdownText = (value: string): string =>
    value.replaceAll('`', '\\`').replaceAll('|', '\\|').replaceAll('\n', ' ')

const getRuleDescription = (rule: string): RuleDescription =>
    RULE_DESCRIPTIONS[rule] ?? {
        title: rule,
        expected: 'The SVG must satisfy the project quality contract.',
        action: 'Inspect the reported SVG and correct it in Figma.',
    }

const getStyleFromFile = (file: string): string => file.split('/').at(-2) ?? 'Unknown'

export const buildSvgQualityMarkdown = (
    report: SvgQualityReport,
    generatedAt = new Date().toISOString()
): string => {
    const byRule = new Map<string, Array<{ file: string; issue: SvgQualityIssue }>>()
    const byStyle: Record<string, { errors: number; warnings: number }> = {}

    for (const style of SUPPORTED_STYLES) byStyle[style] = { errors: 0, warnings: 0 }

    for (const entry of report.issues) {
        const ruleEntries = byRule.get(entry.issue.rule) ?? []
        ruleEntries.push(entry)
        byRule.set(entry.issue.rule, ruleEntries)

        const style = getStyleFromFile(entry.file)
        byStyle[style] ??= { errors: 0, warnings: 0 }
        byStyle[style][entry.issue.severity === 'error' ? 'errors' : 'warnings'] += 1
    }

    const lines = [
        '# SVG quality report',
        '',
        `Generated: ${generatedAt}`,
        `Status: ${report.errorCount > 0 ? 'FAILED' : report.warningCount > 0 ? 'PASSED WITH WARNINGS' : 'PASSED'}`,
        '',
        '## Summary',
        '',
        `- SVG files checked: **${report.checkedFiles}**`,
        `- Files with findings: **${report.filesWithIssues}**`,
        `- Errors: **${report.errorCount}**`,
        `- Warnings: **${report.warningCount}**`,
        '',
        'Errors block a normal ZIP refresh. Warnings are reported for follow-up but do not block it.',
        '',
        '## Findings by style',
        '',
        '| Style | Errors | Warnings |',
        '| --- | ---: | ---: |',
    ]

    for (const style of [...SUPPORTED_STYLES].sort()) {
        const counts = byStyle[style]!
        lines.push(`| ${style} | ${counts.errors} | ${counts.warnings} |`)
    }

    if (byRule.size === 0) {
        lines.push('', 'No findings.')
        return lines.join('\n') + '\n'
    }

    lines.push('', '## Findings by rule', '')

    for (const rule of [...byRule.keys()].sort()) {
        const entries = byRule
            .get(rule)!
            .sort((first, second) => first.file.localeCompare(second.file))
        const description = getRuleDescription(rule)
        const severities = [...new Set(entries.map(entry => entry.issue.severity))].sort()

        lines.push(
            `### ${description.title} — ${entries.length} finding${entries.length === 1 ? '' : 's'} (${severities.join(' / ')})`,
            '',
            `- Rule: \`${rule}\``,
            `- Expected: ${description.expected}`,
            `- Action: ${description.action}`,
            '',
            'Affected files:',
            ''
        )

        for (const entry of entries) {
            const href = '../svgs/' + entry.file.split('/').map(encodeURIComponent).join('/')
            lines.push(
                `- [\`${markdownText(entry.file)}\`](${href}) — ${entry.issue.severity} — \`${markdownText(entry.issue.element)}\` — ${markdownText(entry.issue.message)}`
            )
        }

        lines.push('')
    }

    return lines.join('\n')
}

const writeQualityReports = (
    report: SvgQualityReport
): { markdownPath: string; jsonPath: string } => {
    const generatedAt = new Date().toISOString()
    fs.mkdirSync(REPORTS_PATH, { recursive: true })
    fs.writeFileSync(
        JSON_REPORT_PATH,
        JSON.stringify({ generatedAt, ...report }, null, 2) + '\n',
        'utf8'
    )
    fs.writeFileSync(MARKDOWN_REPORT_PATH, buildSvgQualityMarkdown(report, generatedAt), 'utf8')
    return { markdownPath: MARKDOWN_REPORT_PATH, jsonPath: JSON_REPORT_PATH }
}

const main = (): void => {
    console.log(pc.blue('Checking SVG visual contracts...'))

    if (!fs.existsSync(SVGS_PATH)) {
        console.error(pc.red('Error: Directory ' + SVGS_PATH + ' does not exist.'))
        process.exit(1)
    }

    const report = checkSvgQuality()
    const reportPaths = writeQualityReports(report)
    console.log(
        pc.blue(
            'Checked ' +
                report.checkedFiles +
                ' SVG files; ' +
                report.filesWithIssues +
                ' file(s) with ' +
                report.errorCount +
                ' error(s) and ' +
                report.warningCount +
                ' warning(s).'
        )
    )
    console.log('Report: ' + reportPaths.markdownPath)
    console.log('Data:   ' + reportPaths.jsonPath)

    if (report.issueCount > 0) {
        console.error(
            report.errorCount > 0
                ? pc.red('SVG quality check found errors and warnings:')
                : pc.yellow('SVG quality check found warnings:')
        )
        for (const [rule, count] of Object.entries(report.ruleCounts).sort()) {
            const severity =
                report.issues.find(entry => entry.issue.rule === rule)?.issue.severity ?? 'error'
            const output = '- ' + rule + ' [' + severity + ']: ' + count
            console.error(severity === 'warning' ? pc.yellow(output) : pc.red(output))
        }
        console.error('See the complete Markdown report for every affected file.')
        if (report.errorCount > 0) process.exit(1)
        console.log(pc.yellow('SVG quality check passed with warnings.'))
        return
    }

    console.log(pc.green('SVG visual contracts passed.'))
}

const isExecutedDirectly =
    process.argv[1] !== undefined &&
    import.meta.url === pathToFileURL(path.resolve(process.argv[1])).href

if (isExecutedDirectly) main()
