<template>
	<div class="meat_goods_dispaly">
		<div class="box">
			<div class="left-box">
				<img src="http://y.hy755.cn/6400/advance/pics/20170717/1500269931.jpg" alt="">
			</div>
			<div class="right-box">
				<!-- one -->
				<div class="list" v-for="item in meat">
					<div class="list-img">
						<img class="img_item" :src="item.big_imgs" alt="">
					</div>
					<div class="list-text">
					<!-- 这里是商品信息 -->
						<p class="item_name">【{{item.name}}】</p>
						<p class="item_description">{{item.description}}</p>
						<el-button type="success"  class="btn" @click="jump(item.id)">查看详情</el-button>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	
	export default {
		name: 'meat_goods_dispaly',
		data:function(){
			return {
				
			}
		},
		props:["meat"],
		methods:{
			jump (num){
				console.log(num)
				this.$router.push({path: '/details?id='+num})
			}
		},
		
	}
</script>

<style>
	.meat_goods_dispaly{
		width: 100%;
		margin-top: 30px;
	}
	.box{
		width: 1200px;
		margin: 0 auto;
		display: flex;
		justify-content: space-around;
	}
	.left-box{
		width: 30%;
		height: 545px;
	}
	.right-box{
		width: 65%;
		height: 545px;
	}
	.list{
		  width: 100%;
		  height: 170px;
		  margin-bottom: 16px;
		  display: flex;
		  justify-content: space-around;
	}
	.list-img{
		  width: 20%;
		  height: 170px;
	}
	.img_item{
		width: 100%;
		height: 100%;
	}
	.list-text{
		  width: 77%;
		  height: 170px;
		  background-color: #dfe8f1;
	}
	.item_name{
		font-size: 20px;
		color: #840606;
		font-weight: bold;
		margin-top: 10px;
		margin: 0 auto;
	}
	.item_description{
		font-size: 16px;
		margin-top: 10px;
		margin-left: 10px;
	}
	/* 按钮 */
	.el-button--success {
		color: #fff;
		background-color: #f37272;
		border-color: #f1488b;
		margin: 0 auto;
	}
</style>
