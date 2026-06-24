<script setup lang="ts">
import { ref } from 'vue'
import SectionWrapper from '@/components/app/SectionWrapper.vue'
import Card from '@/components/ui/card/Card.vue'
import CardContent from '@/components/ui/card/CardContent.vue'
import { SolarProvider } from '@solar-icons/vue'
import Gallery from '@/components/Gallery.vue'
import ProviderDemo from '@/components/ProviderDemo.vue'
import * as solarIcons from '@solar-icons/vue'

const cssColor = ref('#f59e0b')
const cssSize = ref(40)
</script>

<template>
    <SectionWrapper>
        <div class="flex flex-col gap-8 w-full">
            <div class="flex flex-row items-center justify-between gap-2 w-full py-6">
                <div class="flex flex-col gap-2">
                    <h1 class="text-4xl font-bold">Solar Icons - Vue</h1>
                    <p class="text-muted-foreground">1246 icons x 6 styles = 7476 variants</p>
                </div>
            </div>

            <!-- 1. Icon Gallery -->
            <Card class="w-full bg-muted/30 backdrop-blur-lg shadow-xs border-border/30">
                <CardContent class="space-y-4">
                    <h2 class="text-xl font-bold">1. Icon Gallery</h2>
                    <p class="text-sm text-muted-foreground">Browse all icons. Controls use SolarProvider + useSolar().</p>
                    <SolarProvider color="#f59e0b" :size="32" :stroke-width="1.5" secondary-color="#60a5fa" :secondary-opacity="0.5">
                        <Gallery />
                    </SolarProvider>
                </CardContent>
            </Card>

            <!-- 2. CSS Custom Properties -->
            <Card class="w-full bg-muted/30 backdrop-blur-lg shadow-xs border-border/30">
                <CardContent class="space-y-4">
                    <h2 class="text-xl font-bold">2. CSS Custom Properties</h2>
                    <p class="text-sm text-muted-foreground">Control icons via CSS custom properties. No provider needed.</p>
                    <div class="flex items-center gap-4">
                        <div class="space-y-1">
                            <span class="text-xs">Color</span>
                            <input type="color" v-model="cssColor" class="w-8 h-8 rounded border-0" />
                        </div>
                        <div class="space-y-1">
                            <span class="text-xs">Size ({{ cssSize }}px)</span>
                            <input type="range" min="16" max="64" v-model.number="cssSize" class="w-24" />
                        </div>
                    </div>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div class="bg-muted/20 rounded-lg p-4 flex gap-4" :style="{ '--solar-icon-color': cssColor, '--solar-icon-size': `${cssSize}px` }">
                            <solarIcons.HomeBold />
                            <solarIcons.SettingsBold />
                            <solarIcons.UserBold />
                        </div>
                        <div class="bg-muted/20 rounded-lg p-4 flex gap-4" :style="{ '--solar-icon-color': cssColor, '--solar-icon-size': `${cssSize}px` }">
                            <solarIcons.HeartBold />
                            <solarIcons.StarBold />
                            <solarIcons.BellBold />
                        </div>
                    </div>
                </CardContent>
            </Card>

            <!-- 3. SolarProvider + useSolar -->
            <Card class="w-full bg-muted/30 backdrop-blur-lg shadow-xs border-border/30">
                <CardContent class="space-y-4">
                    <h2 class="text-xl font-bold">3. SolarProvider + useSolar</h2>
                    <p class="text-sm text-muted-foreground">A separate provider with its own controls.</p>
                    <ProviderDemo />
                </CardContent>
            </Card>

            <!-- 4. CSS Class Styling -->
            <Card class="w-full bg-muted/30 backdrop-blur-lg shadow-xs border-border/30">
                <CardContent class="space-y-4">
                    <h2 class="text-xl font-bold">4. CSS Class Styling</h2>
                    <p class="text-sm text-muted-foreground">Every icon has class 'solar' and 'solar-&#123;name&#125;'.</p>
                    <div class="bg-muted/20 rounded-lg p-4 flex gap-4">
                        <solarIcons.HomeBold />
                        <solarIcons.StarBold style="color: #60a5fa" />
                        <solarIcons.HeartBold />
                    </div>
                </CardContent>
            </Card>

            <!-- 5. Accessibility -->
            <Card class="w-full bg-muted/30 backdrop-blur-lg shadow-xs border-border/30">
                <CardContent class="space-y-4">
                    <h2 class="text-xl font-bold">5. Accessibility</h2>
                    <p class="text-sm text-muted-foreground">Icons have aria-hidden="true" by default.</p>
                    <div class="grid grid-cols-3 gap-4">
                        <div class="bg-muted/20 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-500 block">Default (aria-hidden)</code>
                            <solarIcons.InfoCircleBold :size="32" />
                        </div>
                        <div class="bg-muted/20 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-500 block">alt="Information"</code>
                            <solarIcons.InfoCircleBold :size="32" alt="Information" />
                        </div>
                        <div class="bg-muted/20 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-500 block">aria-label</code>
                            <solarIcons.InfoCircleBold :size="32" aria-label="Information" />
                        </div>
                    </div>
                </CardContent>
            </Card>
        </div>
    </SectionWrapper>
</template>
