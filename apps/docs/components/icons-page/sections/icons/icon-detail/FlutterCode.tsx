import { type Weight } from '@solar-icons/core/runtime'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'

import { Button } from '@/components/ui/button'
import { toPascalCase } from '@/lib/utils'

import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

const WEIGHT_TO_DART_STYLE: Record<Weight, string> = {
    Bold: 'bold',
    BoldDuotone: 'boldDuotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'lineDuotone',
    Outline: 'outline',
}

export const FlutterCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const widget = `${toPascalCase(selectedIcon.name)}Icon`
    const file = selectedIcon.name.replaceAll('-', '_')

    return (
        <div className="flex flex-col gap-2">
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/packages/flutter">
                    Get started with <span className="font-heading">Flutter</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="dart"
                code={`import 'package:solar_icons/icons/${file}.dart';\n\n${widget}(\n  style: SolarIconStyle.${WEIGHT_TO_DART_STYLE[weight]},\n)`}
            />
        </div>
    )
}
