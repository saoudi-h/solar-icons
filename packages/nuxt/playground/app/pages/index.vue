<template>
  <div class="space-y-8">
    <div>
      <h1 class="text-3xl font-bold">
        Module Test
      </h1>
      <p class="text-slate-400 mt-1">
        This page tests <code class="text-amber-400">@solar-icons/nuxt</code> auto-imports. Every icon below is rendered via <code class="text-amber-400">&lt;SolarXxxIcon /&gt;</code> — no explicit import from <code class="text-amber-400">@solar-icons/vue</code>.
      </p>
    </div>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        Auto-imported Icons (main barrel)
      </h2>
      <p class="text-slate-400 text-sm">
        These components are registered by the module via <code>addComponent()</code> from <code>@solar-icons/vue</code>. Nuxt resolves them at compile time.
      </p>
      <div class="flex flex-wrap gap-4 p-4 bg-slate-900/50 rounded-xl border border-slate-800/50">
        <SolarHomeBoldIcon />
        <SolarStarBoldIcon />
        <SolarHeartBoldIcon />
        <SolarSettingsBoldIcon />
        <SolarUserBoldIcon />
        <SolarBellBoldIcon />
        <SolarCalendarBoldIcon />
        <SolarCameraBoldIcon />
      </div>
    </section>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        All 6 Styles (auto-imported)
      </h2>
      <p class="text-slate-400 text-sm">
        Same icon, 6 different style components — all auto-imported from the main barrel.
      </p>
      <div class="flex flex-wrap gap-4 p-4 bg-slate-900/50 rounded-xl border border-slate-800/50">
        <SolarHomeBoldIcon />
        <SolarHomeBoldDuotoneIcon />
        <SolarHomeBrokenIcon />
        <SolarHomeLinearIcon />
        <SolarHomeLineDuotoneIcon />
        <SolarHomeOutlineIcon />
      </div>
    </section>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        Auto-imported Dynamic Icons
      </h2>
      <p class="text-slate-400 text-sm">
        These are from the dynamic barrel (<code>@solar-icons/vue/dynamic</code>). Also auto-imported by the module.
      </p>
      <div class="flex flex-wrap gap-4 p-4 bg-slate-900/50 rounded-xl border border-slate-800/50">
        <SolarArrowUpIcon />
        <SolarArrowDownIcon />
        <SolarRefreshIcon />
        <SolarRestartIcon />
      </div>
    </section>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        Auto-imported Utilities
      </h2>
      <p class="text-slate-400 text-sm">
        <code>SolarProvider</code> (component) and <code>useSolar</code> (composable) are also auto-imported from <code>@solar-icons/vue/lib</code>.
      </p>
      <div class="p-4 bg-slate-900/50 rounded-xl border border-slate-800/50 space-y-3">
        <p class="text-sm text-slate-300">
          Current size: <span class="text-amber-400 font-mono">{{ size }}</span> —
          Color: <span class="text-amber-400 font-mono">{{ color }}</span>
        </p>
        <div class="flex gap-2">
          <button
            class="px-3 py-1.5 rounded-lg text-sm bg-slate-700 text-slate-300 hover:bg-slate-600 cursor-pointer"
            @click="setSize((Number(size) || 32) - 4)"
          >
            Size -
          </button>
          <button
            class="px-3 py-1.5 rounded-lg text-sm bg-slate-700 text-slate-300 hover:bg-slate-600 cursor-pointer"
            @click="setSize((Number(size) || 32) + 4)"
          >
            Size +
          </button>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
const { color, size, setSize } = useSolar()
</script>
