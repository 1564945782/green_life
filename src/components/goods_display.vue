<!-- 描述：商品陈列（展示），包含说明，价格，图片展示 -->
<template>
	<div class="display-goods">
		<div class="img-box"></div>
		<div class="txt-box">
			<div>水仙花</div>
			<div>这是一段对植物的描述，分为两行<a href="#">养殖描述</a></div>
			<div>
				<del>￥125.00</del></ins>￥99.00</ins>
				<span
			</div>
		</div>
  </div>
</template>

<script>
	export default {
		name: 'example',
		data () {
			return {
				msg: 'example'
			}
		}
	}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.display-goods{
		display: inline-block;
		height: 350px;
		width: 300px;
		margin: 0 10px 20px;
		border-radius: 6px;
		background: #fff;
	}
</style>
