<template>
	<view>
		<!-- 顶部切换 -->

		<shuffling :style="{display:first_show==1?'block':'none'}"></shuffling>
		<view class="textbox" :style="{display:sec_show==1?'block':'none'}">
			<view class="box_one">
				<view class="date">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268095.png" alt="">
				</view>
				<view class="text-left">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268221.png" alt="">
				</view>
			</view>
		</view>
		<bionic :style="{display:thir_show==1?'block':'none'}"></bionic>
		<!-- 分类 选择-->
		<view class="classification center">
			<ul>
				<li class="nav01" @click="sonchange(0)">花卉</li>
				<li class="nav02" @click="sonchange(1)">多肉</li>
				<li class="nav03" @click="sonchange(2)">仿生</li>
			</ul>
		</view>
		<view class="first_f" :style="{display:first_show==1?'block':'none'}">
			<!-- 花卉 -->
			<flower-nav :classname="classname[0]"></flower-nav>
			<flower-displaya :mydata="myflower.slice(0,3)"></flower-displaya>
			<flower-displayb :c_img="myflower.slice(2,6)"></flower-displayb>

			<flower-nav :classname="classname[1]"></flower-nav>
			<flower-displaya :mydata="myflower.slice(3,6)"></flower-displaya>
			<flower-displayb :c_img="myflower.slice(0,4)"></flower-displayb>
		</view>
		<view class="second_d" :style="{display:sec_show==1?'block':'none'}">
			<!-- 多肉 -->
			<view class="textbox" :style="{display:sec_show==1?'block':'none'}">
				<view class="box_one">
					<view class="img-box">
						<img src="http://y.hy755.cn/6400/advance/pics/20170717/1500268278.jpg" alt="">
					</view>
				</view>
			</view>
			<!-- 第二部分 -->
			<meat-displaya></meat-displaya>
			<!-- 第三部分 -->
			<!-- 过度部分 -->
			<meat-nav></meat-nav>
			<view class="headline">
				<view class="box_three">
					<view class="text-1">奇趣.多肉金秋生长季</view>
				</view>
			</view>
			<view class="headline">
				<view class="box_three">
					<view class="text-2">倾听花之语，回归童之真，感悟最初心；只要世界还有花，生活就不会太差！</view>
				</view>
			</view>
			<!-- 商品信息 -->
			<meat-nava></meat-nava>
			<meat-display></meat-display>
		</view>
		<view class="third_s" :style="{display:thir_show==1?'block':'none'}">
			<!-- 仿生 -->
			<meat-nava></meat-nava>
			<flower-displayb :c_img="myflower.slice(2,6)"></flower-displayb>
			<flower-nav :classname="classname[2]"></flower-nav>
			<meat-display></meat-display>
			<meat-nav></meat-nav>
			<meat-displaya></meat-displaya>
		</view>
		<load-more></load-more>
	</view>
</template>

<script>
	let globalData = getApp();
	import App from '../../App.vue'
	import shuffling from '../../components/shuffling.vue'
	import flowerNav from '../../components/flower_nav.vue'
	import flowerDisplaya from '../../components/flower_display_a.vue'
	import flowerDisplayb from '../../components/flower_display_b.vue'
	import loadMore from '../../components/load_more.vue'
	import meatDisplay from '../../components/meat_display.vue'
	import bionic from '../../components/bionic_display.vue'
	import meatNav from '../../components/meat_nav.vue'
	import meatNava from '../../components/meat_nav_a.vue'
	import meatDisplaya from '../../components/meat_display_a.vue'
	export default {
		components: {
			shuffling,
			flowerNav,
			flowerDisplaya,
			flowerDisplayb,
			meatDisplay,
			bionic,
			meatNav,
			meatNava,
			meatDisplaya,
			loadMore
		},
		data() {
			return {
				first_show: 1,
				sec_show: 0,
				thir_show: 0,
				more_meat: [],
				myflower: [],
				mybionic: [],
				classname: ["水培", "土培","仿生"],
				flag: 1
			};
		},
		methods: {
			mychange(e) {
				console.log(e);
				this.flag = e;
				console.log(this.flag)
			},
			sonchange(e) {
				console.log(e)
				if (e == 0) {
					this.first_show = 1;
					this.sec_show = 0;
					this.thir_show = 0;
				}
				if (e == 1) {
					this.first_show = 0;
					this.sec_show = 1;
					this.thir_show = 0;
				}
				if (e == 2) {
					this.first_show = 0;
					this.sec_show = 0;
					this.thir_show = 1;
				}
			}
		},
		onLoad() {
			console.log("find-------------监听页面加载 ")
			let globaldata = globalData.globalMusicList;
			for (let a in globaldata) {
				if (globaldata[a].type == '多肉') {
					this.more_meat.push(globaldata[a])
				}
				if (globaldata[a].type == '花卉') {
					this.myflower.push(globaldata[a])
				}
				if (globaldata[a].type == '仿生植物') {
					this.mybionic.push(globaldata[a])
				}

			}
			console.log(this.more_meat)
			console.log(this.myflower)
			console.log(this.mybionic)

		}
	}
</script>

<style>
	.center {
		margin: auto;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
	}

	.classification {
		width: 100%;
	}

	.classification ul {
		width: 100%;
		height: 40px;
		margin: 0upx;
		padding: 0px;
		display: flex;
		align-items: center;
		justify-content: space-around;
		color: #347b2c;
		background-color: #eccdc852;
	}

	ul li {
		width: 10%;
		list-style-type: cambodian;
	}

	ul li:hover {
		color: #50ce66;
	}

	.textbox {
		width: 100%;
		margin: 5px 0px;
	}

	.box_one {
		width: 100%;
		margin: 0 auto;
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;
	}

	.box_one view {
		width: 50%;
		display: flex;
		justify-content: space-around;
		align-items: center;
	}

	.box_one img {
		width: 90%;
		height: 100%;
	}

	.box_one .img-box {
		width: 100%;
		margin: 5px 0px;
	}

	.box_one .img-box img {
		width: 100%;
	}

	
	.headline {
		width: 100%;
	}

	.box_three {
		width: 100%;
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
		width: 90%;
		color: #CDA3B6;
		font-size: 14px;
		margin: 10px 20px 0 20px;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
</style>
