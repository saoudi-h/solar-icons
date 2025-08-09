<template>
    <SolarProvider :config="config">
        <slot />
    </SolarProvider>
</template>

<script setup lang="ts">

const config = {
    color: 'red',
    size: 96,
    weight: 'Broken',
    mirrored: false,
}
</script>