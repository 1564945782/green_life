import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'

import '../assets/css/reset.css'

import Bionic from '../views/bionic'
import Details from '../views/details'
import Flower from '../views/flower'
import Home from '../views/home'
import Login from '../views/login'
import MoreMeat from '../views/more_meat'
import MyInfo from '../views/my_info'
import OrderForm from '../views/order_form'
import SearchEnd from '../views/search_end'
import Feedback from '../views/feedback'
import MeatClassifyDisplay from '../views/meat_classify_display'
import MeatGoodsDisplay from '../components/meat_goods_display'
import MeatClassify from '../components/meat_classify'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
		{
		  path: '/bionic',
		  name: 'bionic',
		  component: Bionic
		},
		{
		  path: '/details',
		  name: 'details',
		  component: Details
		},
		{
		  path: '/flower',
		  name: 'flower',
		  component: Flower,
				children:[
				{
					path: '/details',
					name: 'details',
					component: Details,
				}
			]
		},
		{
		  path: '/home',
		  name: 'home',
		  component: Home
		},
		{
		  path: '/login',
		  name: 'login',
		  component: Login
		},
		{
		  path: '/more_meat',
		  name: 'more_meat',
		  component: MoreMeat
		},
		{
		  path: '/my_info',
		  name: 'my_info',
		  component: MyInfo
		},
		{
		  path: '/order_form',
		  name: 'order_form',
		  component: OrderForm
		},
		{
		  path: '/search_end',
		  name: 'search_end',
		  component: SearchEnd
		},
		{
		  path: '/feedback',
		  name: 'feedback',
		  component: Feedback
		},
		{
			path: '/meat_goods_display',
			name: 'meat_goods_display',
			component: MeatGoodsDisplay,
			children:[
				{
					path: '/details',
					name: 'details',
					component: Details,
					children:[
						{
							path: '/order_form',
							name: 'order_form',
							component: OrderForm
						}
					]
				}
			]
		},
		{
			path: '/meat_classify_display',
			name: 'meat_classify_display',
			component: MeatClassifyDisplay
		},
		{
		  path: '/meat_classify',
		  name: 'meat_classify',
		  component: MeatClassify
		}
  ]
})
