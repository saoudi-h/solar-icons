import { StatusBar } from 'expo-status-bar'
import React, { useState, useMemo, useCallback } from 'react'
import { FlatList, StyleSheet, Text, TextInput, TouchableOpacity, View } from 'react-native'
import { SolarProvider, useSolar } from '@solar-icons/react-native'
import { ALL_ICONS, STYLES, type IconStyle } from './icon-list'

import * as BoldIcons from '@solar-icons/react-native/bold'
import * as BoldDuotoneIcons from '@solar-icons/react-native/bold-duotone'
import * as BrokenIcons from '@solar-icons/react-native/broken'
import * as LinearIcons from '@solar-icons/react-native/linear'
import * as LineDuotoneIcons from '@solar-icons/react-native/line-duotone'
import * as OutlineIcons from '@solar-icons/react-native/outline'

const STYLE_MODULES: Record<IconStyle, Record<string, React.ComponentType<any>>> = {
    Bold: BoldIcons,
    BoldDuotone: BoldDuotoneIcons,
    Broken: BrokenIcons,
    Linear: LinearIcons,
    LineDuotone: LineDuotoneIcons,
    Outline: OutlineIcons,
}

function isLinearLike(s: IconStyle) { return s === 'Linear' || s === 'LineDuotone' || s === 'Broken' }
function isDuotone(s: IconStyle) { return s === 'BoldDuotone' || s === 'LineDuotone' }

function getIcon(name: string, style: IconStyle): React.ComponentType<any> | null {
    const mod = STYLE_MODULES[style]
    return mod?.[name + 'Icon'] ?? null
}

const QUICK_COLORS = ['#f8fafc', '#ef4444', '#f59e0b', '#22c55e', '#3b82f6', '#06b6d4', '#a855f7', '#ec4899', '#84cc16', '#f97316']
const SIZE_PRESETS = [12, 16, 20, 24, 28, 32, 40, 48, 64, 96]
const STROKE_PRESETS = [0.5, 0.75, 1, 1.25, 1.5, 2, 2.5, 3, 4]
const OPACITY_PRESETS = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]

function ChipRow({ values, selected, onSelect, getLabel, type = 'chip' }: {
    values: (string | number)[]
    selected: string | number | undefined
    onSelect: (v: any) => void
    getLabel?: (v: any) => string
    type?: 'chip' | 'color'
}) {
    return (
        <View style={s.row}>
            {values.map(v => {
                const isActive = selected === v
                if (type === 'color') {
                    return (
                        <TouchableOpacity
                            key={String(v)}
                            style={[s.colorChip, { backgroundColor: String(v) }, isActive && s.colorChipActive]}
                            onPress={() => onSelect(v)}
                        />
                    )
                }
                return (
                    <TouchableOpacity
                        key={String(v)}
                        style={[s.chip, isActive && s.chipActive]}
                        onPress={() => onSelect(v)}
                    >
                        <Text style={[s.chipText, isActive && s.chipTextActive]}>
                            {getLabel ? getLabel(v) : String(v)}
                        </Text>
                    </TouchableOpacity>
                )
            })}
        </View>
    )
}

