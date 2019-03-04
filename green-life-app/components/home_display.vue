<template>
	<view class="display-goods" @click="jump" v-bind:id="singleData.id">
		<a href="#" class="img-box"><img :src="singleData.big_imgs.split(',')[0]" /></a>
		<view class="txt-box">
			<a href="#" class="description"><b>【{{singleData.name}}】</b><span>{{singleData.description}}</span></a>
			<view class="price">
				<del>￥{{singleData.del_price}}</del>
				<ins>￥{{singleData.ins_price}}</ins>
				<a href="#">养殖描述</a>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: 'home_display',
		data: function() {
			return {

			}
		},
		props: ["singleData"],
		beforeCreate: function() {

		},
		created: function() {

		},
		methods: {
			jump: function(e) {
				console.log(e.target.id)
			uni.navigateTo({
					url: "../details/details?id="+e.target.id+""
				});
			}
		}

	}
</script>

<style>
	.display-goods {
		display: inline-block;
		/* height: 390px; */
		width: 50%;
		/* margin: 0 10px 20px; */
		border-radius: 6px;
		background: #fff;
		overflow: hidden;
		padding: 10px 0;
	}

	.display-goods a:hover {
		text-decoration: underline;
	}

	.img-box {
		display: block;
		height: 240px;
		width: 90%;
		background: #ccc;
		margin: auto;
	}

	.img-box img {
		height: 100%;
		width: 100%;
	}

	.description {
		text-decoration: none;
		display: block;
		margin: 6px 5px 0;
		line-height: 24px;
		font-size: 16px;
		color: #504f4f;
		-o-text-overflow: ellipsis;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;

	}

	.price {
		margin: 5px;
		display: flex;
	}

	.price del {
		color: #76d25b;
		font-size: 12px;
	}

	.price ins {
		color: #56d25b;
		font-weight: 600;
		font-size: 16px;
		margin-left: 10px;
		text-decoration: none;
	}

	.price a {
		float: right;
		color: #999;
		font-size: 16px;
		margin-left: 10px;
	}

	.price a:hover {
		color: #666;
	}
</style>
