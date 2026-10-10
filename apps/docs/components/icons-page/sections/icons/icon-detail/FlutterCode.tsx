import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'

import { Button } from '@/components/ui/button'
import { toPascalCase } from '@/lib/utils'
import { type Weight } from '@solar-icons/core/runtime'

import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

const WEIGHT_TO_DART_DIR: Record<Weight, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold_duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line_duotone',
    Outline: 'outline',
}

const WEIGHT_TO_DART_SUFFIX: Record<Weight, string> = {
    Bold: 'Bold',
    BoldDuotone: 'BoldDuotone',
    Broken: 'Broken',
    Linear: 'Linear',
    LineDuotone: 'LineDuotone',
    Outline: 'Outline',
}

export const FlutterCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const widget = `${toPascalCase(selectedIcon.name)}${WEIGHT_TO_DART_SUFFIX[weight]}Icon`
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
                code={`import 'package:solar_icons/${WEIGHT_TO_DART_DIR[weight]}/${file}.dart';\n\n${widget}()`}
            />
        </div>
    )
}
