<template name='meat_display'>
	<view class="meat_goods_dispaly">
		<view class="box">
			
			<view class="right-box">
				<!-- one -->
				<view class="list">
					<view class="list-img">
						<img src="http://img0.imgtn.bdimg.com/it/u=3367837930,3516456228&fm=15&gp=0.jpg" alt="">
					</view>
					<view class="list-text">
					<!-- 这里是商品信息 -->
						 <view round class="btn" @click="jump()">查看详情</view>
					</view>
				</view>
				<!-- two -->
				<view class="list">
					<view class="list-img">
						<img src="http://img2.imgtn.bdimg.com/it/u=3328393433,2537053519&fm=15&gp=0.jpg" alt="">
					</view>
					<view class="list-text">
						<!-- 这里是商品信息 -->
					</view>
				</view>
				<!-- three -->
				<view class="list">
					<view class="list-img">
						<img src="http://img4.imgtn.bdimg.com/it/u=1897516419,4142071001&fm=15&gp=0.jpg" alt="">
					</view>
					<view class="list-text">
						<!-- 这里是商品信息 -->
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: 'meat_display',
		data() {
			return {
				
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
		width: 100%;
		margin: 0 auto;
		display: flex;
		justify-content: space-around;
		background: url("http://y.hy755.cn/6400/advance/pics/20170717/1500269931.jpg") fixed no-repeat;
		    background-size: contain;
	}
	.left-box{
		width: 30%;
		height: 545px;
	}
	.right-box{
		width: 100%;
	}
	.list{
		  width: 100%;
		  height: 135px;
		      margin: 10px 5px;
		  display: flex;
		  justify-content: space-around;
	}
	.list-img{
		      width: 30%;
    height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	}
	.list-img img{
		width: 100%;
		height: 100%;
	}
	.list-text{
		  width: 70%;
		  height: 135px;
		  background-color: #add8e6d9;
	}
</style>
