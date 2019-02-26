<template>
  <div class="moremeat">
		<main-nav></main-nav>
		<section class="banner">
			<div class="banner_box">
				<el-carousel :interval="4000" type="card" height="300px">
					<el-carousel-item v-for="(item,index) in 6" :key="item" :style="{backgroundImage:'url('+items[index]+')'}">
						<h3>{{ item }}</h3>
					</el-carousel-item>
				</el-carousel>
			</div>
		</section>
		<!-- 中间第一部分 -->
		<div class="textbox">
			<div class="box_one">
				<div class="date">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268095.png" alt="">
				</div>
				<div class="text-left">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268221.png" alt="">
				</div>
				<div class="img-box">
					<img src="http://y.hy755.cn/6400/advance/pics/20170717/1500268278.jpg" alt="">
				</div>
			</div>
		</div>
		<!-- 中间第二部分 -->
		<div class="type">
			<div class="box_two">
				<div class="type-item one">
					
				</div>
				<div class="type-item">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268616.jpg" alt="">
				</div>
				<div class="type-item three">
					
				</div>
				<div class="type-item">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268673.jpg" alt="">
				</div>
			</div>
		</div>
		<div class="type">
			<div class="box_two">
				<div class="type-item">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268396.jpg" alt="">
				</div>
				<div class="type-item two">
				</div>
				<div class="type-item">
					<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268414.jpg" alt="">
				</div>
				<div class="type-item four">
				</div>
			</div>
		</div>
		<!-- 过度部分 -->
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
		<!-- 商品信息 -->
		<div class="goods-info">
			<div class="box_four">
				<div class="top_left">
					<div class="headingE">
						GOD LOST HUMAN FLESH,PALETTE
					</div>
					<div class="headingC">
						多肉，上帝遗落人间的调色板
					</div>
				</div>
				<div class="roll-box">
					<div>多肉动态</div>
					<div class="roll-text">一份精致，一载优雅；一点淡然，一点牵挂</div>
				</div>
			</div>
		</div>
		<!-- 引入的组件 -->
		<meat-goods-display></meat-goods-display>
		<!-- 公共底部 -->
		<bottom-footer></bottom-footer>
		<a href="#" class="back-top" title="返回顶部">↑</a>
  </div>
</template>

<script>
	import {$,$$} from '../assets/js/base.js'
	import mainNav from '../components/main_nav'
	import meatGoodsDisplay from '../components/meat_goods_display.vue'
	import bottomFooter from '../components/bottom_footer.vue'
	import Meat_card1 from '../assets/img/meat-card1.jpg'
	import Meat_card2 from '../assets/img/meat-card2.jpg'
	import Meat_card3 from '../assets/img/meat-card3.jpg'
	import Meat_card4 from '../assets/img/meat-card4.jpg'
	import Meat_card5 from '../assets/img/meat-card5.jpg'
	import Meat_card6 from '../assets/img/meat-card6.jpg'
	export default {
		name: 'moremeat',
		components:{
			mainNav,meatGoodsDisplay,bottomFooter
		},
		data(){
			return {items:[Meat_card1,Meat_card2,Meat_card3,Meat_card4,Meat_card5,Meat_card6
			]}
		}
	}
</script>

<style>
	.el-carousel__item--card {
		width: 450px;
	}
	.banner{
		width: 100%;
		margin-top: 20px;
		background-color: #484646;
	}
	.banner_box{
		width: 1200px;
		margin: 0 auto;
		overflow: hidden;
	}
	.el-carousel {
		overflow-x: hidden;
		position: relative;
		width: 100%;
		left: 70px;
	}
.el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 200px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(1) {
    background: url();
  }
  
  .el-carousel__item:nth-child(2) {
    background: url();
  }
  .el-carousel__item:nth-child(3) {
    background: url();
  }
  .el-carousel__item:nth-child(4) {
    background: url();
  }
  .el-carousel__item:nth-child(5) {
    background: url();
  }
  .el-carousel__item:nth-child(6) {
    background: url();
  }
  .textbox{
	  width: 100%;
	  margin-top: 20px;
  }
  .box_one{
	  width: 1200px;
	  margin: 0 auto;
	   display: flex;
	  justify-content: space-around;
  }
  .type{
	  width: 100%;
	  height: 300px;
  }
  .box_two{
	  width: 1200px;
	  margin: 0 auto;
	  display: flex;
	  justify-content: space-around;
  }
  .type-item{
	  width: 300px;
	  height: 300px;
  }
  .one{
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268592.jpg");
  }
  .one:hover{
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268577.jpg");
  }
  .two{
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268519.jpg");
  }
  .two:hover{
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268443.jpg");
  }
  .four{
  	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268553.jpg");
  }
  .four:hover{
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268543.jpg");
  }
  .three{
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268647.jpg");
  }
  .three:hover{
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268640.jpg");
  }
  .excessive{
	  margin-top: 35px;
	  width: 100%;
	  height: 98px;
	  display: flex;
  }
  .line{
	  width: 100%;
	  height: 2px;
	  background-color: lightgray;
	  margin-top: 49px;
  }
  .headline{
	  width: 100%;
  }
  .box_three{
	  width: 1200px;
	  margin: 0 auto;
  }
  .text-1{
	  width: 150px;
	  color: #89C3BB;
	  font-size: 16px;
	  margin: 0 auto;
	  margin-top: 10px;
  }
  .text-2{
	  width: 476px;
	  color: #CDA3B6;
	  font-size: 14px;
	  margin: 0 auto;
	  margin-top: 10px;
  }
  .goods-info{
	  width: 100%;
	  margin-top: 50px;
  }
  .box_four{
	  width: 1200px;
	  margin: 0 auto;
	  display: flex;
	  justify-content: space-around;
  }
  .info-top{
	  width: 100%;
  }
  .top_left{
	  width: 30%;
	  margin-left: 5px;
  }
  .headingE{
	  width: ;
	  font-size: 22px;
	  font-weight: bolder;
	  margin-bottom: 10px;
  }
  .headingC{
	  color: #CDA3B6;
  }
   .left-img{
  	  margin-top: 25px;
  }
  .roll-box{
	  width: 795px;
	  height: 85px;
	  background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500269144.jpg");
  }
  .roll-box div{
	  font-size: 22px;
	  font-weight: bolder;
	  color: whitesmoke;
	  margin-left: 10px;
	  margin-top: 10px;
  }
  
  
</style>
