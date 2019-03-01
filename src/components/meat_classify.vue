<template>
	<div class="meat_classify">
		<div class="center_box">
			<!-- 这是多肉分类组件 -->
			<div class="type">
				<div class="box_two">
					<div class="type-item one">
						<router-link to="/meat_classify_display" class="jump"></router-link>
					</div>
					<div class="type-item">
						<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268616.jpg" alt="">
					</div>
					<div class="type-item three">
						<router-link to="/meat_classify_display" class="jump"></router-link>
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
						<router-link to="/meat_classify_display" class="jump"></router-link>
					</div>
					<div class="type-item">
						<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268414.jpg" alt="">
					</div>
					<div class="type-item four">
						<router-link to="/meat_classify_display" class="jump"></router-link>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
		// import $ from "jquery"
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
			name: 'meat_classify',
			components:{
				
			},
			props:["meatC"],
			data(){
				return {
					items:[Meat_card1,Meat_card2,Meat_card3,Meat_card4,Meat_card5,Meat_card6],
					moreMeat:[]
				}
			},
	}

</script>

<style>
	.meat_classify{
		width: 100%;
	}
	.center_box{
		width: 1200px;
		margin: 0 auto;
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;
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
	.jump{
		display: inline-block;
		height: 100%;
		width: 100%;
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
	
</style>
