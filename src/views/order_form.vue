<template>
  <div class="orderform">
		<main-nav></main-nav>
		<div class="banner_box">
			<div class="car_box">
				
				<div class="car_list">
					<img src="" alt="">
					<div class="car_text_box">
						
					</div>
				</div>
				
				<div class="car_list">
					<img src="" alt="">
					<div class="car_text_box">
						
					</div>
				</div>
				
				<div class="car_list">
					<img src="" alt="">
					<div class="car_text_box">
						
					</div>
				</div>
			</div>
		</div>
  </div>
</template>

<script>
	import {$,$$} from '../assets/js/base.js'
	import mainNav from '../components/main_nav'
	export default {
		name: 'orderform',
		components:{
			mainNav
		},
		data(){
			return {
			
			}
		}
	}
</script>

<style>
	.banner_box{
		width: 100%;
	}
	.car_box{
		width: 1200px;
		margin: 0 auto;
		margin-top: 20px;
		/* height: 200px; */
		/* background-color: lavender; */
	}
	.car_list{
		width: 100%;
		/* background-color: lightgray; */
		height: 200px;
		display: flex;
		margin-bottom: 20px;
		justify-content: space-around;
		box-shadow: 5px 5px 2px #e6e3e3;
	}
	.car_list img{
		width: 20%;
		height: 200px;
		background-color: lightcoral;
	}
	.car_text_box{
		width: 75%;
		height: 200px;
		background-color: lightgreen;
	}
</style>
