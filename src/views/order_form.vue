<template>
  <div class="orderform">
		<secondary-nav :curUser="currUser"></secondary-nav>
		<div class="order-wrap">
			<div class="order-title clear">
				<h3>我的购物车商品展示（{{carGoodsInfo.length}}）</h3>
				<div>
					<label>全不选 <input type="checkbox" :checked="!allSelected" @click="allSelected=false"/></label>
					<label>全选 <input type="checkbox" v-model="allSelected" :checked="allSelected"/></label>
				</div>
			</div>
			<div class="order-content">
				<h2 v-if="!hasGoods && isLogin"><strong>购物车空空如也~</strong></h2>
				<h2 v-if="!isLogin"><strong>你还没有登录,不配拥有购物车！</strong></h2>
				<order-item :goodsInfo="carGoodsInfo" :allSelect="allSelected" :curUser="currUser" v-if="isLogin" v-for="(item,index) in carGoodsInfo" :ite="item"></order-item>
			</div>
		</div>
  </div>
</template>
<script>
	import orderItem from '../components/order_display.vue'
	import secondaryNav from '../components/secondary_nav.vue'
	import $ from 'jquery';
	export default {
		name: 'orderform',
		props:["currUser"],
		components:{
			secondaryNav,orderItem
		},
		data () {
			return {
				carGoodsInfo:[],
				isLogin:false,
				hasGoods:false,
				allSelected:false
			}
		},
		mounted() {
			let that=this;
			if(this.currUser){
				that.isLogin=true;
				let url="http://localhost:81/getcargoods?id="+this.currUser.id+"&cb=?";
				$.getJSON(url,function(result){
					if(result){
						that.hasGoods=true;
						that.carGoodsInfo=result;
						console.log(that.carGoodsInfo)
					}
				})
			}
		}
	}
</script>

<style>
	.order-wrap{
		width: 80%;
		margin: 0 auto;
		padding: 20px 30px;
		background: #eee;
	}
	.order-title{
		color: orange;
		padding-bottom: 3px;
		border-bottom:2px solid darkorange;
	}
	.order-title h3{
		float: left;
	}
	.order-title div{
		float: right;
	}
	.order-title label{
		float: right;
		padding-left: 20px;
	}
</style>
