import { StatusBar } from 'expo-status-bar'
import React, { useState } from 'react'
import { ScrollView, StyleSheet, Text, TouchableOpacity, View, Switch } from 'react-native'

// --- V3 imports with Icon suffix ---

// Style-bundle imports
import { HeartBoldIcon, HomeBoldIcon, StarBoldIcon, UserBoldIcon } from '@solar-icons/react-native/Bold'
import {
    HomeBoldDuotoneIcon,
    UserBoldDuotoneIcon,
} from '@solar-icons/react-native/BoldDuotone'
import { HomeBrokenIcon, UserBrokenIcon } from '@solar-icons/react-native/Broken'
import {
    HeartLinearIcon,
    HomeLinearIcon,
    StarLinearIcon,
    UserLinearIcon,
} from '@solar-icons/react-native/Linear'
import {
    HomeLineDuotoneIcon,
    UserLineDuotoneIcon,
} from '@solar-icons/react-native/LineDuotone'
import { HomeOutlineIcon, UserOutlineIcon } from '@solar-icons/react-native/Outline'

// Global imports
import {
    HomeBoldIcon as HomeBoldGlobalIcon,
    UserBoldIcon as UserBoldGlobalIcon,
} from '@solar-icons/react-native'

// Provider + hook
import { SolarProvider, useSolar } from '@solar-icons/react-native'

// Granular import
import { AltArrowLeftIcon } from '@solar-icons/react-native/category/arrows/Bold/AltArrowLeft'

// --- Section component ---
function Section({ title, children }: { title: string; children: React.ReactNode }) {
    return (
        <View style={styles.section}>
            <Text style={styles.sectionTitle}>{title}</Text>
            {children}
        </View>
    )
}

// --- Provider demo inner ---
function ProviderDemoInner() {
    const solar = useSolar()
    return (
        <View style={styles.providerInner}>
            <Text style={styles.subtitle}>Provider State</Text>
            <Text style={styles.code}>
                color: {solar.color ?? 'default'} | size:{' '}
                {solar.size ?? 24} | stroke:{' '}
                {solar.strokeWidth ?? 1.5}
                {solar.duotoneColor
                    ? ` | duotone: ${solar.duotoneColor}`
                    : ''}
            </Text>
            <View style={styles.buttonRow}>
                <TouchableOpacity
                    style={[styles.btn, { backgroundColor: '#ef4444' }]}
                    onPress={() => solar.setColor('#ef4444')}
                >
                    <Text style={styles.btnText}>Red</Text>
                </TouchableOpacity>
                <TouchableOpacity
                    style={[styles.btn, { backgroundColor: '#3b82f6' }]}
                    onPress={() => solar.setColor('#3b82f6')}
                >
                    <Text style={styles.btnText}>Blue</Text>
                </TouchableOpacity>
                <TouchableOpacity
                    style={[styles.btn, { backgroundColor: '#22c55e' }]}
                    onPress={() => solar.setColor('#22c55e')}
                >
                    <Text style={styles.btnText}>Green</Text>
                </TouchableOpacity>
                <TouchableOpacity
                    style={[styles.btnSmall]}
                    onPress={() => solar.setSize(48)}
                >
                    <Text style={styles.btnText}>48px</Text>
                </TouchableOpacity>
                <TouchableOpacity
                    style={[styles.btnSmall]}
                    onPress={() => solar.setSize(24)}
                >
                    <Text style={styles.btnText}>24px</Text>
                </TouchableOpacity>
            </View>
            <View style={styles.iconRow}>
                <HomeBoldIcon size={32} />
                <StarBoldIcon size={32} color="#ef4444" />
                <HeartBoldIcon size={32} />
            </View>
        </View>
    )
}

