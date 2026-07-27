export { detectFrameworks } from './detect.js'
export { iconRenames, renameIcon } from './icon-renames.js'
export { transformPackageJson } from './package-json.js'
export { transformNuxt } from './transforms/nuxt.js'
export { transformReactNative } from './transforms/react-native.js'
export { transformReactPerf } from './transforms/react-perf.js'
export { transformReact } from './transforms/react.js'
export { transformVue } from './transforms/vue.js'
export type {
    Diagnostic,
    Framework,
    MigrationOptions,
    MigrationReport,
    ReactV1Mode,
    TransformResult,
} from './types.js'
