import { Tabs } from '@base-ui/react/tabs'
import { useDeferredValue, useEffect, useMemo, useState } from 'react'
import type { MainMessage, PluginSettings, ThemeMode, UiMessage } from '../shared/messages'
import { DEFAULT_SETTINGS } from '../shared/messages'
import { AppSelect, type SelectOption } from './components/AppSelect'
import { GeometryControl } from './components/GeometryControl'
import { IconBrowser } from './components/IconBrowser'
import { InfoPanel } from './components/InfoPanel'
import { ResizeHandles } from './components/ResizeHandles'
import { SolarSvg } from './components/SolarSvg'
import { iconData, icons } from './data'
import { createIconSearch, searchIcons } from './search'

type Tab = 'icons' | 'settings' | 'info'
type StatusKind = 'error' | 'success' | undefined

const STYLE_OPTIONS = [
    { label: 'Linear', value: 'linear', editable: true },
    { label: 'Broken', value: 'broken', editable: true },
    { label: 'Line Duotone', value: 'line-duotone', editable: true },
    { label: 'Outline', value: 'outline', editable: false },
    { label: 'Bold', value: 'bold', editable: false },
    { label: 'Bold Duotone', value: 'bold-duotone', editable: false },
] as const

const styleOptions: SelectOption[] = STYLE_OPTIONS.map(({ label, value }) => ({ label, value }))
const categoryOptions: SelectOption[] = [
    { label: 'All categories', value: 'all' },
    ...Array.from(new Set(icons.map(icon => icon.category)))
        .sort()
        .map(value => ({ label: titleCase(value), value })),
]

function titleCase(value: string): string {
    return value.replaceAll('-', ' ').replace(/\b\w/g, letter => letter.toUpperCase())
}

function postMessage(message: UiMessage): void {
    parent.postMessage({ pluginMessage: message }, '*')
}

