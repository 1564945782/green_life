<template>
	<div class="bionic">
		<main-nav :curUser="currUser"></main-nav>
		<div class="top">
			<div class="top_child">
				<div class="top_child01"><img :src="top_img.bio_src[0]" :alt="top_img.bio_alt[0]" :title="top_img.bio_name[0]" @click="jump(bionic_top[0].id)"></div>
				<div class="top_child02"><img :src="top_img.bio_src[1]" :alt="top_img.bio_alt[1]" :title="top_img.bio_name[1]" @click="jump(bionic_top[1].id)"></div>
				<div class="top_child03"><img :src="top_img.bio_src[2]" :alt="top_img.bio_alt[2]" :title="top_img.bio_name[2]" @click="jump(bionic_top[2].id)"></div>
			</div>
		</div>
		<div class="excessive">
			<div class="line"></div>
			<div class="mid-logo">
				<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268783.png" alt="">
			</div>
			<div class="line"></div>
		</div>
		<div class="headline">
			<div class="box_three">
				<div class="text-1">奇趣.多肉金秋生长季</div>
			</div>
		</div>
		<div class="headline">
			<div class="box_three">
				<div class="text-2">倾听花之语，回归童之真，感悟最初心；只要世界还有花，生活就不会太差！</div>
			</div>
		</div>
		<flower-displayb :flower1="flowerdata1"></flower-displayb>
		<meat-goods-display :meat="moreMeat"></meat-goods-display>
		<bottom-footer></bottom-footer>
	</div>
</template>

<script>
	import axios from 'axios'
	import {
		$,
		$$
	} from '../assets/js/base.js'
	import mainNav from '../components/main_nav'
	import flowerDisplayb from '../components/flower_display_b'
	import flowerNav from '../components/flower_nav'
	import meatGoodsDisplay from '../components/meat_goods_display.vue'
	import bottomFooter from '../components/bottom_footer.vue'
	export default {
		name: 'bionic',
		components: {
			mainNav,
			flowerDisplayb,
			flowerNav,
			meatGoodsDisplay,
			bottomFooter
		},
		methods:{
			jump(m){
				console.log(m);
				this.$router.push({path: '/details?id='+m})
			}
		},
		beforeCreate() {
			let that = this;
			let url = "http://localhost:81/getdatabyajax"
			axios.post(url)
				.then(function(response) {
					for (let i = 0; i < response.data.length; i++) {
						if (response.data[i].type == "仿生植物") {
							that.flowerdata.push(response.data[i])
						}
					}
					console.log(that.flowerdata)
					that.flowerdata1 = that.flowerdata.slice(0, 4)
					that.moreMeat = that.flowerdata.slice(4, 7)
					that.bionic_top = that.flowerdata.slice(7, 10)
					console.log(that.flowerdata1)
				})
		},
		props: ["currUser"],
		data() {
			return {
				bionic_top:[],
				moreMeat:[],
				flowerdata:[],
				flowerdata1:[],
				top_img: {
					"bio_src": [
						'https://gd3.alicdn.com/imgextra/i4/559795223/TB2cCtBfYZnBKNjSZFrXXaRLFXa_!!559795223.jpg_400x400.jpg_.webp',
						'https://img.alicdn.com/imgextra/i4/3064978740/TB2I_vKl8smBKNjSZFFXXcT9VXa_!!3064978740.jpg_430x430q90.jpg',
						'https://img.alicdn.com/imgextra/i4/2264215783/TB2NAubhFXXXXXrXXXXXXXXXXXX_!!2264215783.jpg_430x430q90.jpg'
					],
					"bio_alt": ['小清新', '炽热', '柔和'],
					"bio_name": ["小清新", "炽热", "柔和"]
				}
			}
		}
	}
</script>

<style>
	img:hover {
		opacity: 0.9;
		transition: all .3s ease-in;
	}

	.top {
		margin-bottom: 250px;
		width: 100%;
		height: 500px;
		background-image: url("http://demo.sc.chinaz.com/Files/DownLoad/moban/201809/moban3240/images/bg3.jpg");
		display: flex;
		align-items: flex-end;
		justify-content: center;
	}

	.top_child {
		width: 70%;
		height: 450px;
		position: relative;
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		top: 10%;
	}

	.top_child img {
		width: 100%;
		height: 100%;
	}
	.top_child img:hover{
		opacity: 0.9;
		transition: all .3s ease-in;
		}
	.top_child01 {
		width: 30%;
		height: 250px;
		background-color: green;
		z-index: 2;
		align-self: flex-end;
		position: relative;
		top: 20%;
		left: 10%;
	}

	.top_child02 {
		width: 50%;
		height: 400px;
		background-color: blue;
		z-index: 1;
		align-self: flex-start;
		position: relative;
		top: 20%;
	}

	.top_child03 {
		width: 40%;
		height: 300px;
		background-color: green;
		z-index: 2;
		align-self: flex-end;
		position: relative;
		top: 20%;
		left: -5%;
	}

	.excessive {
		margin-top: 35px;
		width: 100%;
		height: 98px;
		display: flex;
	}

	.line {
		width: 100%;
		height: 2px;
		background-color: lightgray;
		margin-top: 49px;
	}

	.headline {
		width: 100%;
	}

	.box_three {
		width: 1200px;
		margin: 0 auto;
	}

	.text-1 {
		width: 150px;
		color: #89C3BB;
		font-size: 16px;
		margin: 0 auto;
		margin-top: 10px;
	}

	.text-2 {
		width: 476px;
		color: #CDA3B6;
		font-size: 14px;
		margin: 0 auto;
		margin-top: 10px;
	}
</style>
