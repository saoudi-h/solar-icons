import { createPreset } from 'fumadocs-ui/tailwind-plugin'

/** @type {import('tailwindcss').Config} */
export default {
    darkMode: ['class'],
    content: [
        './components/**/*.{ts,tsx}',
        './app/**/*.{ts,tsx}',
        './content/**/*.{md,mdx}',
        './mdx-components.{ts,tsx}',
        './node_modules/fumadocs-ui/dist/**/*.js',
    ],
    presets: [
        createPreset({
            preset: 'dusk',
        }),
    ],
    plugins: [require('tailwindcss-animate')],
    theme: {
        extend: {
            borderRadius: {
                lg: 'var(--radius)',
                md: 'calc(var(--radius) - 2px)',
                sm: 'calc(var(--radius) - 4px)',
            },
            colors: {
                background: 'hsl(var(--background))',
                foreground: 'hsl(var(--foreground))',
                card: {
                    DEFAULT: 'hsl(var(--card))',
                    foreground: 'hsl(var(--card-foreground))',
                },
                popover: {
                    DEFAULT: 'hsl(var(--popover))',
                    foreground: 'hsl(var(--popover-foreground))',
                },
                primary: {
                    DEFAULT: 'hsl(var(--primary))',
                    foreground: 'hsl(var(--primary-foreground))',
                },
                secondary: {
                    DEFAULT: 'hsl(var(--secondary))',
                    foreground: 'hsl(var(--secondary-foreground))',
                },
                muted: {
                    DEFAULT: 'hsl(var(--muted))',
                    foreground: 'hsl(var(--muted-foreground))',
                },
                accent: {
                    DEFAULT: 'hsl(var(--accent))',
                    foreground: 'hsl(var(--accent-foreground))',
                },
                destructive: {
                    DEFAULT: 'hsl(var(--destructive))',
                    foreground: 'hsl(var(--destructive-foreground))',
                },
                warning: {
                    DEFAULT: 'hsl(var(--warning))',
                    foreground: 'hsl(var(--warning-foreground))',
                },
                default: {
                    950: 'hsl(var(--default-950))',
                    900: 'hsl(var(--default-900))',
                    800: 'hsl(var(--default-800))',
                    700: 'hsl(var(--default-700))',
                    600: 'hsl(var(--default-600))',
                    500: 'hsl(var(--default-500))',
                    400: 'hsl(var(--default-400))',
                    300: 'hsl(var(--default-300))',
                    200: 'hsl(var(--default-200))',
                    100: 'hsl(var(--default-100))',
                    50: 'hsl(var(--default-50))',
                },
                border: 'hsl(var(--border))',
                input: 'hsl(var(--input))',
                ring: 'hsl(var(--ring))',
                chart: {
                    1: 'hsl(var(--chart-1))',
                    2: 'hsl(var(--chart-2))',
                    3: 'hsl(var(--chart-3))',
                    4: 'hsl(var(--chart-4))',
                    5: 'hsl(var(--chart-5))',
                },
            },
            fontFamily: {
                heading: ['var(--font-heading)', 'sans-serif'],
                body: ['var(--font-body)', 'sans-serif'],
                mono: ['var(--font-mono)', 'monospace'],
            },
        },
    },
}
