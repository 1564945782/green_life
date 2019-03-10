<template>
  <div class="details">
		<secondary-nav></secondary-nav>
		<!-- 中间部分 -->
		<section class="banner_2">
			<div class="box_one">
				<div class="banner-left">
					<div class="big-img">
						<img :src="a">
					</div>
					<div class="small-img-box">
						<div class="small-img" v-for="(items,index) in smallImag" :key="index" @mouseenter="changeImg(index)">
							<img :src="items" alt="">
						</div>
					</div>
				</div>
				<div class="banner-right">
					<p class="info_1 describle">{{getdetails.name}}</p>
					<p class="info_1 describle">{{getdetails.description}}</p>
					<p class="info_2">保证成活 2盆送工具</p>
					<!-- 价格区域 -->
					<div class="price">
						<div class="price_one">
							<span class="del_price_str">价格</span>
							<del class="del_price_num">￥{{getdetails.del_price}}</del><br>
						</div>
						<div class="price_two">
							<span class="ins_price_str">促销价</span>
							<span class="ins_price_num">￥{{getdetails.ins_price}}</span>
						</div>
						<p class="discount">淘金币可抵扣商品价格2%</p>
					</div>
					<!-- 运费区域 -->
					<div class="route">
						<span class="route_price">运费</span>
						<div class="select1">
							<el-dropdown>
								  <span class="el-dropdown-link">
										四川成都<i class="el-icon-arrow-down el-icon--right"></i>
								  </span>
								  <el-dropdown-menu slot="dropdown">
									<el-dropdown-item>四川绵阳</el-dropdown-item>
									<el-dropdown-item>四川德阳</el-dropdown-item>
									<el-dropdown-item>四川眉山</el-dropdown-item>
									<el-dropdown-item>四川雅安</el-dropdown-item>
									<el-dropdown-item>四川资阳</el-dropdown-item>
								  </el-dropdown-menu>
							</el-dropdown>	
							<span>至</span>						  
						</div>
						<div class="select2">
							<el-dropdown>
								  <span class="el-dropdown-link">
										四川成都<i class="el-icon-arrow-down el-icon--right"></i>
								  </span>
								  <el-dropdown-menu slot="dropdown">
									<el-dropdown-item>四川绵阳</el-dropdown-item>
									<el-dropdown-item>四川德阳</el-dropdown-item>
									<el-dropdown-item>四川眉山</el-dropdown-item>
									<el-dropdown-item>四川雅安</el-dropdown-item>
									<el-dropdown-item>四川资阳</el-dropdown-item>
								  </el-dropdown-menu>
							</el-dropdown>
								<span>快递：0.00</span>
						</div>
					</div>
					<!-- 养殖方法 -->
					<div class="feed">
						<p class="ways">{{getdetails.breed_ways}}</p>
					</div>
					<!-- 购物车部分 -->
					<div class="shop">
						<div class="change">
							购买数量：<input class="inp" type="number" @input="numInpHint" v-model="goodsNum"/><br />
							<span>库存量：{{getdetails.inventory}}</span>
						</div>
						<div class="car">
							<el-button type="danger" @click="addToCar">添加到购物车</el-button>
						</div>
					</div>
				</div>
			</div>
		</section>
		<bottom-footer></bottom-footer>
  </div>
</template>

