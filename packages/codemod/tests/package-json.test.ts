import { describe, expect, it } from 'vitest'

import { transformPackageJson } from '../src/package-json.js'

describe('transformPackageJson', () => {
    it('replaces react-perf with React v2', () => {
        const result = transformPackageJson(
            '{"dependencies":{"@solar-icons/react-perf":"2.1.1"}}',
            '2.0.0-beta.2'
        )

        expect(JSON.parse(result.code)).toEqual({
            dependencies: { '@solar-icons/react': '2.0.0-beta.2' },
        })
    })

    it('upgrades React v1 without changing unrelated dependencies', () => {
        const result = transformPackageJson(
            '{"dependencies":{"@solar-icons/react":"^1.1.1","react":"19.2.7"}}'
        )

        expect(JSON.parse(result.code)).toEqual({
            dependencies: { '@solar-icons/react': '^2.0.0', react: '19.2.7' },
        })
    })
})
