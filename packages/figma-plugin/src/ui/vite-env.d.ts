/// <reference types="vite/client" />

declare global {
    interface Window {
        __SOLAR_PACKAGE_VERSION__: string
    }
}

export {}
