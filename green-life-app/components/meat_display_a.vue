<template name="meatDisplaya">
	<view class="type">
		<view class="box_two">
			<view class="type-item one">
	
			</view>
			<view class="type-item">
				<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268616.jpg" alt="">
			</view>
	
			<view class="type-item">
				<img src="http://y.hy755.cn/6400/diy/pics/20170717/1500268673.jpg" alt="">
			</view>
			<view class="type-item three">
	
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name:"meatDisplaya",
		data() {
			return {
				
			};
		}
	}
</script>

<style>
.type {
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-wrap: wrap;
	}

	.box_two {
		width: 100%;
		margin: 0 auto;
		display: flex;
		justify-content: space-around;
		align-items: center;
		flex-wrap: wrap;
	}

	.type-item {
		width: 48%;
		height: 200px;
		margin: 4px;
	}

	.type-item img {
		width: 100%;
		height: 100%;
	}

	.one {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268592.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}

	.one:hover {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268577.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}

	.two {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268519.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}

	.two:hover {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268443.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}

	.four {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268553.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}

	.four:hover {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268543.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}

	.three {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268647.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}

	.three:hover {
		background: url("http://y.hy755.cn/6400/diy/pics/20170717/1500268640.jpg");
		background-repeat: no-repeat;
		background-size: contain;
	}
</style>
