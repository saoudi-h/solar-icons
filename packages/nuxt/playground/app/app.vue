<template>
  <div class="min-h-screen bg-slate-950 text-slate-100">
    <nav class="border-b border-slate-800 px-6 py-3">
      <div class="max-w-7xl mx-auto flex items-center gap-6">
        <span class="text-lg font-bold text-amber-400">Solar Icons — Nuxt</span>
        <NuxtLink
          to="/"
          class="text-sm text-slate-400 hover:text-slate-100 transition-colors"
          active-class="!text-amber-400"
        >
          Gallery
        </NuxtLink>
        <NuxtLink
          to="/dynamic"
          class="text-sm text-slate-400 hover:text-slate-100 transition-colors"
          active-class="!text-amber-400"
        >
          Dynamic
        </NuxtLink>
        <NuxtLink
          to="/provider"
          class="text-sm text-slate-400 hover:text-slate-100 transition-colors"
          active-class="!text-amber-400"
        >
          Provider
        </NuxtLink>
      </div>
    </nav>
    <main class="max-w-7xl mx-auto p-6">
      <SolarProvider color="#f59e0b" :size="32" :stroke-width="1.5">
        <NuxtPage />
      </SolarProvider>
    </main>
  </div>
</template>
