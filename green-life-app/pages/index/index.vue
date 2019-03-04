<template>
	<view class="content">
		<hometop />
		<view class="recommend-est">
			<h2>○<span>推荐</span>○</h2>
			<home-display v-for="(item,index) in goodsData.slice(0,4)" :singleData="item" :key="index"></home-display>
		</view>
		<view class="new-est">
			<h2>○<span>最新</span>○</h2>
			<home-display v-for="(item,index) in goodsData.slice(4,8)" :singleData="item" :key="index"></home-display>
		</view>
		<view class="hot-est">
			<h2>○<span>最热</span>○</h2>
			<home-display v-for="(item,index) in goodsData.slice(8,12)" :singleData="item" :key="index"></home-display>
		</view>
		<load-more></load-more>
	</view>
</template>

<script>
	let globalData=getApp();
	import App from '../../App.vue'
	import hometop from '../../components/hometop.vue'
	import homeDisplay from '../../components/home_display.vue'
	import loadMore from '../../components/load_more.vue'
	export default {
		components: {
			hometop,
			homeDisplay,
			loadMore
		},
		data() {
			return {
				goodsData:"",
				title: 'Hello',
				singleDatarr: {
					singleData: {
						big_imgs: ["http://y.hy755.cn/6400/diy/pics/20170717/1500268095.png"],
						name: "睡莲",
						description: "大型睡莲盆栽:大型睡莲盆栽:大型睡莲盆栽:大型睡莲盆栽:1、大型睡莲盆栽:",
						del_price: "200",
						ins_price: "199.88"

					},
					singleData1: {
						big_imgs: [
							"https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuicFAqe47L1y_!!4137666646.jpg_400x400.jpg_.webp"
						],
						name: "大丽花",
						description: "大型睡莲盆栽:大型睡莲盆栽:大型睡莲盆栽:采用多次换盆为好。",
						del_price: "100",
						ins_price: "99.88"
					},
					singleData2: {
						big_imgs: [
							"https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuicFAqe47L1y_!!4137666646.jpg_400x400.jpg_.webp"
						],
						name: "大丽花",
						description: "大型睡莲盆栽:大型睡莲盆栽:大型睡莲盆栽:采用多次换盆为好。",
						del_price: "100",
						ins_price: "99.88"
					},
					singleData3: {
						big_imgs: ["http://y.hy755.cn/6400/diy/pics/20170717/1500268095.png"],
						name: "睡莲",
						description: "大型睡莲盆栽:大型睡莲盆栽:大型睡莲盆栽:大型睡莲盆栽:1、大型睡莲盆栽:",
						del_price: "200",
						ins_price: "199.88"

					}
				}
			}
		},
		methods: {

		},
		onLoad() {
			console.log("index-------------监听页面加载 ")
			this.goodsData=globalData.globalMusicList
			console.log(this.goodsData)
		},

		onShow() {

			console.log("监听页面显示 ")

		},

		onReady() {
			console.log("监听页面初次渲染完成 ")
		},

		onHide() {
			console.log("监听页面隐藏 ")

		},

		onUnload() {
			console.log("监听页面卸载 ")

		},

		onPullDownRefresh() {

			console.log("监听用户下拉动作，一般用于下拉刷新  ")

		},

		onReachBottom() {

			console.log("页面上拉触底事件的处理函数  ")

		},

		onShareAppMessage() {

			console.log("用户点击右上角分享  ")

		},

		onNavigationBarButtonTap(e) {

			console.log("监听原生标题栏按钮点击事件，参数为Object    ")

		},

		onPageScroll(e) {

			console.log("监听页面滚动，参数:" + e)

		},

		onTabItemTap() {

			console.log("当前是 tab 页时，点击 tab 时触发  ")

		}
	}
</script>

<style>
	.content {
		text-align: center;
		margin: 0;
		color: #4caf50d1;
	}

	.logo {
		height: 200upx;
		width: 200upx;
		margin-top: 200upx;
	}

	.title {
		font-size: 36upx;
		color: #8f8f94;
	}

	[class$="-est"] {
		text-align: center;
		/* height: 800px; */
		background: #eee;
	}

	[class$="-est"] h2 {
		color: #56d25b;
		padding: 15px 0;
		text-align: center;
		width: 100%;
		background-size: cover;
	}

	.hot-est h2 {
		background: url(http://y.hy755.cn/6400/advance/pics/20170717/1500269931.jpg) no-repeat fixed;
		height: 100%;
		background-size: cover;
	}

	.new-est h2 {
		background: url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551033508107&di=33ddead123192c5a28304c0d0e2d4d2f&imgtype=0&src=http%3A%2F%2Fwww.xinjiadiy.com%2Fimages%2Farticle_img%2Ftuwen%2F20170509%2F4999.jpg) no-repeat fixed;
	}

	[class$="-est"] h2 span {
		margin: 0 20px;
	}
</style>
