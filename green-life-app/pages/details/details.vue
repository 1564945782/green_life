<template>
	<view>
		<view class="banner-img">
				<!-- 详情商品的轮播图 -->
				<swiper autoplay="autoplay" interval="2000">
					<swiper-item  v-for="item in bigImg">
						<image :src="item"></image>
					</swiper-item>
				</swiper>
				<view class="bgc">
					<view class="ins_price">￥{{iddata.ins_price}}</view>
					<view class="del_price"><del>￥{{iddata.del_price}}</del></view>	
					<view class="description">{{iddata.description}}</view>
				</view>
				<view class="line"></view>
				<view class="sell_box">
					<view class="sell">
						<view class="sells">已售:{{iddata.sells}}</view>
						<view class="sells">库存:{{iddata.inventory}}</view>
					</view>
				</view>
				<view class="line"></view>
				<view class="sell_box">
					<view class="lists">
						<view class="get">领卷</view>
						<view class="type">满118元减10券；满88元减5券</view>
					</view>
				</view>
				<view class="line"></view>
				<view class="sell_box">
					<view class="lists">
						<view class="get">服务</view>
						<view class="type">订单险：不支持7天无理由退货</view>
					</view>
				</view>
				<view class="line"></view>
				<view class="sell_box">
					<view class="lists">
						<view class="get">规格</view>
						<view class="type">请选择颜色分类，是否含花盆</view>
					</view>
				</view>
				<view class="line"></view>
				<view class="btn_box">
					<view class="two_btn">
						<button class="btn1" @click="shopping_car">加入购物车</button>
						<button class="btn2">立即购买</button>
					</view>
				</view>
		</view>
	</view>
</template>

<script>
	let globalData=getApp();
	export default {
		data() {
			return {
				goodsData:"",
				iddata:"",
				myid:"",
				bigImg:[]
			};
		},
		methods:{
			shopping_car:function(){
				uni.switchTab({
					url:"../cart/cart"
				})
			}
		},
		onLoad:function(option) {
			console.log("index-------------监听页面加载 ")
			this.goodsData=globalData.globalMusicList
			console.log(option.id)
			for(let i=0;i<this.goodsData.length;i++){
				if(option.id==this.goodsData[i].id){
					this.iddata=this.goodsData[i]
					//console.log(this.iddata.big_imgs.split(","))
					this.bigImg=this.iddata.big_imgs.split(",")
				}
			}
		}
	}
</script>
<style>
	.banner-img{
		width: 100%;
	}
	swiper {
		width: 100%;
		height: 240px;
		background-color: #008000;
	}
	swiper-item{
		width: 100%;
		height: 100%;
	}
	swiper-item image{
		width: 100%;
		height: 240px;
	}
	.bgc{
		/* background-color: #f2f2f2; */
		margin-top: 5px;
		font-family: "微软雅黑";
	}
	.ins_price{
		font-size: 30px;
		color: #ff5000;
		margin-left: 5px;
		font-family: "微软雅黑";
	}
	.line{
		width: 100%;
		height: 10px;
		background-color: #f2f2f2;
	}
	.del_price{
		font-size: 16px;
		color: #999;
		margin-left: 5px;
	}
	.description{
		font-size: 20px;
		font-family: "微软雅黑";
	}
	.sell_box{
		width: 100%;
		/* background-color: #f2f2f2; */
	}
	.sell{
		width: 180px;
		height: 40px;
		/* background-color: #f2f2f2; */
		display: flex;
		justify-content: space-between;
		margin-top: 10px;
		font-family: "微软雅黑";
		font-size: 18px;
		line-height: 40px;
	}
	.sells{
		margin-left: 5px;
	}
	.lists{
		width: 325px;
		height: 40px;
		line-height: 40px;
		/* background-color: #f2f2f2; */
		display: flex;
		justify-content: space-between;
		margin-top: 10px;
		font-size: 18px;
		margin-left: 5px;
	}
	.get{
		color: #8a8585;
	}
	.btn_box{
		width: 100%;
		height: 60px;
		background-color: #e0dbdb;
	}
	.two_btn{
		width: 100%;
		height: 60px;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
	}
	.btn1{
		width: 50%;
		height: 100%;
	}
	.btn2{
		width: 50%;
		height: 100%;
	}
</style>
