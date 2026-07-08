import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import 'vue-color/style.css'

const app = createApp(App)
app.use(router)
app.mount('#app')
