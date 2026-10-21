import { defineConfig, devices } from '@playwright/test'

export default defineConfig({
    testDir: './tests',
    fullyParallel: true,
    forbidOnly: Boolean(process.env.CI),
    retries: process.env.CI ? 1 : 0,
    reporter: 'list',
    use: {
        baseURL: 'http://127.0.0.1:4174',
        ...devices['Desktop Chrome'],
        viewport: { width: 1440, height: 900 },
        trace: 'retain-on-failure',
    },
    webServer: {
        command: 'pnpm exec wrangler dev --local --ip 127.0.0.1 --port 4174',
        url: 'http://127.0.0.1:4174',
        reuseExistingServer: !process.env.CI,
        timeout: 30_000,
    },
})