<script>
	import mainNav from '../components/main_nav'
	import secondaryNav from '../components/secondary_nav'
	import bottomFooter from '../components/bottom_footer.vue'
	import $ from "jquery"
	import axios from "axios"
	export default {
		name: 'detail',
		props:["currUser"],
		components:{
			mainNav,secondaryNav,bottomFooter
		},
		data:function(){
			return {
				a:"",
				getdetails:{},
				myid:"",
				goodsNum:0,
				smallImag:[],
				bigImg:[]
			}
		},
		methods:{
			addToCar(){
				if(this.currUser!=""){    //如果已经登录
					if(this.goodsNum==0){
						alert("商品数量必须大于0！")
					}else{
						axios.get('http://localhost:81/addtocar',{
							params: {'userId': this.currUser.id, "goodsNum":parseInt(this.goodsNum),'goodsId':this.myid}
						})
						.then(function (response) {
							console.log(response)
						})
						.catch(function (error) {
							console.log(error);
						});
					}
				}else{alert("请先登录！")}
			},
			numInpHint(){
				if(this.goodsNum<0){
					this.goodsNum=0;
					alert("商品数量不能小于0");
				}
			},
			changeImg (aaa){
				this.a=this.bigImg[aaa]
			}
		},
		mounted(){
			let that=this;
			that.myid=that.$route.query.id
			let url="http://localhost:81/getdetails?id="+that.myid+"&cb=?"
			$.getJSON(url,function(result){
				that.getdetails=result[0];
				let smallstr=that.getdetails.small_imgs
				let imgarr1=smallstr.split(',')
				that.smallImag=imgarr1
				let bigstr=that.getdetails.big_imgs
				let imgarr2=bigstr.split(',')
				that.bigImg=imgarr2
				that.a=that.bigImg[0]
			})
		}
	}
</script>

<style>
	.banner_2{
		width: 100%;
		background-color: #333333;
		margin-top: 20px;
	}
	.box_one{
		width: 1200px;
		margin: 0 auto;
		display: flex;
		margin-top: 30px;
	}
	.banner-left{
		width: 460px;
		height: 500px;
		background-color: lavenderblush;
	}
	.big-img{
		width: 420px;
		height: 420px;
		/* background-color: lemonchiffon; */
	}
	.big-img img{
		width: 100%;
		height: 100%;
	}
	.small-img-box{
		width: 420px;
		height: 60px;
		margin-top: 20px;
		display: flex;
		justify-content: space-around;
	}
	.small-img{
		width: 60px;
		height: 60px;
		background-color: lightcoral;
		margin: 0 auto;
	}
	.small-img img{
		width: 100%;
		height: 100%;
	}
	.banner-right{
		width: 740px;
		height: 500px;
		background-color: lightgray;
	}
	.info_1{
		font-size: 18px;
		font-weight: bold;
		margin-top: 5px;
		margin-left: 5px;
	}
	.info_2{
		font-size: 16px;
		margin-top: 5px;
		color: #FF0036;
		margin-left: 5px;
	}
	.price{
		width: 100%;
		height: 90px;
		background: url("data:image/png;base64,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");
		margin-top: 10px;
	}
	.del_price_str,
	.ins_price_str,
	.route_price{
		font-size: 14px;
		margin-left: 10px;
		color: #999999;
	}
	.del_price_num{
		margin-left: 50px;
		color: ;
	}
	.ins_price_num{
		margin-left: 30px;
		font-size: 30px;
		font-weight: bold;
		color: #FF0036;
	}
	.discount{
		font-size: 12px;
		color: #FF0036;
		margin-left: 88px;
		margin-top: 5px;
	}
	.route{
		width: 100%;
		margin-top: 10px;
		display: flex;
	}
	.select1{
		margin-left: 30px;
		color: black;
	}
	.select1 span{
		font-size: 14px;
		color: black;
	}
	.select2{
		margin-left: 10px;
		color: black;
	}
	.select2 span{
		font-size: 14px;
		color: black;
	}
	.feed{
		width: 100%;
		margin-top: 20px;
		height: 160px;
		background-color: #7a797940;
	}
	.shop{
		width: 100%;
		display: flex;
		margin-top: 12px;
		justify-content: space-around;
	}
	.change{
		width: 40%;
		margin: 0 auto;
	}
	.car{
		width: 40%;
		margin: 0 auto;
	}
	.inp{
		font-size: 20px;
		width: 40%;
		height: 30px;
	}
	.el-button--danger {
    color: #fff;
    background-color: #f56c6c;
    border-color: #f56c6c;
    width: 200px;
	}
	.ways{
		width: 200px;
		height: 80px;
		margin: 0 auto;
		margin-top: 20px;
	}
</style>
