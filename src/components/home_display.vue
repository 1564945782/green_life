<!-- 描述：商品陈列（展示），包含说明，价格，图片展示 -->
<template>
	<div class="display-goods">
		<router-link :to="{name:'details',query:{id:singleData.id}}" class="img-box"><img :src="singleData.big_imgs.split(',')[0]" alt="图片走丢了" /></router-link to="/details">
		<div class="txt-box">
			<router-link :to="{name:'details',query:{id:singleData.id}}" class="home-description"><b>【{{singleData.name}}】</b><span>{{singleData.description}}</span></router-link>
			<div class="home-price">
				<del>￥{{singleData.del_price}}</del>
				<ins>￥{{singleData.ins_price}}</ins>
				<a href="#">养殖描述</a>
			</div>
		</div>
  </div>
</template>

<script>
	export default {
		name: 'home_display',
		data: function(){
			return {
				single:this.singleData
			}
		},
		props:["singleData"],
		mounted() {
			
		}
	}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.display-goods{
		display: inline-block;
		text-align: left;
		height: 390px;
		width: 300px;
		margin: 0 10px 20px;
		border-radius: 6px;
		background: #fff;
		overflow: hidden;
	}
	.display-goods a:hover{
		text-decoration: underline;
	}
	.img-box{
		display: block;
		height: 300px;
		width: 300px;
		background: #ccc;
	}
	.img-box img{
		height: 300px;
		box-sizing: border-box;
		border: 1px solid #fff;
	}
	.img-box img:hover{
		box-sizing: content-box;
		border: 0;
	}
	.home-description{
		display: block;
		margin: 6px 5px 0;
		line-height: 24px;
		height: 48px;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.home-price{
		margin: 0 5px;
		line-height: 36px;
	}
	.home-price del{
		color: #76d25b;
		font-size: 18px;
	}
	.home-price ins{
		color: #56d25b;
		font-weight: 900;
		font-size: 22px;
		margin-left: 10px;
		text-decoration: none;
	}
	.home-price a{
		float: right;
		color: #999;
		font-size: 16px;
	}
	.home-price a:hover{
		color: #666;
	}
</style>