// --- Gallery inner ---
function GalleryInner() {
    const solar = useSolar()
    const STYLES = [
        'Bold' as const,
        'BoldDuotone' as const,
        'Linear' as const,
        'LineDuotone' as const,
        'Broken' as const,
        'Outline' as const,
    ]
    const [selectedStyle, setSelectedStyle] = useState<
        (typeof STYLES)[number]
    >('Bold')

    const isDuotone =
        selectedStyle === 'BoldDuotone' ||
        selectedStyle === 'LineDuotone'

    const icons =
        selectedStyle === 'Bold'
            ? [HomeBoldIcon, StarBoldIcon, HeartBoldIcon, UserBoldIcon]
            : selectedStyle === 'BoldDuotone'
              ? [HomeBoldDuotoneIcon, UserBoldDuotoneIcon]
              : selectedStyle === 'Linear'
                ? [
                      HomeLinearIcon,
                      StarLinearIcon,
                      HeartLinearIcon,
                      UserLinearIcon,
                  ]
                : selectedStyle === 'LineDuotone'
                  ? [HomeLineDuotoneIcon, UserLineDuotoneIcon]
                  : selectedStyle === 'Broken'
                    ? [HomeBrokenIcon, UserBrokenIcon]
                    : [HomeOutlineIcon, UserOutlineIcon]

    return (
        <View>
            {/* Style selector */}
            <ScrollView
                horizontal
                style={styles.styleRow}
                showsHorizontalScrollIndicator={false}
            >
                {STYLES.map((s) => (
                    <TouchableOpacity
                        key={s}
                        style={[
                            styles.styleBtn,
                            selectedStyle === s &&
                                styles.styleBtnActive,
                        ]}
                        onPress={() => setSelectedStyle(s)}
                    >
                        <Text
                            style={[
                                styles.styleBtnText,
                                selectedStyle === s &&
                                    styles.styleBtnTextActive,
                            ]}
                        >
                            {s}
                        </Text>
                    </TouchableOpacity>
                ))}
            </ScrollView>

            {/* Duotone controls */}
            {isDuotone && (
                <View style={styles.duotoneControls}>
                    <Text style={styles.subtitle}>
                        Duotone Accent
                    </Text>
                    <View style={styles.buttonRow}>
                        <TouchableOpacity
                            style={[
                                styles.btn,
                                { backgroundColor: '#ef4444' },
                            ]}
                            onPress={() =>
                                solar.setDuotoneColor('#ef4444')
                            }
                        >
                            <Text style={styles.btnText}>
                                Red accent
                            </Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[
                                styles.btn,
                                { backgroundColor: '#3b82f6' },
                            ]}
                            onPress={() =>
                                solar.setDuotoneColor('#3b82f6')
                            }
                        >
                            <Text style={styles.btnText}>
                                Blue accent
                            </Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[styles.btnSmall]}
                            onPress={() =>
                                solar.setDuotoneOpacity(0.2)
                            }
                        >
                            <Text style={styles.btnText}>
                                Opacity .2
                            </Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[styles.btnSmall]}
                            onPress={() =>
                                solar.setDuotoneOpacity(0.8)
                            }
                        >
                            <Text style={styles.btnText}>
                                Opacity .8
                            </Text>
                        </TouchableOpacity>
                    </View>
                    <Text style={styles.code}>
                        duotone: {solar.duotoneColor ?? 'default'} @{' '}
                        {solar.duotoneOpacity ?? 0.5}
                    </Text>
                </View>
            )}

            {/* Stroke width */}
            <View style={styles.sliderRow}>
                <Text style={styles.subtitle}>
                    Stroke: {solar.strokeWidth ?? 1.5}
                </Text>
                <View style={styles.buttonRow}>
                    {[0.5, 1, 1.5, 2, 3].map((v) => (
                        <TouchableOpacity
                            key={v}
                            style={[
                                styles.btnSmall,
                                (solar.strokeWidth ?? 1.5) === v &&
                                    styles.btnSmallActive,
                            ]}
                            onPress={() => solar.setStrokeWidth(v)}
                        >
                            <Text style={styles.btnText}>{v}</Text>
                        </TouchableOpacity>
                    ))}
                </View>
            </View>

            {/* Current state */}
            <Text style={styles.code}>
                style: {selectedStyle} | size:{' '}
                {solar.size ?? 24} | color:{' '}
                {solar.color ?? 'default'}
            </Text>

            {/* Icon grid */}
            <View style={styles.iconGrid}>
                {icons.map((Icon, i) => (
                    <View key={i} style={styles.iconCard}>
                        <Icon size={48} />
                        <Text style={styles.iconLabel}>
                            {Icon.displayName?.replace('Icon', '') ??
                                'Icon'}
                        </Text>
                    </View>
                ))}
            </View>
        </View>
    )
}

// --- Import test section ---
function ImportTests() {
    return (
        <View>
            <Text style={styles.subtitle}>Import patterns</Text>
            <View style={styles.iconRow}>
                <AltArrowLeftIcon size={24} color="#64748b" />
                <HomeBoldGlobalIcon size={24} color="#64748b" />
                <UserBoldGlobalIcon size={24} color="#64748b" />
            </View>
            <Text style={styles.code}>
                Style-bundle: import {'{ HomeBoldIcon }'} from
                '@solar-icons/react-native/Bold'
            </Text>
            <Text style={styles.code}>
                Global: import {'{ HomeBoldIcon }'} from
                '@solar-icons/react-native'
            </Text>
            <Text style={styles.code}>
                Granular: import {'{ AltArrowLeftIcon }'} from
                '@solar-icons/react-native/category/...'
            </Text>
        </View>
    )
}

