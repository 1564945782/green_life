<template>
	<div class="order-item">
		<router-link :to="{name:'details',query:{id:ite.id}}" class="car-img-box"><img :src="ite.small_imgs.split(',')[0]" /></router-link>
		<div class="car-con-box">
			<router-link :to="{name:'details',query:{id:ite.id}}" class="f-description">【{{ite.name}}】{{ite.description}}</router-link>
			<div class="f-price">
				<ins>￥{{ite.ins_price}}</ins>
				<del>￥{{ite.del_price}}</del>
				<span>X{{ite.buy_num}}</span>
			</div>
		</div>
		<div class="car-checkbox-box"><input type="checkbox" :checked="allSelect"></div>
	</div>
</template>

<script>
	export default {
		name: 'order_form',
		props:["goodsInfo","ite","allSelect","curUser"],
		data:function(){
			return {
				carGoodsArr:this.curUser.car_goods.substr(1).split(";")
			}
		},
		mounted() {
			
		}
	}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.order-item{
		position: relative;
		height: 80px;
		margin-top: 5px;
		border-bottom: 1px solid #ccc;
	}
	.order-item a{
		text-decoration: underline;
	}
	.order-item input{
		height: 20px;
		width: 20px;
	}
	.car-img-box{
		position: absolute;
		top: 0;
		left: 0;
		height: 110px;
		width: 80px;
	}
	.car-img-box img{
		height: 70px;
		width: 70px;
		margin: 5px;
	}
	.car-con-box{
		width: auto;      /*如果没有这一句，那么，car-con-box这个div的文字就不会自动换行*/
		height:70px;
		padding: 0 10px;
		margin: 0 50px 0 110px;
	}
	.car-con-box .f-description{
		font-size: 18px;
		line-height: 25px;
		height: 50px;
	}
	.car-con-box .f-price{
		color: #666;
		margin-top: 5px;
	}
	.car-con-box .f-price del{
		padding: 0 20px;
	}
	.car-checkbox-box{
		position: absolute;
		top: 0;
		right: 0;
		height: 80px;
		width: 50px;
		text-align: center;
		line-height: 80px;
	}
</style>
