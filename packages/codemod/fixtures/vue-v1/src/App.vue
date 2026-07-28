<script setup lang="ts">
import { Heart, Home as HomeIcon, Weigher } from '@solar-icons/vue'

const dynamicWeight = 'Outline'
</script>

<template>
    <main>
        <Heart weight="Bold" aria-label="Favourite" />
        <HomeIcon :weight="dynamicWeight" />
        <Weigher />
    </main>
</template>
