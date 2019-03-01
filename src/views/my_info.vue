<template>
  <div class="myinfo">
		<main-nav :curUser="currUser"></main-nav>
		myinfo
  </div>
</template>

<script>
	import {$,$$} from '../assets/js/base.js'
	import mainNav from '../components/main_nav'
	export default {
		name: 'myinfo',
		props:["currUser"],
		components:{
			mainNav
		}
	}
</script>

<style>

</style>
