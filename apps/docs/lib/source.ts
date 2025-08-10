import { docs } from '@/.source'
import { SSR as icons } from '@solar-icons/react'
import { loader } from 'fumadocs-core/source'
import { IconifyFrameworkIcon, iconifyIcons, renderIconify, renderSolarIcon } from './resolveIconUtils'


// See https://fumadocs.vercel.app/docs/headless/source-api for more info
export const source = loader({
    // it assigns a URL to your pages
    baseUrl: '/docs',
    source: docs.toFumadocsSource(),
    icon(icon) {
        if (icon) {
            if(iconifyIcons.includes(icon)) {
                console.log("iconify icon", icon)
                return renderIconify(icon as IconifyFrameworkIcon)
    
            }
    
            if (icon in icons)
                return renderSolarIcon(icon, { className: 'size-8', weight: 'BoldDuotone' })
        }
        
        return renderSolarIcon('AltArrowRight', { className: 'size-8', weight: 'BoldDuotone' }) 
        
    },
})
