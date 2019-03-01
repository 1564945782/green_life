<template>
	<div class="meat_classify">
		<!-- 导航 -->
		<main-nav :curUser="currUser"></main-nav>
		<!-- 中间商品展示 -->
		<div class="banner0">
			<div class="list_box" v-for="item in meatCount">
				<div class="left_img">
					<img :src="item.big_imgs" alt="">
				</div>
				<div class="right_text">
					<div class="juzhong">
						<p class="p_name">{{item.name}}</p>
						<p class="p_description">描述:{{item.description}}</p>
						<p class="p_breed_ways">培育方法:{{item.breed_ways}}</p>
						<p class="p_del_price">原价：<del>￥{{item.del_price}}</del></p>
						<p><ins class="ins_price">现价：￥{{item.ins_price}}</ins></p>
						<p>已售:{{item.sells}}</p>
						<div class="btn_box">
							<el-button type="success"  class="btn" @click="jump(item.id)">查看详情</el-button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 底部 -->
		<bottom-footer></bottom-footer>
		<a href="#" class="back-top" title="返回顶部">↑</a>
	</div>
</template>

<script>
	import mainNav from '../components/main_nav.vue'
	import bottomFooter from '../components/bottom_footer.vue'
	import $ from "jquery"
	export default {
		name: 'meatclassifydisplay',
		components:{
			mainNav,
			bottomFooter
		},
		props:["currUser"],
		data() {
			return {
				meatCount:[]
			};
		},
		methods:{
			jump (num){
				console.log(num)
				this.$router.push({path: '/details?id='+num})
			}
		},
		beforeCreate() {
			let that=this;
			let url="http://localhost:81/getgoodsdata?cb=?";
			$.getJSON(url,function(result){
				for(let i=0;i<result.length;i++){
					if(result[i].type=="多肉"){
						that.meatCount.push(result[i]);
					}
				}
				console.log(that.meatCount)
			})
		}
	}
</script>

<style>
	.banner0{
		width: 100%;
		background-color: lightgray;
		margin-top: 10px;
	}
	.list_box{
	 width: 1000px;
	 height: 200px;
	 margin: 0 auto;
	 /* background-color: #b2d430; */
	 display: flex;
	 justify-content: space-around;
	 margin-bottom: 10px;
	}
	.left_img{
		width: 20%;
		height: 200px;
	}
	.left_img img{
		width: 100%;
		height: 100%;
	}
	.right_text{
		width: 75%;
		height: 200px;
		background-color: #e8ecf1;
	}
	p{
		margin-bottom: 2px;
	}
	.p_name{
		font-size: 22px;
	}
	.ins_price{
		width: 100%;
		height: 40px;
		font-size: 22px;
		color: red;
		margin: 0 auto;
		text-decoration: none;
	}
	.juzhong{
		width: 95%;
		margin: 0 auto;
	}
</style>
