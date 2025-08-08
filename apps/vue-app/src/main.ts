import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import 'vue-color/style.css'
import { SolarIconsPlugin } from '@solar-icons/vue/lib'
const app = createApp(App)

app.use(SolarIconsPlugin, {
    color: 'red',
    size: '64',
    weight: 'BoldDuotone',
    mirrored: false,
})
app.use(router)

app.mount('#app')
