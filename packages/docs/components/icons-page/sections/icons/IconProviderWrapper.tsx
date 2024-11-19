import { ReactNode } from 'react'
import { IconWeight, SolarProvider } from '@solar-icons/react'

interface IconProviderWrapperProps {
    children: ReactNode
    defaultColor?: string
    defaultSize?: number
    defaultWeight?: IconWeight
}

const IconProviderWrapper: React.FC<IconProviderWrapperProps> = ({
    children,
    defaultColor = '#000000',
    defaultSize = 24,
    defaultWeight = 'Linear',
}) => {
    return (
        <SolarProvider
            value={{ color: defaultColor, size: defaultSize, weight: defaultWeight }}
            >
            {children}
        </SolarProvider>
    )
}

export default IconProviderWrapper
