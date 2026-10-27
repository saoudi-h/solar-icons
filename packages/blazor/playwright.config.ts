import { defineConfig } from '@playwright/test'

const consumers = ['net8.0/STATIC_1', 'net8.0/DYNAMIC_1', 'net10.0/STATIC_1', 'net10.0/DYNAMIC_1']

export default defineConfig({
    testDir: './tests/browser',
    fullyParallel: false,
    workers: 1,
    timeout: 90_000,
    use: { trace: 'retain-on-failure' },
    webServer: [
        ...consumers.map((consumer, index) => ({
            command: `dotnet tools/StaticHost/bin/Release/net10.0/StaticHost.dll --root artifacts/comparison/${consumer}/wwwroot --urls http://127.0.0.1:${5198 + index}`,
            url: `http://127.0.0.1:${5198 + index}`,
            reuseExistingServer: false,
            timeout: 30_000,
        })),
        {
            command:
                'dotnet run --project ../../apps/blazor-app/SolarIcons.Playground -c Release --no-build -- --environment Development --urls http://127.0.0.1:5202',
            url: 'http://127.0.0.1:5202',
            reuseExistingServer: false,
            timeout: 30_000,
        },
    ],
})
