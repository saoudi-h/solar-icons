'use client'

import type { ButtonProps } from './button';
import { Button } from './button'
import { Tooltip, TooltipContent, TooltipTrigger } from './tooltip'
import * as React from 'react'

export interface ButtonWithTooltipProps extends ButtonProps {
  tooltip?: React.ReactNode
  tooltipSide?: 'top' | 'right' | 'bottom' | 'left'
  tooltipSideOffset?: number
}

const ButtonWithTooltip = React.forwardRef<HTMLButtonElement, ButtonWithTooltipProps>(
  ({ tooltip, tooltipSide = 'top', tooltipSideOffset = 4, ...props }, ref) => {
    if (!tooltip) {
      return <Button ref={ref} {...props} />
    }

    return (
      <Tooltip>
        <TooltipTrigger asChild>
          <Button ref={ref} {...props} />
        </TooltipTrigger>
        <TooltipContent side={tooltipSide} sideOffset={tooltipSideOffset}>
          {tooltip}
        </TooltipContent>
      </Tooltip>
    )
  }
)

ButtonWithTooltip.displayName = 'ButtonWithTooltip'

export { ButtonWithTooltip }