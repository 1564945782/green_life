<template name="meatNava">
	<view class="goods-info">
		<view class="box_four">
			<view class="top_left">
				<view class="headingE">
					GOD LOST HUMAN FLESH,PALETTE
				</view>
	
			</view>
			<view class="roll-box">
				<view>多肉动态</view>
				<view class="roll-text">一份精致，一载优雅；一点淡然，一点牵挂</view>
				<view class="headingC">
					多肉，上帝遗落人间的调色板
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name:"meatNava",
		data() {
			return {
				
			};
		}
	}
</script>


<style>
	.goods-info {
			width: 100%;
			margin-top: 30px;
		}
	
		.box_four {
			width: 100%;
			margin: 0 auto;
			height: 85px;
			display: flex;
			justify-content: space-around;
		}
	
		.info-top {
			width: 100%;
		}
	
		.top_left {
			width: 26%;
			height: 100%;
			margin-left: 5px;
			font-size: 14px;
			text-align: center;
			/* background-color: #d5d6d57d; */
			border: 1px solid #d5d6d57d;
			display: flex;
			align-items: center;
		}
	
		.headingE {
			width: 100%;
			font-weight: bolder;
		}
.headingC {
		color: #CDA3B6;
	}

	.left-img {
		margin-top: 25px;
	}

	.roll-box {
		width: 70%;
		height: 100%;
		font-size: 14px;
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500269144.jpg");
		display: flex;
		align-items: center;
		justify-content: center;
		flex-wrap: wrap;
	}

	.roll-box view {
		width: 98%;
		font-weight: bolder;
		color: whitesmoke;
		margin-left: 20px;
	}
</style>
