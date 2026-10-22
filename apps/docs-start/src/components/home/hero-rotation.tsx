import { AirbudsIcon } from '@solar-icons/react/dynamic/airbuds'
import { AirbudsCaseIcon } from '@solar-icons/react/dynamic/airbuds-case'
import { AirbudsCaseChargeIcon } from '@solar-icons/react/dynamic/airbuds-case-charge'
import { AirbudsCaseMinimalisticIcon } from '@solar-icons/react/dynamic/airbuds-case-minimalistic'
import { AirbudsCaseOpenIcon } from '@solar-icons/react/dynamic/airbuds-case-open'
import { AirbudsChargeIcon } from '@solar-icons/react/dynamic/airbuds-charge'
import { AirbudsCheckIcon } from '@solar-icons/react/dynamic/airbuds-check'
import { AirbudsLeftIcon } from '@solar-icons/react/dynamic/airbuds-left'
import { AirbudsRemoveIcon } from '@solar-icons/react/dynamic/airbuds-remove'
import { AirbudsRightIcon } from '@solar-icons/react/dynamic/airbuds-right'
import { BinocularsIcon } from '@solar-icons/react/dynamic/binoculars'
import { BluetoothIcon } from '@solar-icons/react/dynamic/bluetooth'
import { BluetoothCircleIcon } from '@solar-icons/react/dynamic/bluetooth-circle'
import { BluetoothSquareIcon } from '@solar-icons/react/dynamic/bluetooth-square'
import { BluetoothWaveIcon } from '@solar-icons/react/dynamic/bluetooth-wave'
import { BoomboxIcon } from '@solar-icons/react/dynamic/boombox'
import { BotIcon } from '@solar-icons/react/dynamic/bot'
import { CassetteIcon } from '@solar-icons/react/dynamic/cassette'
import { Cassette2Icon } from '@solar-icons/react/dynamic/cassette-2'
import { CloudStorageIcon } from '@solar-icons/react/dynamic/cloud-storage'
import { CpuIcon } from '@solar-icons/react/dynamic/cpu'
import { CpuBoltIcon } from '@solar-icons/react/dynamic/cpu-bolt'
import { DevicesIcon } from '@solar-icons/react/dynamic/devices'
import { DisketteIcon } from '@solar-icons/react/dynamic/diskette'
import { DisplayIcon } from '@solar-icons/react/dynamic/display'
import { FlashDriveIcon } from '@solar-icons/react/dynamic/flash-drive'
import { GameboyIcon } from '@solar-icons/react/dynamic/gameboy'
import { GamepadIcon } from '@solar-icons/react/dynamic/gamepad'
import { GamepadChargeIcon } from '@solar-icons/react/dynamic/gamepad-charge'
import { GamepadMinimalisticIcon } from '@solar-icons/react/dynamic/gamepad-minimalistic'
import { GamepadNoChargeIcon } from '@solar-icons/react/dynamic/gamepad-no-charge'
import { GamepadOldIcon } from '@solar-icons/react/dynamic/gamepad-old'
import { HeadphonesRoundIcon } from '@solar-icons/react/dynamic/headphones-round'
import { HeadphonesRoundSoundIcon } from '@solar-icons/react/dynamic/headphones-round-sound'
import type { IconWeight } from '@solar-icons/core'
import type { FC } from 'react'

type SolarIcon = FC<{ size?: number; className?: string; weight?: IconWeight }>

/**
 * The rings of the hero. Same icons as the current app, in the same order,
 * so the composition stays identical.
 */
const HERO_INNER_ICONS: SolarIcon[] = [
    AirbudsIcon,
    AirbudsCaseIcon,
    AirbudsCaseChargeIcon,
    AirbudsCaseMinimalisticIcon,
    AirbudsCaseOpenIcon,
    AirbudsChargeIcon,
    AirbudsCheckIcon,
    AirbudsLeftIcon,
    AirbudsRemoveIcon,
    AirbudsRightIcon,
    BinocularsIcon,
    BluetoothIcon,
    BluetoothCircleIcon,
    BluetoothSquareIcon,
]

