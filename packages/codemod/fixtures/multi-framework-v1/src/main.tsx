import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { createApp } from 'vue'

import { App } from './App'
import VueApp from './App.vue'

createRoot(document.getElementById('react-root')!).render(
    <StrictMode>
        <App dynamicWeight="Outline" />
    </StrictMode>
)

createApp(VueApp).mount('#vue-root')
