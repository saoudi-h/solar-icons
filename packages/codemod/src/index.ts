export { detectFrameworks } from './detect.js'
export { iconRenames, renameIcon } from './icon-renames.js'
export { transformPackageJson } from './package-json.js'
export { transformReactPerf } from './transforms/react-perf.js'
export { transformReact } from './transforms/react.js'
export type {
    Diagnostic,
    Framework,
    MigrationOptions,
    MigrationReport,
    ReactV1Mode,
    TransformResult,
} from './types.js'
