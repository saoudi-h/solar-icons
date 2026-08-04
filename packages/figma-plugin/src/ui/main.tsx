import '@calcom/cal-sans-ui/ui.css'
import '@fontsource-variable/bricolage-grotesque'
import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { App } from './App'
import './styles.css'

const root = document.getElementById('root')
if (!root) throw new Error('The Solar Icons UI root is missing.')

createRoot(root).render(
    <StrictMode>
        <App />
    </StrictMode>
)
