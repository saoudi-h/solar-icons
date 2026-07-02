<template>
  <div class="space-y-6">
    <div>
      <h1 class="text-3xl font-bold">
        SolarProvider Scoping
      </h1>
      <p class="text-slate-400 mt-1">
        <code class="text-amber-400">SolarProvider</code> overrides defaults for its subtree via CSS custom properties.
      </p>
    </div>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        Global (from app.vue provider)
      </h2>
      <div class="flex gap-4 p-4 bg-slate-900/50 rounded-xl border border-slate-800/50">
        <SolarHomeBoldIcon />
        <SolarStarBoldIcon />
        <SolarHeartBoldIcon />
      </div>
    </section>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        color="red" :size="48"
      </h2>
      <SolarProvider color="red" :size="48">
        <div class="flex gap-4 p-4 bg-slate-900/50 rounded-xl border border-slate-800/50">
          <SolarHomeBoldIcon />
          <SolarStarBoldIcon />
          <SolarHeartBoldIcon />
        </div>
      </SolarProvider>
    </section>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        Nested: blue/64 → green/32
      </h2>
      <SolarProvider color="#3b82f6" :size="64">
        <div class="space-y-4 p-4 bg-slate-900/50 rounded-xl border border-slate-800/50">
          <div class="flex gap-4">
            <SolarHomeBoldIcon />
            <SolarStarBoldIcon />
          </div>

          <SolarProvider color="#22c55e" :size="32">
            <div class="flex gap-4 p-3 bg-slate-800/50 rounded-lg border border-slate-700/50">
              <SolarHomeBoldIcon />
              <SolarStarBoldIcon />
            </div>
          </SolarProvider>
        </div>
      </SolarProvider>
    </section>

    <section class="space-y-3">
      <h2 class="text-lg font-semibold text-slate-200">
        Dynamic + Provider
      </h2>
      <p class="text-slate-400 text-sm">
        Dynamic icons also respect the provider's color/size.
      </p>
      <SolarProvider color="#f59e0b" :size="48">
        <div class="flex gap-4 p-4 bg-slate-900/50 rounded-xl border border-slate-800/50">
          <SolarArrowUpIcon />
          <SolarArrowDownIcon />
          <SolarRefreshIcon />
          <SolarRestartIcon />
        </div>
      </SolarProvider>
    </section>
  </div>
</template>
