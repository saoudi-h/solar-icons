<script setup lang="ts">
import { Heart, Home as HomeIcon } from '@solar-icons/vue'

const dynamicWeight = 'Outline'
</script>

<template>
    <main>
        <Heart weight="Bold" aria-label="Favourite" />
        <HomeIcon :weight="dynamicWeight" />
    </main>
</template>
