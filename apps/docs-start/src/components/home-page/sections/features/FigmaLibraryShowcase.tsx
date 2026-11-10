import { AlbumIcon } from '@solar-icons/react/dynamic/album'
import { BellIcon } from '@solar-icons/react/dynamic/bell'
import { BoltIcon } from '@solar-icons/react/dynamic/bolt'
import { CalendarIcon } from '@solar-icons/react/dynamic/calendar'
import { CameraIcon } from '@solar-icons/react/dynamic/camera'
import { ChatRoundIcon } from '@solar-icons/react/dynamic/chat-round'
import { ClockCircleIcon } from '@solar-icons/react/dynamic/clock-circle'
import { CloudIcon } from '@solar-icons/react/dynamic/cloud'
import { CodeIcon } from '@solar-icons/react/dynamic/code'
import { CupHotIcon } from '@solar-icons/react/dynamic/cup-hot'
import { FolderIcon } from '@solar-icons/react/dynamic/folder'
import { GamepadIcon } from '@solar-icons/react/dynamic/gamepad'
import { GiftIcon } from '@solar-icons/react/dynamic/gift'
import { GlobalIcon } from '@solar-icons/react/dynamic/global'
import { HeadphonesRoundIcon } from '@solar-icons/react/dynamic/headphones-round'
import { HeartIcon } from '@solar-icons/react/dynamic/heart'
import { HomeIcon } from '@solar-icons/react/dynamic/home'
import { KeyIcon } from '@solar-icons/react/dynamic/key'
import { LeafIcon } from '@solar-icons/react/dynamic/leaf'
import { LightbulbIcon } from '@solar-icons/react/dynamic/lightbulb'
import { LinkIcon } from '@solar-icons/react/dynamic/link'
import { LockIcon } from '@solar-icons/react/dynamic/lock'
import { MapPointIcon } from '@solar-icons/react/dynamic/map-point'
import { MoonIcon } from '@solar-icons/react/dynamic/moon'
import { MusicNoteIcon } from '@solar-icons/react/dynamic/music-note'
import { PaletteRoundIcon } from '@solar-icons/react/dynamic/palette-round'
import { PlanetIcon } from '@solar-icons/react/dynamic/planet'
import { RocketIcon } from '@solar-icons/react/dynamic/rocket'
import { SettingsIcon } from '@solar-icons/react/dynamic/settings'
import { ShieldCheckIcon } from '@solar-icons/react/dynamic/shield-check'
import { SmileCircleIcon } from '@solar-icons/react/dynamic/smile-circle'
import { StarIcon } from '@solar-icons/react/dynamic/star'
import { SunIcon } from '@solar-icons/react/dynamic/sun'
import { UserIcon } from '@solar-icons/react/dynamic/user'

import { FigmaMark } from './FigmaMark'

const icons = [
    HomeIcon,
    BellIcon,
    MoonIcon,
    ChatRoundIcon,
    SettingsIcon,
    StarIcon,
    CalendarIcon,
    ClockCircleIcon,
    CupHotIcon,
    GiftIcon,
    PlanetIcon,
    UserIcon,
    CodeIcon,
    MapPointIcon,
    LightbulbIcon,
    BoltIcon,
    AlbumIcon,
    CameraIcon,
    CloudIcon,
    FolderIcon,
    GamepadIcon,
    GlobalIcon,
    HeadphonesRoundIcon,
    HeartIcon,
    KeyIcon,
    LeafIcon,
    LinkIcon,
    LockIcon,
    MusicNoteIcon,
    PaletteRoundIcon,
    RocketIcon,
    ShieldCheckIcon,
    SmileCircleIcon,
    SunIcon,
] as const

/** The library as it looks when opened: a Figma file full of icons, cropped by the card's fade. */
export function FigmaLibraryShowcase() {
    return (
        <div
            role="img"
            aria-label="A Figma file filled with Solar icons"
            className="-mb-6 mt-auto h-64 w-full overflow-hidden">
            <div className="h-80 rounded-2xl border border-foreground/10 bg-background shadow-sm">
                <div className="flex h-12 items-center gap-2.5 border-b border-foreground/8 px-5">
                    <FigmaMark className="h-4" />
                    <span className="text-sm font-medium text-foreground">Solar Icons</span>
                    <span className="text-sm text-muted-foreground">/ Library</span>
                </div>
                <div className="flex flex-wrap justify-center gap-x-6 gap-y-6 px-5 pt-6">
                    {icons.map((Icon, index) => (
                        <span
                            key={index}
                            className={index % 6 === 2 ? 'text-primary' : 'text-foreground/75'}>
                            <Icon aria-hidden weight="LineDuotone" size={30} color="currentColor" />
                        </span>
                    ))}
                </div>
            </div>
        </div>
    )
}
