/**
 * Derives the release intent of the non-npm packages (Blazor, Flutter, Rails)
 * from what was declared for `@solar-icons/static` in its changeset.
 *
 * The declaration is the only input: the version step of `static` gives the
 * bump, and the headline of its changelog entry gives the changelog text.
 * Versions stay independent per package; only the major has to be shared.
 */

export type BumpKind = 'patch' | 'minor'

export type PolyglotPlan =
    | { skip: true; reason: string }
    | { skip: false; kind: BumpKind; summary: string }

const STABLE = /^(\d+)\.(\d+)\.(\d+)$/

const parseStable = (version: string): [number, number, number] => {
    const match = STABLE.exec(version)
    if (!match) throw new Error(`Not a stable semver version: ${version}`)
    return [Number(match[1]), Number(match[2]), Number(match[3])]
}

export const majorOf = (version: string): number => parseStable(version)[0]

/**
 * The bump declared by the step from `before` to `after`.
 * A major step is a human decision and is refused, as is a downgrade.
 */
export const kindBetween = (before: string, after: string): BumpKind | 'none' => {
    const [bMajor, bMinor, bPatch] = parseStable(before)
    const [aMajor, aMinor, aPatch] = parseStable(after)
    if (aMajor !== bMajor) {
        throw new Error(
            `@solar-icons/static goes from ${before} to ${after}: a major step needs a coordinated release decision, pass the bump by hand with "pnpm polyglot:bump".`
        )
    }
    if (aMinor > bMinor) return 'minor'
    if (aMinor < bMinor || (aMinor === bMinor && aPatch < bPatch)) {
        throw new Error(`@solar-icons/static goes backwards: ${before} to ${after}`)
    }
    return aPatch > bPatch ? 'patch' : 'none'
}

/** Every published package of the family must stay on the same major. */
export const assertMajorsAligned = (
    staticVersion: string,
    packages: Record<string, string>
): void => {
    const expected = majorOf(staticVersion)
    const off = Object.entries(packages).filter(([, version]) => majorOf(version) !== expected)
    if (off.length > 0) {
        const list = off.map(([name, version]) => `${name} ${version}`).join(', ')
        throw new Error(
            `Major mismatch: @solar-icons/static ${staticVersion} but ${list}. Align the majors by hand.`
        )
    }
}

const CREDIT =
    /^(?:\[#\d+\]\([^)]*\) )?(?:\[`[0-9a-f]{7,}`\]\([^)]*\) )?(?:Thanks \[@[^\]]+\]\([^)]*\)! )?(?:- )?/

/**
 * One line of changelog text for the entry of `version`: the headline of every
 * top-level bullet (links and credit removed, trailing colon dropped),
 * joined with "; ". Nested lists and "Updated dependencies" are left out.
 */
export const summaryFromStaticChangelog = (changelog: string, version: string): string => {
    const headlines: string[] = []
    let inSection = false
    let inUpdatedDeps = false

    for (const line of changelog.split(/\r?\n/)) {
        const heading = /^## (\S+)\s*$/.exec(line)
        if (heading) {
            inSection = heading[1] === version
            inUpdatedDeps = false
            continue
        }
        if (!inSection || line.startsWith('#')) continue
        if (line.startsWith('- ')) {
            const text = line.slice(2).replace(CREDIT, '').trim()
            inUpdatedDeps = text.startsWith('Updated dependencies')
            if (!inUpdatedDeps && text) headlines.push(text.replace(/:\s*$/, ''))
        }
    }
    return headlines.join('; ')
}

export interface PlanInput {
    before: string
    after: string
    changelog: string
    packages: Record<string, string>
}

export const planFromStatic = ({ before, after, changelog, packages }: PlanInput): PolyglotPlan => {
    if (before === after) {
        return { skip: true, reason: `@solar-icons/static stays at ${after}` }
    }
    if (before.includes('-') || after.includes('-')) {
        return {
            skip: true,
            reason: `@solar-icons/static ${before} -> ${after} involves a prerelease: nothing derived`,
        }
    }
    const kind = kindBetween(before, after)
    if (kind === 'none') return { skip: true, reason: `@solar-icons/static stays at ${after}` }

    assertMajorsAligned(after, packages)

    const summary = summaryFromStaticChangelog(changelog, after)
    if (!summary) {
        throw new Error(
            `No changelog text found for @solar-icons/static ${after}: pass it by hand with "pnpm polyglot:bump ${kind} \\"<summary>\\"".`
        )
    }
    return { skip: false, kind, summary }
}