function Gallery() {
    const solar = useSolar()
    const [style, setStyle] = useState<IconStyle>('Bold')
    const [search, setSearch] = useState('')
    const [customColor, setCustomColor] = useState('')
    const [customSize, setCustomSize] = useState('')
    const [customStroke, setCustomStroke] = useState('')
    const [customOpacity, setCustomOpacity] = useState('')

    const filtered = useMemo(() => {
        const q = search.toLowerCase()
        if (!q) return ALL_ICONS.slice(0, 60)
        return ALL_ICONS.filter(n => n.toLowerCase().includes(q))
    }, [search])

    const effectiveColor = customColor || solar.color
    const effectiveSize = customSize ? Number(customSize) || solar.size : solar.size
    const effectiveStroke = customStroke ? Number(customStroke) || solar.strokeWidth : solar.strokeWidth
    const effectiveOpacity = customOpacity ? Number(customOpacity) || solar.secondaryOpacity : solar.secondaryOpacity

    const renderIcon = useCallback(({ item: name }: { item: string }) => {
        const Icon = getIcon(name, style)
        if (!Icon) return <View style={s.iconCard} />
        return (
            <View style={s.iconCard}>
                <Icon
                    color={effectiveColor as string}
                    size={Number(effectiveSize)}
                    strokeWidth={isLinearLike(style) ? Number(effectiveStroke) : undefined}
                    secondaryColor={isDuotone(style) ? (solar.secondaryColor || effectiveColor) : undefined}
                    secondaryOpacity={isDuotone(style) ? Number(effectiveOpacity) : undefined}
                />
                <Text style={s.iconLabel} numberOfLines={1}>{name}</Text>
            </View>
        )
    }, [style, effectiveColor, effectiveSize, effectiveStroke, effectiveOpacity, solar.secondaryColor])

    return (
        <View style={s.galleryContainer}>
            {/* Style */}
            <Text style={s.label}>Style</Text>
            <FlatList horizontal data={STYLES as unknown as string[]} keyExtractor={x => x}
                contentContainerStyle={{ gap: 6 }}
                renderItem={({ item: st }) => {
                    const s2 = st as IconStyle
                    return (
                        <TouchableOpacity style={[s.chip, style === s2 && s.chipActive]} onPress={() => setStyle(s2)}>
                            <Text style={[s.chipText, style === s2 && s.chipTextActive]}>{s2}</Text>
                        </TouchableOpacity>
                    )
                }}
            />

            {/* Color */}
            <View style={s.controlBlock}>
                <Text style={s.label}>Color</Text>
                <ChipRow values={QUICK_COLORS} selected={effectiveColor} onSelect={(c: string) => { solar.setColor(c); setCustomColor('') }} type="color" />
                <TextInput style={s.input} placeholder="Hex (#ff0000) or custom" placeholderTextColor="#475569"
                    value={customColor} onChangeText={setCustomColor} onSubmitEditing={() => { if (customColor) solar.setColor(customColor) }} />
            </View>

            {/* Size */}
            <View style={s.controlBlock}>
                <Text style={s.label}>Size: {effectiveSize ?? 24}px</Text>
                <ChipRow values={SIZE_PRESETS} selected={Number(effectiveSize)} onSelect={(v: number) => { solar.setSize(v); setCustomSize('') }} />
                <TextInput style={s.input} placeholder="Custom size..." placeholderTextColor="#475569"
                    value={customSize} onChangeText={setCustomSize} keyboardType="numeric" />
            </View>

            {/* Stroke */}
            <View style={[s.controlBlock, !isLinearLike(style) && s.disabled]}>
                <Text style={s.label}>Stroke: {effectiveStroke ?? 1.5}</Text>
                <ChipRow values={STROKE_PRESETS} selected={Number(effectiveStroke)} onSelect={(v: number) => { solar.setStrokeWidth(v); setCustomStroke('') }} />
                <TextInput style={s.input} placeholder="Custom stroke..." placeholderTextColor="#475569"
                    value={customStroke} onChangeText={setCustomStroke} keyboardType="numeric" editable={isLinearLike(style)} />
            </View>

            {/* Duotone controls */}
            {isDuotone(style) && (
                <>
                    <View style={s.controlBlock}>
                        <Text style={s.label}>Secondary color: {solar.secondaryColor || effectiveColor}</Text>
                        <ChipRow values={QUICK_COLORS} selected={solar.secondaryColor} onSelect={(c: string) => solar.setSecondaryColor(c)} type="color" />
                    </View>
                    <View style={s.controlBlock}>
                        <Text style={s.label}>Secondary opacity</Text>
                        <ChipRow values={OPACITY_PRESETS} selected={Number(effectiveOpacity)} onSelect={(v: number) => { solar.setSecondaryOpacity(v); setCustomOpacity('') }} />
                        <TextInput style={s.input} placeholder="Custom opacity (0-1)..." placeholderTextColor="#475569"
                            value={customOpacity} onChangeText={setCustomOpacity} keyboardType="numeric" />
                    </View>
                </>
            )}

            {/* Search */}
            <TextInput style={s.searchInput} placeholder={`Search all ${ALL_ICONS.length} icons...`} placeholderTextColor="#64748b"
                value={search} onChangeText={setSearch} />
            <Text style={s.countLabel}>Showing {filtered.length} icon{filtered.length !== 1 ? 's' : ''}</Text>

            {/* Grid */}
            <FlatList
                data={filtered}
                numColumns={4}
                keyExtractor={item => item}
                renderItem={renderIcon}
                initialNumToRender={16}
                maxToRenderPerBatch={8}
                windowSize={7}
                removeClippedSubviews
            />
        </View>
    )
}

export default function App() {
    return (
        <SolarProvider color="#f59e0b" size={32} strokeWidth={1.5} secondaryOpacity={0.5}>
            <View style={s.container}>
                <StatusBar style="light" />
                <FlatList
                    data={[]}
                    renderItem={() => null}
                    ListHeaderComponent={
                        <View>
                            <Text style={s.title}>Solar Icons — React Native</Text>
                            <Text style={s.subtitle}>{ALL_ICONS.length} icons × 6 styles = {ALL_ICONS.length * 6} variants</Text>
                            <Gallery />
                        </View>
                    }
                />
            </View>
        </SolarProvider>
    )
}

const s = StyleSheet.create({
    container: { flex: 1, backgroundColor: '#0f172a' },
    title: { fontSize: 22, fontWeight: 'bold', color: '#f8fafc', textAlign: 'center', marginTop: 60 },
    subtitle: { fontSize: 13, color: '#64748b', textAlign: 'center', marginBottom: 16 },
    galleryContainer: { paddingHorizontal: 10 },
    label: { fontSize: 12, fontWeight: '600', color: '#94a3b8', marginBottom: 6, marginTop: 8 },
    countLabel: { fontSize: 11, color: '#475569', marginBottom: 8, textAlign: 'right' },
    controlBlock: { marginBottom: 4 },
    row: { flexDirection: 'row', flexWrap: 'wrap', gap: 5, marginBottom: 4 },
    chip: { paddingHorizontal: 10, paddingVertical: 5, borderRadius: 7, backgroundColor: '#334155' },
    chipActive: { backgroundColor: '#f59e0b' },
    chipText: { fontSize: 11, fontWeight: '600', color: '#94a3b8' },
    chipTextActive: { color: '#0f172a' },
    colorChip: { width: 26, height: 26, borderRadius: 13, borderWidth: 2, borderColor: 'transparent' },
    colorChipActive: { borderColor: '#f8fafc' },
    input: { backgroundColor: '#1e293b', borderRadius: 7, paddingHorizontal: 10, paddingVertical: 6, color: '#f8fafc', fontSize: 12, borderWidth: 1, borderColor: '#334155', marginTop: 2, marginBottom: 2 },
    searchInput: { backgroundColor: '#1e293b', borderRadius: 8, paddingHorizontal: 12, paddingVertical: 8, color: '#f8fafc', fontSize: 14, borderWidth: 1, borderColor: '#334155', marginTop: 8 },
    disabled: { opacity: 0.3 },
    iconCard: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 8, margin: 2, backgroundColor: '#0f172a', borderRadius: 8, minHeight: 90 },
    iconLabel: { fontSize: 8, color: '#475569', marginTop: 6, textAlign: 'center' },
})
