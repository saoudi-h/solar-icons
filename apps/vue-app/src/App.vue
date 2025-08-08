<script setup lang="ts">
import { RouterView } from 'vue-router'
import AppHeader from './components/app/AppHeader.vue'
// import { SolarProvider } from '@solar-icons/vue/lib'
import AppBgImage from './components/app/AppBgImage.vue'
import { Toaster } from '@/components/ui/sonner'
import 'vue-sonner/style.css'
</script>

<template>
  <div>
    <div class="relative font-sans">
      <div
        class="flex flex-col min-h-screen mx-auto max-w-6xl bg-background/30 backdrop-blur-xl border-x border-border/30 shadow-sm"
      >
        <AppHeader />
        <main class="flex flex-1 w-full">
          <RouterView />
        </main>
      </div>
    </div>
    <AppBgImage />
    <Toaster />
  </div>
</template>
