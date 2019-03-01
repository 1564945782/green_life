<template name="hometop">
	<view class="wrap">
		<view class="banner">
			<h1>买盆栽，就找萌芽小镇</h1>
			<p>将绿意带回日常家居、办公，享受健康生活</p>
			<br /><a href="#">联系我们</a><br />
			<view class="btn">
				<button type="button" class="circle-one"></button>
				<button type="button" class="circle-two"></button>
				<button type="button" class="circle-three"></button>
			</view>		
		</view>
		<view class="ercode"></view>
		<view class="searched"></view>
		<view class="membercode"></view>
	</view>
</template>

<script>
	export default {
		name:"hometop",
		data() {
			return {
				msg1:"data值"
			};
		},
		props:{
			msg:"首页"
		}
	}
</script>

<style>
.wrap{
    width: 100%;		
}
.banner{
	text-align: center;
    height: 227px;
    background: url(../static/home/f_home_banner_bg.jpg) no-repeat fixed;
    background-size: contain;
}
.banner h1{
	color: #fff;
	display: inline-block;
	font: 900 35px "\5FAE\8F6F\96C5\9ED1";
	margin-top: 20px;
	border-bottom: 4px solid #fff;
}
.banner p{
	color: #fff;
	font-size: 12px;
	margin-top: 15px;
}
.banner a{
	display: inline-block;
	color: #fff;
	height: 50px;
	width: 100px;
	font: 700 24px/50px "微软雅黑";
	padding: 0 20px;
	border: 2px solid #fff;
	border-radius:25px;
}
.banner a:hover{
	background: rgba(150,150,150,.3);
}
.banner [class^="circle"]{
    height: 10px;
    width: 10px;
    border: 2px solid #fff;
    border-radius: 50%;
    margin: 20px 10px 0;
    background: rgba(255, 255, 255, 0.16);
    padding: 0px;
}
[class^="circle"]:hover{
	background: rgba(100,100,100,.5);
}
.btn{
	display: flex;
	align-content: center;
	justify-content: center;
}
</style>
