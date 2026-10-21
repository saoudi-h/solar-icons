import { useEffect, useState } from 'react'

type Theme = 'light' | 'dark'

function readTheme(): Theme {
    if (typeof document === 'undefined') return 'light'
    return document.documentElement.classList.contains('dark') ? 'dark' : 'light'
}

/**
 * Light/dark toggle. The initial theme is applied by the inline script in
 * the root route, this component only reflects and updates it.
 */
export function ThemeToggle() {
    const [theme, setTheme] = useState<Theme>('light')

    useEffect(() => {
        setTheme(readTheme())
    }, [])

    const toggle = () => {
        const next: Theme = theme === 'dark' ? 'light' : 'dark'
        document.documentElement.classList.toggle('dark', next === 'dark')
        document.documentElement.style.colorScheme = next
        localStorage.setItem('theme', next)
        setTheme(next)
    }

    return (
        <button
            type="button"
            onClick={toggle}
            className="rounded-md border border-border px-3 py-1.5 text-sm hover:bg-accent"
            aria-label={`Switch to ${theme === 'dark' ? 'light' : 'dark'} theme`}>
            {theme === 'dark' ? 'Light' : 'Dark'}
        </button>
    )
}
