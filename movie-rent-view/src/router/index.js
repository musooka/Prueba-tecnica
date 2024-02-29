import { createRouter, createWebHashHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import SelectView from '../views/SelectView.vue'
import CreateView from '../views/CreateView.vue'
import EditView from '../views/EditView.vue'
import DeleteView from '../views/DeleteView.vue'
import CreateCategoryView from '../views/CreateCategoryView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/select',
    name: 'select',
    component: SelectView
  },
  {
    path: '/create',
    name: 'create',
    component: CreateView
  },
  {
    path: '/edit',
    name: 'edit',
    component: EditView
  },
  {
    path: '/delete',
    name: 'delete',
    component: DeleteView
  },
  {
    path: '/create_category',
    name: 'create_categoory',
    component: CreateCategoryView
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
