<template>
    <header class="sticky top-0 left-0 z-50 w-full">
        <div class="absolute inset-0 size-full bg-background/20 blur-lg"/>
        <nav class="z-40 backdrop-blur-md transition-opacity">
            <SectionWrapper>
                <Section class="flex h-16 items-center justify-between flex-row"><slot /></Section>
            </SectionWrapper>
        </nav>
    </header>
</template> 

<script setup lang="ts">
import SectionWrapper from "./SectionWrapper.vue"
</script>