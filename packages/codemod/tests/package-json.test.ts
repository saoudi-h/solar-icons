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

    it('upgrades Vue and Nuxt v1 dependencies', () => {
        const result = transformPackageJson(
            '{"devDependencies":{"@solar-icons/nuxt":"~1.2.0","@solar-icons/vue":"1.2.1"}}',
            '2.0.0-beta.2'
        )

        expect(JSON.parse(result.code)).toEqual({
            devDependencies: {
                '@solar-icons/nuxt': '2.0.0-beta.2',
                '@solar-icons/vue': '2.0.0-beta.2',
            },
        })
    })

    it('migrates every framework in the same dependency section as react-perf', () => {
        const result = transformPackageJson(
            JSON.stringify({
                dependencies: {
                    '@solar-icons/react-perf': '2.1.1',
                    '@solar-icons/react': '^1.1.1',
                    '@solar-icons/vue': '1.2.1',
                    '@solar-icons/react-native': '~1.1.0',
                },
                devDependencies: {
                    '@solar-icons/react-perf': '2.1.1',
                    '@solar-icons/svelte': '1.1.1',
                },
            }),
            '2.0.0-beta.2'
        )

        expect(JSON.parse(result.code)).toEqual({
            dependencies: {
                '@solar-icons/react': '2.0.0-beta.2',
                '@solar-icons/vue': '2.0.0-beta.2',
                '@solar-icons/react-native': '2.0.0-beta.2',
            },
            devDependencies: {
                '@solar-icons/react': '2.0.0-beta.2',
                '@solar-icons/svelte': '2.0.0-beta.2',
            },
        })
    })
})
