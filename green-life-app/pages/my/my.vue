<template>
	<view class="bgimg">
		<view class="head_img">
			<img src="" alt="">
		</view>
		<view class="myname">
			<p>哈哈哈</p>
		</view>
		 <view class="myinfo1">
		 	<view class="vipname">
				<!-- 会员名：xxx -->
				<p>会员名:</p>
				<p>xxx</p>
		 	</view>
		 </view>
		<view class="myinfo1">
			<view class="vipname">
				<p>性别：</p>
				<p>女</p>
			</view>
		</view>
		<view class="myinfo1">
			<view class="vipname">
				<p>邮箱：</p>
				<p>123@163.com</p>
			</view>
		</view>
		<view class="myinfo1">
			<view class="vipname">
				<p>电话：</p>
				<p>12334556666</p>
			</view>
		</view>
		<view class="myinfo1">
			<view class="vipname">
				<p>生日：</p>
				<p>12334556666</p>
			</view>
		</view>
		<view class="btn_box">
			<button class="btn_myinfo" @click="change_myinfo">编辑信息</button>
		</view>
	</view>
	</view>
</template>

<script>
	let globalData=getApp();
	export default {
		data() {
			return {
				myinfo:''
			};
		},
		onLoad: function () {
			this.myinfo=globalData.globalUserInfo
			
		},
		methods:{
			change_myinfo:function(){
				uni.navigateTo({
					url: "../login/login"
				})
			}
		}
	}
</script>

<style>
	.bgimg{
		width: 100%;
		height: 100%;
		background: url("../../static/flower/myinfo-bg.jpg");
	}
	.head{
		width: 100%;
		height: 170px;
		border: 1px solid #76D25B;
		/* background-color: #D2DAE8; */
	}
	.head_img{
		width: 130px;
		height: 130px;
		background-color: #CDA3B6;
		border-radius: 50%;
		margin: 0 auto;
	}
	.head_img img{
		width: 100%;
		height: 100%;
	}
	.myname{
		width: 80px;
		height: 40px;
		margin: 0 auto;
		margin-top: 10px;
	}
	.myname p{
		line-height: 20px;
		width: 90px;
		margin: 0 auto;
	}
	.myinfo1{
		width: 100%;
		height: 60px;
		/* background-color: #D2DAE8; */
		margin-top: 10px;
	}
	.vipname{
		width: 60%;
		height: 100%;
		margin: 0 auto;
		/* background-color: #666666; */
		line-height: 60px;
		display: flex;
	}
	.btn_box{
		width: 100%;
		height: 60px;
	}
	.btn_myinfo{
		width: 50%;
		height: 100%;
		border-radius: 10%;
		margin-top: 10px;
		line-height: 60px;
	}
	
</style>
