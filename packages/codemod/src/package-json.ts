import type { TransformResult } from './types.js'

type DependencySection = 'dependencies' | 'devDependencies' | 'peerDependencies'

interface PackageJson {
    dependencies?: Record<string, string>
    devDependencies?: Record<string, string>
    peerDependencies?: Record<string, string>
}

const dependencySections: DependencySection[] = [
    'dependencies',
    'devDependencies',
    'peerDependencies',
]

/** Updates supported Solar Icons v1 dependencies to the requested v2 version. */
export function transformPackageJson(source: string, targetVersion = '^2.0.0'): TransformResult {
    const packageJson = JSON.parse(source) as PackageJson
    let changed = false

    for (const sectionName of dependencySections) {
        const dependencies = packageJson[sectionName]
        if (!dependencies) continue

        if ('@solar-icons/react-perf' in dependencies) {
            delete dependencies['@solar-icons/react-perf']
            dependencies['@solar-icons/react'] = targetVersion
            changed = true
        }

        const reactVersion = dependencies['@solar-icons/react']
        if (
            reactVersion?.startsWith('1.') ||
            reactVersion?.startsWith('^1.') ||
            reactVersion?.startsWith('~1.')
        ) {
            dependencies['@solar-icons/react'] = targetVersion
            changed = true
        }

        const reactNativeVersion = dependencies['@solar-icons/react-native']
        if (
            reactNativeVersion?.startsWith('1.') ||
            reactNativeVersion?.startsWith('^1.') ||
            reactNativeVersion?.startsWith('~1.')
        ) {
            dependencies['@solar-icons/react-native'] = targetVersion
            changed = true
        }

        for (const packageName of [
            '@solar-icons/vue',
            '@solar-icons/nuxt',
            '@solar-icons/svelte',
            '@solar-icons/solid',
            '@solar-icons/angular',
        ]) {
            const version = dependencies[packageName]
            if (
                version?.startsWith('1.') ||
                version?.startsWith('^1.') ||
                version?.startsWith('~1.')
            ) {
                dependencies[packageName] = targetVersion
                changed = true
            }
        }
    }

    return {
        code: changed ? `${JSON.stringify(packageJson, null, 4)}\n` : source,
        changed,
        diagnostics: [],
    }
}
