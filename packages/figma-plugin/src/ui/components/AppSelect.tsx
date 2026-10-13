import { Select } from '@base-ui/react/select'
import { usePacks } from '../packs'
import { SolarSvg } from './SolarSvg'

export type SelectOption = {
    label: string
    value: string
}

type AppSelectProps = {
    ariaLabel: string
    value: string
    options: SelectOption[]
    onValueChange: (value: string) => void
}

export function AppSelect({ ariaLabel, value, options, onValueChange }: AppSelectProps) {
    const { getSvg } = usePacks()
    return (
        <Select.Root items={options} value={value} onValueChange={next => onValueChange(next ?? '')}>
            <Select.Trigger className="select-trigger" aria-label={ariaLabel}>
                <Select.Value />
                <Select.Icon className="select-icon">
                    <SolarSvg svg={getSvg('alt-arrow-down', 'linear')} />
                </Select.Icon>
            </Select.Trigger>
            <Select.Portal>
                <Select.Positioner className="select-positioner" sideOffset={4} alignItemWithTrigger={false}>
                    <Select.Popup className="select-popup">
                        <Select.ScrollUpArrow className="select-scroll-arrow">
                            <SolarSvg svg={getSvg('alt-arrow-up', 'linear')} />
                        </Select.ScrollUpArrow>
                        <Select.List className="select-list">
                            {options.map(option => (
                                <Select.Item className="select-item" key={option.value || 'all'} value={option.value}>
                                    <Select.ItemText>{option.label}</Select.ItemText>
                                    <Select.ItemIndicator className="select-indicator">
                                        <SolarSvg svg={getSvg('check-read', 'linear')} />
                                    </Select.ItemIndicator>
                                </Select.Item>
                            ))}
                        </Select.List>
                        <Select.ScrollDownArrow className="select-scroll-arrow">
                            <SolarSvg svg={getSvg('alt-arrow-down', 'linear')} />
                        </Select.ScrollDownArrow>
                    </Select.Popup>
                </Select.Positioner>
            </Select.Portal>
        </Select.Root>
    )
}