export function App() {
    const [tab, setTab] = useState<Tab>('icons')
    const [query, setQuery] = useState('')
    const deferredQuery = useDeferredValue(query)
    const [styleName, setStyleName] = useState('linear')
    const [category, setCategory] = useState('all')
    const [settings, setSettings] = useState<PluginSettings>(DEFAULT_SETTINGS)
    const [selected, setSelected] = useState<Set<string>>(() => new Set())
    const [insertionPending, setInsertionPending] = useState(false)
    const [status, setStatus] = useState<{ message: string; kind: StatusKind }>({
        message: 'Click an icon to insert it.',
        kind: undefined,
    })
    const fuse = useMemo(() => createIconSearch(icons), [])
    const activeStyle = STYLE_OPTIONS.find(option => option.value === styleName) ?? STYLE_OPTIONS[0]
    const filteredIcons = useMemo(
        () => searchIcons(fuse, icons, deferredQuery, category === 'all' ? '' : category),
        [category, deferredQuery, fuse]
    )
    const selectionMode = settings.insertionMode === 'selection'

    useEffect(() => {
        const handleMessage = (event: MessageEvent<{ pluginMessage?: MainMessage }>) => {
            const message = event.data.pluginMessage
            if (!message) return

            if (message.type === 'settings-loaded') setSettings({ ...DEFAULT_SETTINGS, ...message.settings })
            if (message.type === 'inserted') {
                setInsertionPending(false)
                setSelected(new Set())
                setStatus({
                    message: message.count === 1 ? 'Icon inserted.' : `${message.count} icons inserted.`,
                    kind: 'success',
                })
            }
            if (message.type === 'error') {
                setInsertionPending(false)
                setStatus({ message: message.message, kind: 'error' })
            }
        }

        window.addEventListener('message', handleMessage)
        postMessage({ type: 'load-settings' })
        return () => window.removeEventListener('message', handleMessage)
    }, [])

    useEffect(() => {
        if (settings.theme === 'system') document.documentElement.removeAttribute('data-theme')
        else document.documentElement.setAttribute('data-theme', settings.theme)
    }, [settings.theme])

    const saveSettings = (next: PluginSettings) => {
        setSettings(next)
        postMessage({ type: 'save-settings', settings: next })
    }

    const commitSetting = <Key extends keyof PluginSettings>(key: Key, value: PluginSettings[Key]) => {
        setSettings(current => {
            const next = { ...current, [key]: value }
            postMessage({ type: 'save-settings', settings: next })
            return next
        })
    }

    const insertIcons = (names: string[]) => {
        if (insertionPending || names.length === 0) return
        if (settings.iconSize < 8 || settings.iconSize > 256) {
            setStatus({ message: 'Icon size must be between 8 and 256 px.', kind: 'error' })
            return
        }
        if (settings.strokeWidth < 0.5 || settings.strokeWidth > 4) {
            setStatus({ message: 'Stroke width must be between 0.5 and 4 px.', kind: 'error' })
            return
        }

        const items = names.map(name => ({ name, svg: iconData[`${name}-${styleName}`] })).filter(item => item.svg)
        setInsertionPending(true)
        setStatus({
            message: names.length === 1 ? `Inserting ${titleCase(names[0])}…` : `Inserting ${names.length} icons…`,
            kind: undefined,
        })
        postMessage({
            type: 'insert-icons',
            items,
            styleLabel: activeStyle.label,
            supportsStrokeWidth: activeStyle.editable,
            iconSize: settings.iconSize,
            strokeWidth: settings.strokeWidth,
        })
    }

    const handleIcon = (name: string) => {
        if (!selectionMode) {
            insertIcons([name])
            return
        }
        setSelected(current => {
            const next = new Set(current)
            if (next.has(name)) next.delete(name)
            else next.add(name)
            return next
        })
    }

    const setInsertionMode = (insertionMode: PluginSettings['insertionMode']) => {
        if (insertionMode === 'instant') setSelected(new Set())
        saveSettings({ ...settings, insertionMode })
    }

    const resetSettings = () => {
        setSelected(new Set())
        setStatus({ message: 'Settings reset.', kind: 'success' })
        saveSettings({ ...DEFAULT_SETTINGS })
    }

    const openExternal = (url: string) => postMessage({ type: 'open-external', url })

    return (
        <Tabs.Root className="app" value={tab} onValueChange={value => setTab(value as Tab)}>
            <Tabs.List className="tabs" aria-label="Solar Icons sections">
                {(['icons', 'settings', 'info'] as const).map(item => (
                    <Tabs.Tab
                        className="tab"
                        key={item}
                        value={item}
                    >
                        {titleCase(item)}
                    </Tabs.Tab>
                ))}
            </Tabs.List>

            <Tabs.Panel value="icons" className="panel">
                <div className="toolbar">
                    <div className="search-row">
                        <SolarSvg className="search-icon" name="minimalistic-magnifier" aria-hidden="true" />
                        <input
                            className="search-input"
                            type="search"
                            value={query}
                            placeholder="Search icons"
                            aria-label="Search icons"
                            onChange={event => setQuery(event.target.value)}
                            onKeyDown={event => {
                                if (event.key === 'Escape' && query) setQuery('')
                            }}
                        />
                        <span className="result-count" aria-live="polite">{filteredIcons.length.toLocaleString()}</span>
                    </div>
                    <div className="filter-row">
                        <AppSelect
                            ariaLabel="Icon style"
                            value={styleName}
                            options={styleOptions}
                            onValueChange={value => {
                                setStyleName(value)
                                setSelected(new Set())
                            }}
                        />
                        <AppSelect ariaLabel="Icon category" value={category} options={categoryOptions} onValueChange={setCategory} />
                    </div>
                </div>

                <IconBrowser
                    icons={filteredIcons}
                    styleName={styleName}
                    styleLabel={activeStyle.label}
                    strokeWidth={activeStyle.editable ? settings.strokeWidth : undefined}
                    selectionMode={selectionMode}
                    selected={selected}
                    onIcon={handleIcon}
                />

                <div className="bottom-bar">
                    {selectionMode ? (
                        <div className="selection-actions visible">
                            <span className="selection-summary">{selected.size} selected</span>
                            <button className="clear-button" type="button" onClick={() => setSelected(new Set())}>Clear</button>
                            <button
                                className="insert-button"
                                type="button"
                                disabled={selected.size === 0 || insertionPending}
                                onClick={() => insertIcons(Array.from(selected))}
                            >
                                Insert
                            </button>
                        </div>
                    ) : (
                        <div className={`status ${status.kind ?? ''}`} role="status">{status.message}</div>
                    )}
                </div>
            </Tabs.Panel>

            <Tabs.Panel value="settings" className="panel">
                <div className="settings-scroll">
                    <h2 className="section-label">Insertion</h2>
                    <div className="mode-control" role="group" aria-label="Insertion behavior">
                        <ModeButton active={settings.insertionMode === 'instant'} title="Insert on click" description="One click adds the icon" onClick={() => setInsertionMode('instant')} />
                        <ModeButton active={settings.insertionMode === 'selection'} title="Select first" description="Choose one or more icons" onClick={() => setInsertionMode('selection')} />
                    </div>

                    <h2 className="section-label">Appearance</h2>
                    <div className="mode-control theme-control" role="group" aria-label="Plugin theme">
                        {([
                            ['system', 'System', 'Follow Figma'],
                            ['light', 'Light', 'Force light'],
                            ['dark', 'Dark', 'Force dark'],
                        ] as const).map(([value, title, description]) => (
                            <ModeButton key={value} active={settings.theme === value} title={title} description={description} onClick={() => saveSettings({ ...settings, theme: value as ThemeMode })} />
                        ))}
                    </div>

                    <h2 className="section-label">Geometry</h2>
                    <div className="geometry-controls">
                        <GeometryControl
                            label="Size"
                            description="Size on the Figma canvas"
                            value={settings.iconSize}
                            min={8}
                            max={256}
                            step={1}
                            defaultValue={24}
                            onChange={iconSize => setSettings(current => ({ ...current, iconSize }))}
                            onCommit={iconSize => commitSetting('iconSize', iconSize)}
                        />
                        <GeometryControl
                            label="Stroke"
                            description="Linear, Broken, and Line Duotone"
                            value={settings.strokeWidth}
                            min={0.5}
                            max={4}
                            step={0.1}
                            defaultValue={1.5}
                            decimals={1}
                            onChange={strokeWidth => setSettings(current => ({ ...current, strokeWidth }))}
                            onCommit={strokeWidth => commitSetting('strokeWidth', strokeWidth)}
                        />
                    </div>

                    <button className="reset-settings-button" type="button" onClick={resetSettings}>
                        Reset settings
                    </button>
                </div>
            </Tabs.Panel>

            <Tabs.Panel value="info" className="panel">
                <InfoPanel openExternal={openExternal} />
            </Tabs.Panel>
            <ResizeHandles />
        </Tabs.Root>
    )
}

type ModeButtonProps = { active: boolean; title: string; description: string; onClick: () => void }

function ModeButton({ active, title, description, onClick }: ModeButtonProps) {
    return (
        <button className="mode-button" type="button" aria-pressed={active} onClick={onClick}>
            <strong>{title}</strong><span>{description}</span>
        </button>
    )
}
