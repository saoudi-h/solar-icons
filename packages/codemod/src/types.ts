export type Framework = 'angular' | 'nuxt' | 'react' | 'react-native' | 'solid' | 'svelte' | 'vue'

export interface Diagnostic {
    code: string
    column?: number
    message: string
    file?: string
    line?: number
    severity?: 'warning' | 'error'
}

export interface TransformResult {
    code: string
    changed: boolean
    diagnostics: Diagnostic[]
}

export interface MigrationReport {
    changedFiles: string[]
    diagnostics: Diagnostic[]
    detectedFrameworks: Framework[]
}

export interface MigrationOptions {
    cwd: string
    reactV1Mode?: ReactV1Mode
    vueV1Mode?: ReactV1Mode
    targetVersion?: string
    write?: boolean
}

export type ReactV1Mode = 'dynamic' | 'static'
