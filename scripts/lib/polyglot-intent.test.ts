import assert from 'node:assert/strict'
import { describe, it } from 'node:test'

import {
    assertMajorsAligned,
    kindBetween,
    planFromStatic,
    summaryFromStaticChangelog,
} from './polyglot-intent'

const CHANGELOG = `# @solar-icons/static

## 2.5.0

### Minor Changes

- [#711](https://github.com/o/r/pull/711) [\`c81ade3\`](https://github.com/o/r/commit/c81ade37c39319174163d213091f68e298e0cb61) Thanks [@someone](https://github.com/someone)! - Expand catalogue to 1,517 icon families (9,102 SVGs) and deliver harmonized artwork:

  - Add 38 community icon families across all 6 styles:
    - Design: \`blend\`, \`brush-cross-pen\`.
  - Harmonize \`waterdrop\` geometry.

## 2.4.1

### Patch Changes

- [#700](https://github.com/o/r/pull/700) [\`aaaaaaa\`](https://github.com/o/r/commit/aaaaaaa) Thanks [@someone](https://github.com/someone)! - Fix the sun icon.

- [#701](https://github.com/o/r/pull/701) [\`bbbbbbb\`](https://github.com/o/r/commit/bbbbbbb) Thanks [@someone](https://github.com/someone)! - Fix the moon icon.

- Updated dependencies [\`ccccccc\`]:
  - @solar-icons/core@1.2.3

## 2.3.0

- Add 38 community icon families from contributor Grand Magus and align waterdrop
`

const PACKAGES = { blazor: '2.3.0', flutter: '2.3.0', rails: '2.3.0' }

describe('kindBetween', () => {
    it('reads the declared step', () => {
        assert.equal(kindBetween('2.4.0', '2.5.0'), 'minor')
        assert.equal(kindBetween('2.4.0', '2.4.1'), 'patch')
        assert.equal(kindBetween('2.4.0', '2.4.0'), 'none')
    })
    it('treats a minor step as minor whatever the patch', () => {
        assert.equal(kindBetween('2.3.9', '2.4.0'), 'minor')
    })
    it('refuses a major step and a downgrade', () => {
        assert.throws(() => kindBetween('2.9.0', '3.0.0'), /major step/)
        assert.throws(() => kindBetween('2.4.0', '2.3.0'), /backwards/)
        assert.throws(() => kindBetween('2.4.1', '2.4.0'), /backwards/)
    })
})

describe('assertMajorsAligned', () => {
    it('accepts independent minor and patch numbers', () => {
        assert.doesNotThrow(() => assertMajorsAligned('2.5.0', { blazor: '2.0.4', flutter: '2.9.1' }))
    })
    it('names the packages on another major', () => {
        assert.throws(
            () => assertMajorsAligned('2.5.0', { blazor: '1.9.0', flutter: '2.0.0' }),
            /blazor 1\.9\.0/
        )
    })
})

describe('summaryFromStaticChangelog', () => {
    it('keeps the headline, without links, credit, trailing colon or nested lists', () => {
        assert.equal(
            summaryFromStaticChangelog(CHANGELOG, '2.5.0'),
            'Expand catalogue to 1,517 icon families (9,102 SVGs) and deliver harmonized artwork'
        )
    })
    it('joins several entries and drops "Updated dependencies"', () => {
        assert.equal(
            summaryFromStaticChangelog(CHANGELOG, '2.4.1'),
            'Fix the sun icon.; Fix the moon icon.'
        )
    })
    it('reads entries written without links', () => {
        assert.equal(
            summaryFromStaticChangelog(CHANGELOG, '2.3.0'),
            'Add 38 community icon families from contributor Grand Magus and align waterdrop'
        )
    })
    it('returns nothing for an unknown version', () => {
        assert.equal(summaryFromStaticChangelog(CHANGELOG, '9.9.9'), '')
    })
})

describe('planFromStatic', () => {
    const base = { changelog: CHANGELOG, packages: PACKAGES }

    it('derives a minor with the declared text', () => {
        const plan = planFromStatic({ ...base, before: '2.4.1', after: '2.5.0' })
        assert.deepEqual(plan, {
            skip: false,
            kind: 'minor',
            summary: 'Expand catalogue to 1,517 icon families (9,102 SVGs) and deliver harmonized artwork',
        })
    })
    it('does nothing when static did not change', () => {
        const plan = planFromStatic({ ...base, before: '2.5.0', after: '2.5.0' })
        assert.equal(plan.skip, true)
    })
    it('skips prereleases instead of guessing', () => {
        for (const [before, after] of [
            ['2.5.0', '3.0.0-beta.1'],
            ['3.0.0-beta.1', '3.0.0-beta.2'],
            ['3.0.0-beta.2', '3.0.0'],
        ] as const) {
            assert.equal(planFromStatic({ ...base, before, after }).skip, true, `${before} -> ${after}`)
        }
    })
    it('fails on a major step, a major mismatch or a missing text', () => {
        assert.throws(() => planFromStatic({ ...base, before: '2.5.0', after: '3.0.0' }), /major step/)
        assert.throws(
            () =>
                planFromStatic({
                    ...base,
                    packages: { ...PACKAGES, rails: '1.0.0' },
                    before: '2.4.1',
                    after: '2.5.0',
                }),
            /rails 1\.0\.0/
        )
        assert.throws(
            () => planFromStatic({ ...base, changelog: '# x\n', before: '2.4.1', after: '2.5.0' }),
            /No changelog text/
        )
    })
})
