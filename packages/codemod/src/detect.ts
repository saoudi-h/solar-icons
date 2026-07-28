import { readFile } from 'node:fs/promises'
import { join } from 'node:path'

import type { Framework } from './types.js'

const dependencyFrameworks: Record<string, Framework> = {
    '@angular/core': 'angular',
    '@nuxt/kit': 'nuxt',
    nuxt: 'nuxt',
    react: 'react',
    'react-native': 'react-native',
    'solid-js': 'solid',
    svelte: 'svelte',
    vue: 'vue',
}

export async function detectFrameworks(cwd: string): Promise<Framework[]> {
    const packageJson = JSON.parse(await readFile(join(cwd, 'package.json'), 'utf8')) as {
        dependencies?: Record<string, string>
        devDependencies?: Record<string, string>
        peerDependencies?: Record<string, string>
    }
    const dependencies = {
        ...packageJson.dependencies,
        ...packageJson.devDependencies,
        ...packageJson.peerDependencies,
    }

    return Object.entries(dependencyFrameworks)
        .filter(([dependency]) => dependency in dependencies)
        .map(([, framework]) => framework)
}
