import type { Metadata } from 'next'

import './globals.css'

export const metadata: Metadata = {
    title: 'Solar icon parity workbench',
    description: 'Visual audit workbench for Solar ↔ Lucide mapping.',
}

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
    return (
        <html lang="fr">
            <body>{children}</body>
        </html>
    )
}
