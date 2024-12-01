import React from 'react'

const NoiseSvg = React.forwardRef<SVGSVGElement, React.SVGProps<SVGSVGElement>>((props, ref) => (
    <svg {...props} ref={ref}>
        <filter id="noise-filter">
            <feTurbulence
                type="fractalNoise"
                baseFrequency="0.54"
                numOctaves="4"
                stitchTiles="stitch"></feTurbulence>
            <feColorMatrix type="saturate" values="0"></feColorMatrix>
            <feComponentTransfer>
                <feFuncR type="linear" slope="0.61"></feFuncR>
                <feFuncG type="linear" slope="0.61"></feFuncG>
                <feFuncB type="linear" slope="0.61"></feFuncB>
                <feFuncA type="linear" slope="1"></feFuncA>
            </feComponentTransfer>
            <feComponentTransfer>
                <feFuncR type="linear" slope="3" intercept="-1.00" />
                <feFuncG type="linear" slope="3" intercept="-1.00" />
                <feFuncB type="linear" slope="3" intercept="-1.00" />
            </feComponentTransfer>
        </filter>
        <rect width="100%" height="100%" filter="url(#noise-filter)"></rect>
    </svg>
))

NoiseSvg.displayName = 'NoiseSvg'

export { NoiseSvg }
