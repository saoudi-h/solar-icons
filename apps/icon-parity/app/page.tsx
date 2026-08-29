import Link from 'next/link'

export default function HomePage() {
    return (
        <main className="min-h-screen bg-[#111110] px-6 py-12 text-[#e9e7df]">
            <div className="mx-auto max-w-4xl">
                <p className="text-xs font-semibold tracking-[0.2em] text-amber-300 uppercase">
                    Solar icon parity
                </p>
                <h1 className="mt-4 text-4xl font-semibold tracking-tight text-white">
                    Lucide workbench
                </h1>
                <p className="mt-4 max-w-2xl text-neutral-400">
                    Espace de travail expérimental séparé de l’application de démonstration
                    `react-app`. Les décisions de mapping restent binaires et auditables.
                </p>
                <nav className="mt-10 grid gap-4 sm:grid-cols-3">
                    <Link
                        href="/lucide-map"
                        className="rounded-xl border border-neutral-700 p-5 hover:border-amber-300">
                        <strong className="text-white">Solar → Lucide</strong>
                        <span className="mt-2 block text-sm text-neutral-400">
                            Revoir les correspondances enregistrées.
                        </span>
                    </Link>
                    <Link
                        href="/lucide-gap"
                        className="rounded-xl border border-neutral-700 p-5 hover:border-amber-300">
                        <strong className="text-white">Lucide → Solar</strong>
                        <span className="mt-2 block text-sm text-neutral-400">
                            Parcourir les gaps, fallbacks et reverse matches.
                        </span>
                    </Link>
                    <Link
                        href="/compare"
                        className="rounded-xl border border-neutral-700 p-5 hover:border-amber-300">
                        <strong className="text-white">Archive compare</strong>
                        <span className="mt-2 block text-sm text-neutral-400">
                            Ancienne vue multi-packs conservée pour audit.
                        </span>
                    </Link>
                </nav>
            </div>
        </main>
    )
}
