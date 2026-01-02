<script lang="ts">
    // Test all export patterns

    // 1. Main exports from root
    import { type IconStyle } from '@solar-icons/svelte/lib/types';
    import { IconBase, type IconProps } from '@solar-icons/svelte';

    // 2. Style imports (flat)
    import { AltArrowDown as BoldArrow } from '@solar-icons/svelte/Bold';
    import { AltArrowDown as LinearArrow } from '@solar-icons/svelte/Linear';
    import { AltArrowDown as BoldDuotoneArrow } from '@solar-icons/svelte/BoldDuotone';
    import { AltArrowDown as LineDuotoneArrow } from '@solar-icons/svelte/LineDuotone';
    import { AltArrowDown as BrokenArrow } from '@solar-icons/svelte/Broken';
    import { AltArrowDown as OutlineArrow } from '@solar-icons/svelte/Outline';

    // 3. Category imports (namespaced by style)
    import {
        Bold as ArrowsBold,
        Linear as ArrowsLinear,
    } from '@solar-icons/svelte/category/arrows';

    // 4. Direct file imports
    import { AltArrowUp } from '@solar-icons/svelte/category/arrows/Bold';

    // 5. import
    import ArrowUp from '@solar-icons/svelte/category/arrows/Bold/ArrowUp.svelte';

    // Test types work
    const testProps: IconProps = {
        size: 24,
        color: '#f59e0b',
        alt: 'Test icon',
    };

    // Test IconStyle type
    const styles: IconStyle[] = [
        'Bold',
        'Linear',
        'Broken',
        'Outline',
        'BoldDuotone',
        'LineDuotone',
    ];

    // Status tracking
    const tests = $derived([
        { name: 'IconBase export', pass: typeof IconBase === 'function' },
        { name: 'IconStyle type export', pass: styles.length === 6 },
        { name: 'IconProps type', pass: testProps.size === 24 },
        { name: 'Bold style import', pass: typeof BoldArrow === 'function' },
        { name: 'Linear style import', pass: typeof LinearArrow === 'function' },
        { name: 'BoldDuotone style import', pass: typeof BoldDuotoneArrow === 'function' },
        { name: 'LineDuotone style import', pass: typeof LineDuotoneArrow === 'function' },
        { name: 'Broken style import', pass: typeof BrokenArrow === 'function' },
        { name: 'Outline style import', pass: typeof OutlineArrow === 'function' },
        { name: 'Category namespace import', pass: typeof ArrowsBold.AltArrowDown === 'function' },
        { name: 'Direct category import', pass: typeof AltArrowUp === 'function' },
    ]);

    const allPassed = $derived(tests.every((t) => t.pass));
</script>

<svelte:head>
    <title>Exports Test | Solar Icons Svelte</title>
</svelte:head>

<div class="space-y-8">
    <!-- Header -->
    <div class="text-center space-y-2">
        <h1 class="text-4xl font-bold text-white">Exports Verification</h1>
        <p class="text-slate-400">Testing all import patterns from @solar-icons/svelte</p>
    </div>

    <!-- Status Badge -->
    <div class="flex justify-center">
        <div
            class="px-6 py-3 rounded-full font-bold text-lg
                    {allPassed
                ? 'bg-green-500/20 text-green-400 border border-green-500/30'
                : 'bg-red-500/20 text-red-400 border border-red-500/30'}"
        >
            {allPassed ? '✓ All tests passed' : '✗ Some tests failed'}
        </div>
    </div>

    <!-- Tests Table -->
    <div class="bg-slate-800/50 rounded-2xl border border-slate-700/50 overflow-hidden">
        <table class="w-full">
            <thead class="bg-slate-700/50">
                <tr>
                    <th class="text-left px-6 py-4 text-slate-300 font-medium">Test</th>
                    <th class="text-center px-6 py-4 text-slate-300 font-medium w-32">Status</th>
                </tr>
            </thead>
            <tbody class="divide-y divide-slate-700/50">
                {#each tests as test}
                    <tr class="hover:bg-slate-700/30 transition-colors">
                        <td class="px-6 py-4 text-slate-200">{test.name}</td>
                        <td class="px-6 py-4 text-center">
                            {#if test.pass}
                                <span class="text-green-400">✓ Pass</span>
                            {:else}
                                <span class="text-red-400">✗ Fail</span>
                            {/if}
                        </td>
                    </tr>
                {/each}
            </tbody>
        </table>
    </div>

    <!-- Visual Verification -->
    <div class="space-y-4">
        <h2 class="text-2xl font-bold text-white">Visual Verification</h2>
        <p class="text-slate-400">Each icon should render correctly below:</p>

        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
            <!-- Style imports -->
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center"><BoldArrow size={32} color="#f59e0b" /></div>
                <p class="text-sm text-slate-400">Bold</p>
            </div>
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center"><LinearArrow size={32} color="#f59e0b" /></div>
                <p class="text-sm text-slate-400">Linear</p>
            </div>
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center">
                    <BoldDuotoneArrow size={32} color="#f59e0b" />
                </div>
                <p class="text-sm text-slate-400">BoldDuotone</p>
            </div>
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center">
                    <LineDuotoneArrow size={32} color="#f59e0b" />
                </div>
                <p class="text-sm text-slate-400">LineDuotone</p>
            </div>
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center"><BrokenArrow size={32} color="#f59e0b" /></div>
                <p class="text-sm text-slate-400">Broken</p>
            </div>
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center"><OutlineArrow size={32} color="#f59e0b" /></div>
                <p class="text-sm text-slate-400">Outline</p>
            </div>
        </div>

        <!-- Category imports -->
        <div class="grid grid-cols-2 md:grid-cols-3 gap-4 mt-4">
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center">
                    <ArrowsBold.AltArrowDown size={32} color="#10b981" />
                </div>
                <p class="text-sm text-slate-400">Category Namespace (Bold)</p>
            </div>
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center">
                    <ArrowsLinear.AltArrowDown size={32} color="#10b981" />
                </div>
                <p class="text-sm text-slate-400">Category Namespace (Linear)</p>
            </div>
            <div
                class="bg-slate-800/30 rounded-xl p-4 border border-slate-700/30 text-center space-y-2"
            >
                <div class="flex justify-center"><AltArrowUp size={32} color="#3b82f6" /></div>
                <p class="text-sm text-slate-400">Direct Import</p>
            </div>
        </div>

        <!-- IconBase direct usage -->
        <div class="bg-slate-800/30 rounded-xl p-6 border border-slate-700/30 mt-4">
            <h3 class="text-lg font-semibold text-white mb-4">IconBase Direct Usage</h3>
            <div class="flex items-center gap-4">
                <IconBase size={48} color="#ec4899">
                    <path
                        d="M12 2L15.09 8.26L22 9.27L17 14.14L18.18 21.02L12 17.77L5.82 21.02L7 14.14L2 9.27L8.91 8.26L12 2Z"
                        fill="currentColor"
                    />
                </IconBase>
                <span class="text-slate-400">Custom star icon using IconBase directly</span>
            </div>
        </div>

        <div class="bg-slate-800/30 rounded-xl p-6 border border-slate-700/30 mt-4">
            <h3 class="text-lg font-semibold text-white mb-4">ArrowUp</h3>
            <div class="flex items-center gap-4">
                <ArrowUp size={48} color="#ec4899" />
                <span class="text-slate-400">ArrowUp</span>
            </div>
        </div>
    </div>
</div>
