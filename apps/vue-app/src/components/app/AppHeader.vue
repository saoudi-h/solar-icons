<script setup lang="ts">
import AppThemeToggle from './AppThemeToggle.vue'
import BaseHeader from './BaseHeader.vue'
import GithubLink from './GithubLink.vue'
import LogoLink from './LogoLink.vue'
import NavHeader from './NavHeader.vue'
</script>

<template>
    <BaseHeader>
        <div className="flex shrink-0 items-center">
            <LogoLink />
        </div>

        <NavHeader />

        <div className="flex items-center gap-2">
            <AppThemeToggle />
            <div className="inset-y-0 mr-2 flex items-center px-0">
                <GithubLink />
            </div>
        </div>
    </BaseHeader>
</template>
