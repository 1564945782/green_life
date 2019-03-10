<template>
  <div id="app">
		<!-- 定义一个on的方法监听子组件的状态 -->
    <!-- <router-view v-on:getCurrentUser="getCurrentUser" :currUser="currentUser"/>    -->
		<router-view v-on:getCurrentUser="getCurrentUser" :currUser="currentUser"/>
  </div>
</template>

<script>
	export default {
		name: 'App',
		data:function(){
			return{
				currentUser:''
			}
		},
		methods:{
			getCurrentUser:function(childValue){
				this.currentUser=childValue
			}
		},
		mounted:function(){
			
		}
	}
</script>

<style>

</style>
