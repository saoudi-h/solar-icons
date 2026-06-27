import React, { createElement, forwardRef } from 'react'

export const Svg = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('svg', { ref, ...props }, children)
)

export const Circle = forwardRef<any, any>((props, ref) =>
    createElement('circle', { ref, ...props })
)

export const Path = forwardRef<any, any>((props, ref) =>
    createElement('path', { ref, ...props })
)

export const G = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('g', { ref, ...props }, children)
)

export const Rect = forwardRef<any, any>((props, ref) =>
    createElement('rect', { ref, ...props })
)

export const Line = forwardRef<any, any>((props, ref) =>
    createElement('line', { ref, ...props })
)

export const Ellipse = forwardRef<any, any>((props, ref) =>
    createElement('ellipse', { ref, ...props })
)

export const Polygon = forwardRef<any, any>((props, ref) =>
    createElement('polygon', { ref, ...props })
)

export const Polyline = forwardRef<any, any>((props, ref) =>
    createElement('polyline', { ref, ...props })
)

export const Defs = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('defs', { ref, ...props }, children)
)

export const Stop = forwardRef<any, any>((props, ref) =>
    createElement('stop', { ref, ...props })
)

export const LinearGradient = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('linearGradient', { ref, ...props }, children)
)

export const RadialGradient = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('radialGradient', { ref, ...props }, children)
)

export const ClipPath = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('clipPath', { ref, ...props }, children)
)

export const Mask = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('mask', { ref, ...props }, children)
)

export const Text = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('text', { ref, ...props }, children)
)

export const TSpan = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('tspan', { ref, ...props }, children)
)

export const Use = forwardRef<any, any>((props, ref) =>
    createElement('use', { ref, ...props })
)

export const Symbol = forwardRef<any, any>(({ children, ...props }, ref) =>
    createElement('symbol', { ref, ...props }, children)
)

export const SvgXml = () => null
export const SvgUri = () => null

export default Svg
