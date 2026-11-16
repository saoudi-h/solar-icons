import { HeartIcon } from '@solar-icons/solid-v2/bold-duotone/heart'
import { ChatSquare2Icon } from '@solar-icons/solid-v2/bold/chat-square-2'
import { HomeIcon } from '@solar-icons/solid-v2/linear/home'

export default function LazyIconPanel() {
    return (
        <div class="bg-slate-900/80 border border-slate-700/60 rounded-lg p-4 flex items-center gap-4">
            <HomeIcon size={28} color="#34d399" />
            <HeartIcon size={28} color="#f43f5e" secondaryColor="#fda4af" secondaryOpacity={0.5} />
            <ChatSquare2Icon size={28} color="#60a5fa" />
            <span class="text-xs text-slate-300">
                Loaded via <code>lazy()</code> inside <code>&lt;Loading&gt;</code>
            </span>
        </div>
    )
}
