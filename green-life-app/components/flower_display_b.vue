<template name="flowerDisplayb">
	<view>
		<view class="content02">
			<view class="c_wrap center">
				<view class="c_child02" @click="fn">
					<view><img :src="c_img[0].big_imgs.split(',')[0]" alt="c_img[0].name"></view>
					<p>{{c_img[0].name}}</p>
				</view>
				<view class="c_child02">
					<view><img :src="c_img[1].big_imgs.split(',')[0]" alt="c_img[1].name"></view>
					<p>{{c_img[1].name}}</p>
				</view>
				<view class="c_child02">
					<view><img :src="c_img[2].big_imgs.split(',')[0]" alt="c_img[2].name"></view>
					<p>{{c_img[2].name}}</p>
				</view>
				<view class="c_child01"><img :src="c_img[0].big_imgs.split(',')[0]" alt="c_img[3].name">
					<view>{{c_img[3].name}}</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: 'flowerDisplayb',
		props: ["c_img"],
		methods: {
			fn() {
				console.log(this.c_img)
			}
		}
	}
</script>

<style>
	.center {
		margin: auto;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
	}

	img:hover {
		opacity: 0.5;
		transition: all .3s ease-in;
	}

	.content02 {
		width: 100%;
		margin: 10px 0px 10px 0px;
	}

	.c_wrap {
		width: 100%;
		/* height: 280px; */
		display: flex;
		align-items: center;
		justify-content: center;
		flex-wrap: wrap;
	}

	.c_child01 {
		width: 47%;
		height: 240px;
		z-index: 2;
		margin: 5px;
		position: relative;
	}

	.c_child01 view {
		line-height: 240px;
		color: #d2dae8;
		text-align: center;
		font-size: 30px;
		position: absolute;
		bottom: 0;
		left: 0px;
		right: 0px;
		background: rgba(62, 68, 70, 0.6);
		height: 100%;
		z-index: 22;
		background: radial-gradient(rgba(0, 0, 0, 0), rgba(125, 119, 125, 0.97));
		transition: all .8s ease-in;
	}

	.c_child01 img {
		width: 100%;
		height: 100%;
	}

	.c_child02 {
		width: 47%;
		margin: 5px;
		height: 240px;
		display: flex;
		background-color: #eeeeee;
		border-radius: 15px;
		align-items: center;
		justify-content: center;
		flex-wrap: wrap;
	}

	.c_child02 view {
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.c_child02 img {
		width: 170px;
		height: 170px;
		border-radius: 50%;
	}
</style>
