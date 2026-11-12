/**
 * The two panels that float above the grid (toolbar and icon details) share
 * one surface: a slightly distinct fill and a very short shadow instead of
 * a border. On dark, the fill carries the separation and a top highlight
 * replaces the shadow that would not be visible.
 */
export const PANEL_SURFACE = `
  bg-default-50 shadow-[0_1px_2px_rgb(0_0_0/0.08),0_0_0_1px_rgb(0_0_0/0.03)]
  dark:bg-default-100
  dark:shadow-[0_1px_3px_rgb(0_0_0/0.6),inset_0_1px_0_rgb(255_255_255/0.05)]
`

/** A control that sits on a panel: toolbar buttons, sliders, the search. */
export const CONTROL_SURFACE = 'bg-foreground/[0.06] dark:bg-foreground/[0.07]'

export const CONTROL_FOCUS =
    'focus-visible:ring-2 focus-visible:ring-primary/70 focus-visible:outline-hidden'
