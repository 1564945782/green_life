<template name="loadMore">
	<view class="load_more">
		<image src="/static/load.png" mode=""></image>
	</view>
</template>

<script>
	export default {
		name:"loadMore",
		data() {
			return {

			};
		}
	}
</script>

<style>
	.load_more{
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.load_more image {
		height: 20px;
		width: 20px;
	}
</style>
