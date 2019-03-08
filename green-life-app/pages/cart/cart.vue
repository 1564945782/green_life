<template>
	<view class="my_cart">
		<view class="banner0" v-for="(item,index) in goosdata">
			<view class="list_box">
				<view class="select_cart">
					<checkbox-group>
						<label>
							<checkbox value="cb" checked="true" /></label>
					</checkbox-group>
				</view>
				<view class="left_img" :style="{backgroundImage:'url('+(item.big_imgs.split(',')[0]?item.big_imgs.split(',')[0]:'')+')'}">
				</view>
				<view class="right_text">
					<view class="juzhong">
						<p class="p_name"><b>{{item.name?item.name:''}}</b></p>
						<p class="p_description">描述:{{item.description?item.description:''}}</p>
						<p class="p_del_price">原价：<del>￥{{item.del_price?item.del_price:''}}</del></p>
						<p><ins class="ins_price">现价：￥{{item.ins_price?item.ins_price:''}}</ins></p>
						<p>已售:...</p>

					</view>
					<view class="cart_btn_box">
						<button type="success" class="btn" @click="jump(item.id)">查看详情</button>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				userid: 5,
				bac_img: "http://img0.imgtn.bdimg.com/it/u=2012499668,995388082&fm=26&gp=0.jpg",
				goosdata:''
			};
		},
		methods: {
			jump(e) {
				console.log(e)
				uni.navigateTo({
						url: "../details/details?id="+e+"",
						// url: "../details/details"
					});
			}
		},
		onLoad() {
			let _this = this;
			uni.request({
				url: 'http://localhost:81/getcargoodsapp',
				data: {
					id: _this.userid
				},
				success: (res) => {
					_this.goosdata=res.data;
					console.log("数据", _this.goosdata);

					
				}
			});
		}
	}
</script>

<style>
	.select_cart {
		width: 10%;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.banner0 {
		width: 100%;
		background-color: #f7f0f0;
		margin-top: 10px;
	}

	.list_box {
		width: 100%;
		height: 150px;
		margin: 0 auto;
		/* background-color: #b2d430; */
		display: flex;
		justify-content: space-around;
		margin-bottom: 10px;
	}

	.left_img {
		width: 20%;
		margin: 30px 10px 30px 0px;
		background-size: cover;
		background-repeat: no-repeat;
	}

	.left_img img {
		width: 99%;
		height: 99%;
	}

	.right_text {
		width: 75%;
		background-color: #e8ecf1;
		font-size: 14px;
		display: flex;
	}

	p {
		margin-bottom: 2px;
	}

	.p_name {
		font-size: 22px;
	}

	.ins_price {
		width: 100%;
		height: 40px;
		font-size: 22px;
		color: red;
		margin: 0 auto;
		text-decoration: none;
	}

	.cart_btn_box {
		display: flex;
		align-items: flex-end;
		width: 30%;
	}

	.cart_btn_box .btn {
		font-size: 12px;
		width: 95%;
		height: 20%;
		margin-bottom: 5px;
	}

	.juzhong {
		width: 70%;
		margin: auto;
		padding-left: 15px;
	}
	.my_cart .p_description{
		
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
</style>
