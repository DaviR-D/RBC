import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/consulta',
      name: 'Consultar',
      component: HomeView
    },
    {
      path: '/cadastro',
      name: 'Cadastrar',
      component: HomeView
    },
    {
      path: '/revisao',
      name: 'Revisar',
      component: HomeView
    },
    {
      path: '/gerencia',
      name: 'Gerenciar',
      component: HomeView
    }
  ]
})

export default router
