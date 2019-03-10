<template>
  <div class="home">
		<main-nav :curUser="currUser"></main-nav>
		<section class="f-banner">
			<h1>买盆栽，就找萌芽小镇</h1>
			<p>将绿意带回日常家居、办公，享受健康生活</p>
			<button type="button" class="arrow-left"><</button>
			<button type="button" class="arrow-right">></button>
			<br /><a href="#">联系我们</a><br />
			<button type="button" class="circle-one"></button>
			<button type="button" class="circle-two"></button>
			<button type="button" class="circle-three"></button>
		</section>
		<section class="new-est">
			<h2>○<span>最新</span>○</h2>
			<home-display v-for="(item,index) in goodsData.slice(0, 8)" :singleData="item"></home-display>
		</section>
		<div class="take-space">
			<p><b>一抹绿意，带给您不一样的清新</b><p>
			<p>一抹绿意，一份绿色的心情————又是美好的一天</p>
		</div>
		<section class="hot-est">
			<h2>○<span>最热</span>○</h2>
			<home-display v-for="(item,index) in goodsData.slice(2, 10)" :singleData="item"></home-display>
		</section> 
		<div class="take-space">
			<p><b>绿色生活，享受健康生活</b><p>
			<p>清晨的第一缕眼光，伴随暖暖绿意，把你唤醒————致美好生活的样子</p>
		</div>
		<section class="recommend-est">
			<h2>○<span>推荐</span>○</h2>
			<home-display v-for="(item,index) in goodsData.slice(4, 12)" :singleData="item"></home-display>
		</section>
		<bottom-footer></bottom-footer>
		<a href="#" class="back-top" title="返回顶部">↑</a>
  </div>
</template>

<script>
	import  qs from 'qs';
	import $ from "jquery";
	import axios from "axios"
	import mainNav from '../components/main_nav'
	import homeDisplay from '../components/home_display.vue'
	import bottomFooter from '../components/bottom_footer.vue'
	//生命周期函数： beforeCreate，created，beforeMount，mounted，beforeUpdate，updated，beforeDestroy，destroyed
	export default {
		name: 'home',
		data:function(){
			return {
				goodsData:"",
				cookieTel:"",
				cookiePwd:""
			}
		},
		props:["currUser"],
		components:{
			mainNav,
			bottomFooter,
			homeDisplay
		},
		mounted(){
			let that=this;
			let url="http://localhost:81/getgoodsdata?cb=?"
			$.getJSON(url,function(result){
				that.goodsData=result;
				for(var i=0;i<that.goodsData.length;i++){
					if(that.goodsData[i].type=="花卉"){
						console.log(that.goodsData[i].big_imgs.split(",")[0])
					}
				}
			})
			if(document.cookie){
				let that=this;
				this.cookieTel=document.cookie.split(";")[0].split("=")[1];
				this.cookiePwd=document.cookie.split(";")[1].split("=")[1];
				axios.post('http://localhost:81/user_login',qs.stringify({
					tel:that.cookieTel,
					pwd:that.cookiePwd
				}))
				.then(function (response) {
					that.$emit('getCurrentUser', response.data[0])// childByValue是在父组件on监听的方法// 第二个参数this.childValue是需要传的值
				})
				.catch(function (error) {
					console.log(error);
				});
			}
		}
	}
</script>

<style>
	.home{
		height: 1000px;
		width: 100%;
	}
	.f-banner{
		text-align: center;
		height: 600px;
		background: url(../assets/img/f_home_banner_bg.jpg) no-repeat fixed left -100px/100%;
	}
	.f-banner h1{
		color: #fff;
		display: inline-block;
		font: 900 50px "微软雅黑";
		padding: 5px 0;
		margin-top: 120px;
		border-bottom: 4px solid #fff;
	}
	.f-banner p{
		color: #fff;
		font-size: 18px;
		margin-top: 10px;
	}
	.f-banner [class^="arrow"]{
		color: #fff;
		height: 80px;
		width: 80px;
		margin-top: 15px;
		font-size: 80px;
		line-height: 80px;
		border-radius: 50%;
		border: 2px solid #fff;
		background: transparent;
	}
	[class^="arrow"]:hover{
		background: rgba(200,200,200,.3);
	}
	.arrow-left{
		float: left;
		margin-left: 60px;
	}
	.arrow-right{
		float: right;
		margin-right: 60px;
	}
	.f-banner a{
		display: inline-block;
		color: #fff;
		height: 50px;
		width: 100px;
		font: 700 24px/50px "微软雅黑";
		padding: 0 20px;
		margin-top: 40px;
		border: 2px solid #fff;
		border-radius:25px;
	}
	.f-banner a:hover{
		background: rgba(150,150,150,.3);
	}
	.f-banner [class^="circle"]{
		height: 20px;
		width: 20px;
		border: 2px solid #fff;
		border-radius: 50%;
		margin: 150px 10px 0;
		background: rgba(255,255,255,.3);
	}
	[class^="circle"]:hover{
		background: rgba(100,100,100,.5);
	}
	.take-space{
			height: 400px;
			width: 100%;
	}
	.take-space:nth-of-type(1){
		background: url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551033508106&di=1bcba8eaff061d2b6efe26e54bc932aa&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2017-12-02%2F5a2263b65ca0a.jpg) no-repeat fixed left top/100%;
	}
	.take-space:nth-of-type(2){
		background: url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551033508107&di=33ddead123192c5a28304c0d0e2d4d2f&imgtype=0&src=http%3A%2F%2Fwww.xinjiadiy.com%2Fimages%2Farticle_img%2Ftuwen%2F20170509%2F4999.jpg) no-repeat fixed left top/100%;
	}
	.take-space p{
		color: #fff;
		font-size: 18px;
		text-align: center;
	}
	.take-space p:first-child{
		position: relative;
		top: 110px;
	}
	.take-space p:last-child{
		position: relative;
		top: 130px;
	}
	.take-space b{
		font: 700 32px/50px "微软雅黑";
		border-bottom: 1px solid #fff;
	}
	[class$="-est"]{
		text-align: center;
		/* height: 800px; */
		background: #eee;
	}
	[class$="-est"] h2{
		color: #56d25b;
		padding: 15px 0;
		text-align: center;
	}
	[class$="-est"] h2 span{
		margin: 0 20px;
	}
	.back-top{
		position: fixed;
		font: 900 40px/60px "微软雅黑";
		text-align: center;
		bottom: 30px;
		right: 30px;
		color: #ccc;
		height: 60px;
		width: 60px;
		border: 0;
		border-radius: 6px;
		background: rgba(100,100,100,.6);
	}
	.back-top:hover{
		color: #999;
		background: rgba(100,100,100,1);
	}
</style>


