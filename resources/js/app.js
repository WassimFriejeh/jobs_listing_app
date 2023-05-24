import './bootstrap';

// import Alpine from 'alpinejs';

// window.Alpine = Alpine;

// Alpine.start();

import { createApp } from 'vue';
// import App from './App.vue'
import Profilemenu from "./components/menu/index.vue";
// import Test from "./components/Testing/test.vue"
// import vue from '@vitejs/plugin-vue'

const app = createApp({})
app.component('profile-menu', Profilemenu)
// app.component('test',Test)
app.mount('#app')