// --- Main App ---
export default function App() {
    const [providerColor, setProviderColor] = useState('#f59e0b')
    const [providerSize, setProviderSize] = useState(32)
    const [providerStroke, setProviderStroke] = useState(1.5)

    return (
        <SolarProvider
            color={providerColor}
            size={providerSize}
            strokeWidth={providerStroke}
        >
            <ScrollView style={styles.container}>
                <StatusBar style="light" />
                <Text style={styles.title}>
                    Solar Icons — React Native V3
                </Text>

                <Section title="1. Icon Gallery">
                    <GalleryInner />
                </Section>

                <Section title="2. SolarProvider + useSolar">
                    <View style={styles.controlsRow}>
                        <TouchableOpacity
                            style={[
                                styles.btn,
                                { backgroundColor: '#f59e0b' },
                            ]}
                            onPress={() =>
                                setProviderColor('#f59e0b')
                            }
                        >
                            <Text style={styles.btnText}>
                                Amber
                            </Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[
                                styles.btn,
                                { backgroundColor: '#ef4444' },
                            ]}
                            onPress={() =>
                                setProviderColor('#ef4444')
                            }
                        >
                            <Text style={styles.btnText}>Red</Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[styles.btnSmall]}
                            onPress={() => setProviderSize(24)}
                        >
                            <Text style={styles.btnText}>Size 24</Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[styles.btnSmall]}
                            onPress={() => setProviderSize(48)}
                        >
                            <Text style={styles.btnText}>Size 48</Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[styles.btnSmall]}
                            onPress={() => setProviderStroke(0.5)}
                        >
                            <Text style={styles.btnText}>
                                Stroke .5
                            </Text>
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={[styles.btnSmall]}
                            onPress={() => setProviderStroke(3)}
                        >
                            <Text style={styles.btnText}>
                                Stroke 3
                            </Text>
                        </TouchableOpacity>
                    </View>
                    <ProviderDemoInner />
                </Section>

                <Section title="3. Import Patterns">
                    <ImportTests />
                </Section>

                <Section title="4. Per-icon Override">
                    <Text style={styles.code}>
                        Explicit props override provider defaults
                    </Text>
                    <View style={styles.iconRow}>
                        <HomeBoldIcon
                            size={48}
                            color="#22c55e"
                            strokeWidth={3}
                        />
                        <StarBoldIcon
                            size={24}
                            color="#ef4444"
                            strokeWidth={0.5}
                        />
                        <HeartBoldIcon
                            size={36}
                            color="#3b82f6"
                            strokeWidth={1}
                        />
                    </View>
                </Section>

                <View style={{ height: 80 }} />
            </ScrollView>
        </SolarProvider>
    )
}

// --- Styles ---
const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#0f172a',
        paddingHorizontal: 16,
    },
    title: {
        fontSize: 24,
        fontWeight: 'bold',
        color: '#f8fafc',
        textAlign: 'center',
        marginTop: 60,
        marginBottom: 24,
    },
    section: {
        backgroundColor: '#1e293b',
        borderRadius: 16,
        padding: 16,
        marginBottom: 16,
        borderWidth: 1,
        borderColor: '#334155',
    },
    sectionTitle: {
        fontSize: 16,
        fontWeight: 'bold',
        color: '#f8fafc',
        marginBottom: 12,
    },
    subtitle: {
        fontSize: 13,
        fontWeight: '600',
        color: '#94a3b8',
        marginBottom: 8,
    },
    code: {
        fontSize: 11,
        fontFamily: 'monospace',
        color: '#64748b',
        marginBottom: 8,
    },
    styleRow: {
        flexDirection: 'row',
        marginBottom: 12,
    },
    styleBtn: {
        paddingHorizontal: 12,
        paddingVertical: 6,
        borderRadius: 8,
        backgroundColor: '#334155',
        marginRight: 6,
    },
    styleBtnActive: {
        backgroundColor: '#f59e0b',
    },
    styleBtnText: {
        fontSize: 12,
        fontWeight: '600',
        color: '#94a3b8',
    },
    styleBtnTextActive: {
        color: '#0f172a',
    },
    duotoneControls: {
        marginBottom: 12,
        padding: 12,
        backgroundColor: '#0f172a',
        borderRadius: 8,
    },
    buttonRow: {
        flexDirection: 'row',
        flexWrap: 'wrap',
        gap: 6,
        marginBottom: 8,
    },
    btn: {
        paddingHorizontal: 12,
        paddingVertical: 6,
        borderRadius: 8,
    },
    btnSmall: {
        paddingHorizontal: 10,
        paddingVertical: 5,
        borderRadius: 8,
        backgroundColor: '#475569',
    },
    btnSmallActive: {
        backgroundColor: '#f59e0b',
    },
    btnText: {
        fontSize: 11,
        fontWeight: '600',
        color: '#f8fafc',
    },
    controlsRow: {
        flexDirection: 'row',
        flexWrap: 'wrap',
        gap: 6,
        marginBottom: 12,
    },
    sliderRow: {
        marginBottom: 12,
        padding: 12,
        backgroundColor: '#0f172a',
        borderRadius: 8,
    },
    iconGrid: {
        flexDirection: 'row',
        flexWrap: 'wrap',
        gap: 12,
        justifyContent: 'center',
    },
    iconCard: {
        alignItems: 'center',
        padding: 12,
        backgroundColor: '#0f172a',
        borderRadius: 12,
        minWidth: 80,
    },
    iconLabel: {
        fontSize: 9,
        color: '#475569',
        marginTop: 8,
    },
    iconRow: {
        flexDirection: 'row',
        gap: 16,
        alignItems: 'center',
        marginBottom: 8,
    },
    providerInner: {
        padding: 12,
        backgroundColor: '#0f172a',
        borderRadius: 8,
    },
})
