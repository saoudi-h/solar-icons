<template>
    <Select @update:model-value="onWeightChange">
        <SelectTrigger>
            <SelectValue :placeholder="props.weight || 'Select style'" />
        </SelectTrigger>
        <SelectContent>
            <SelectItem v-for="weight in weights" :key="weight" :value="weight">
                {{ weight }}
            </SelectItem>
        </SelectContent>
    </Select>
</template>

<script setup lang="ts">
import { IconStyle } from '@solar-icons/vue/lib'

import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'

const weights = [
    IconStyle.LINEAR,
    IconStyle.OUTLINE,
    IconStyle.BOLD_DUOTONE,
    IconStyle.BOLD,
    IconStyle.LINE_DUOTONE,
    IconStyle.BROKEN,
]

const props = defineProps<{ weight?: IconStyle }>()

const emit = defineEmits<{
    (e: 'update:weight', weight: IconStyle): void
}>()

const onWeightChange = (newWeight: unknown) => {
    if (
        typeof newWeight === 'string' &&
        Object.values(IconStyle).includes(newWeight as IconStyle)
    ) {
        emit('update:weight', newWeight as IconStyle)
    }
}
</script>
