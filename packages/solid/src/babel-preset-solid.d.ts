declare module 'babel-preset-solid' {
    import type { TransformOptions } from '@babel/core';
    const preset: unknown & ((context: unknown) => TransformOptions['presets']);
    export default preset;
}
