import { defineConfig, devices } from '@playwright/test'

const development = process.env.PLAYWRIGHT_DEV === '1'
const baseURL = development ? 'http://127.0.0.1:4175' : 'http://127.0.0.1:4174'

export default defineConfig({
    testDir: './tests',
    fullyParallel: true,
    forbidOnly: Boolean(process.env.CI),
    retries: process.env.CI ? 1 : 0,
    reporter: 'list',
    // A cold Vite dev server compiles the icon modules on demand; on a CI
    // runner the first hydration can take well over the 5s default.
    expect: { timeout: development ? 20_000 : 5_000 },
    use: {
        baseURL,
        ...devices['Desktop Chrome'],
        viewport: { width: 1440, height: 900 },
        trace: 'retain-on-failure',
    },
    webServer: {
        command: development
            ? 'pnpm dev --host 127.0.0.1 --port 4175'
            : 'pnpm exec wrangler dev --local --ip 127.0.0.1 --port 4174',
        url: baseURL,
        reuseExistingServer: !process.env.CI,
        timeout: 60_000,
    },
})
