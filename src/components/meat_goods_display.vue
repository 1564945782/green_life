<template>
	<div class="meat_goods_dispaly">
		<div class="box">
			<div class="left-box">
				<img src="http://y.hy755.cn/6400/advance/pics/20170717/1500269931.jpg" alt="">
			</div>
			<div class="right-box">
				<!-- one -->
				<div class="list">
					<div class="list-img">
						<img src="http://img0.imgtn.bdimg.com/it/u=3367837930,3516456228&fm=15&gp=0.jpg" alt="">
					</div>
					<div class="list-text">
					<!-- 这里是商品信息 -->
						 <el-button type="success" round class="btn" @click="jump()">查看详情</el-button>
					</div>
				</div>
				<!-- two -->
				<div class="list">
					<div class="list-img">
						<img src="http://img2.imgtn.bdimg.com/it/u=3328393433,2537053519&fm=15&gp=0.jpg" alt="">
					</div>
					<div class="list-text">
						<!-- 这里是商品信息 -->
					</div>
				</div>
				<!-- three -->
				<div class="list">
					<div class="list-img">
						<img src="http://img4.imgtn.bdimg.com/it/u=1897516419,4142071001&fm=15&gp=0.jpg" alt="">
					</div>
					<div class="list-text">
						<!-- 这里是商品信息 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: 'meat_goods_dispaly',
		data() {
			return {
				msg: 'Welcome to Your Vue.js App'
			};
		},
		methods:{
			jump (){
				this.$router.push({path: '/details'})
			}
		}
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
	.list-text{
		  width: 77%;
		  height: 170px;
		  background-color: lightblue;
	}
	/* 按钮 */
	
</style>
