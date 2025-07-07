import { docs } from '@/.source'
import { loader } from 'fumadocs-core/source'
import { createElement } from 'react';
import { SSR as icons } from '@solar-icons/react'



// See https://fumadocs.vercel.app/docs/headless/source-api for more info
export const source = loader({
    // it assigns a URL to your pages
    baseUrl: '/docs',
    source: docs.toFumadocsSource(),
    icon(icon) {
        if (!icon) {
          // You may set a default icon
          return;
        }

        if (icon in icons) return createElement(icons[icon as keyof typeof icons] || icons.File, { className: 'size-8', weight: 'BoldDuotone' });

      },
})