const HERO_OUTER_ICONS: SolarIcon[] = [
    BluetoothWaveIcon,
    BoomboxIcon,
    BotIcon,
    CassetteIcon,
    Cassette2Icon,
    CloudStorageIcon,
    CpuIcon,
    CpuBoltIcon,
    DevicesIcon,
    DisketteIcon,
    DisplayIcon,
    FlashDriveIcon,
    GameboyIcon,
    GamepadIcon,
    GamepadChargeIcon,
    GamepadMinimalisticIcon,
    GamepadNoChargeIcon,
    GamepadOldIcon,
    HeadphonesRoundIcon,
    HeadphonesRoundSoundIcon,
]

const HERO_LIGHT_SEQUENCE = [
    { color: '#1e3a8a', secondaryColor: '#2563eb' },
    { color: '#4c1d95', secondaryColor: '#7c3aed' },
    { color: '#064e3b', secondaryColor: '#059669' },
    { color: '#7f1d1d', secondaryColor: '#dc2626' },
    { color: '#312e81', secondaryColor: '#4f46e5' },
]

const HERO_DARK_SEQUENCE = [
    { color: '#dbeafe', secondaryColor: '#60a5fa' },
    { color: '#ede9fe', secondaryColor: '#8b5cf6' },
    { color: '#d1fae5', secondaryColor: '#34d399' },
    { color: '#fee2e2', secondaryColor: '#f87171' },
    { color: '#e0e7ff', secondaryColor: '#818cf8' },
]

function Ring({
    icons,
    radius,
    size,
    offset = 0,
    palette,
}: {
    icons: SolarIcon[]
    radius: number
    size: number
    offset?: number
    palette: number
}) {
    return (
        <div
            className="absolute inset-0"
            style={{ transform: `rotate(${offset}deg)` }}
            aria-hidden="true">
            {icons.map((Icon, index) => {
                const angle = (index / icons.length) * Math.PI * 2 - Math.PI / 2
                const x = 50 + Math.cos(angle) * radius
                const y = 50 + Math.sin(angle) * radius
                const tone = index % palette

                return (
                    <div
                        key={index}
                        className="absolute"
                        style={{
                            left: `${x}%`,
                            top: `${y}%`,
                            transform: `translate(-50%, -50%) rotate(${-offset}deg)`,
                            color: `var(--hero-tone-${tone})`,
                            '--solar-secondary-color': `var(--hero-tone-${tone}-secondary)`,
                        } as React.CSSProperties}>
                        <Icon size={size} weight="BoldDuotone" />
                    </div>
                )
            })}
        </div>
    )
}

/**
 * Hero of the home page. The icons of the current app are laid out on two
 * rings; here they are rendered statically, with a slow rotation that stops
 * when the visitor asks for reduced motion.
 */
export function HeroRotation() {
    return (
        <div
            data-hero-rotation-stage
            className="relative mx-auto aspect-square w-full max-w-[min(70vh,540px)]">
            <div className="absolute inset-[8%] rounded-full border border-border/60" />
            <div className="absolute inset-[26%] rounded-full border border-border/40" />

            <div className="absolute inset-0 motion-safe:[animation:hero-spin_120s_linear_infinite]">
                <Ring icons={HERO_OUTER_ICONS} radius={45} size={30} palette={HERO_PALETTE_SIZE} />
            </div>
            <div className="absolute inset-0 motion-safe:[animation:hero-spin_90s_linear_infinite_reverse]">
                <Ring
                    icons={HERO_INNER_ICONS}
                    radius={30}
                    size={24}
                    offset={12}
                    palette={HERO_PALETTE_SIZE}
                />
            </div>

            <div className="absolute inset-0 grid place-items-center">
                <div
                    className="grid size-24 place-items-center rounded-full bg-background/80 shadow-lg backdrop-blur"
                    style={{ color: 'var(--hero-tone-0)' }}>
                    <DevicesIcon size={40} weight="BoldDuotone" />
                </div>
            </div>
        </div>
    )
}

/** Number of tones of the hero palette, defined as CSS variables. */
const HERO_PALETTE_SIZE = HERO_LIGHT_SEQUENCE.length
