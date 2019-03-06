<template>
	<view>
		<view class="nav_box" >
			<view class="title1">
				<p class="p1">GREEN LIFE</p>
			</view>
			<view class="title2">
				<p class="p2">你的绿植首选</p>
			</view>
		</view>
		<!-- 注册框 -->
		<view class="login_box" >
			
			
			
			<view class="login">
				<p class="my_number" >昵称：</p>
				<input class="inp1" type="text" v-model="mydata.nickname"/>
			</view>
			
			<view class="login">
				<p class="my_number">账号：</p>
				<input class="inp1" type="text" v-model="mydata.tel"/>
			</view>
			
			<view class="login">
				<p class="my_number">密码：</p>
				<input class="inp1" type="password" name="code" placeholder="请输入6位密码"  v-model="mydata.pwd"/>
			</view>
			
			<!-- <view class="tologin">
				<button @click="tologin">登录</button>
			</view> -->
			
			<view class="regist">
				<button @click="toregist">注册</button>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				mydata:{
					nickname:'',
					tel:'',
					pwd:''
				},
			};
		},
		methods:{
			toregist:function(){
				let _this=this
				_this.login_show=0
				_this.regist_show= 1
				if(_this.mydata.nickname==""){alert("请输入昵称！")}
				else if(_this.mydata.tel==""){alert("请输入注册账号！")}	
				else if(_this.mydata.pwd==""){alert("请输入用密码！")}
				else{
					uni.request({
						url:"http://localhost:81/user_regist",
						method:'POST',
						data: _this.mydata,
						success: (res)=>{
							console.log(res.data)
							if(res.data=="this telnumber has been registed!"){alert("该账号已经注册过了！")}
							else if(res.data=="regist success!"){
								alert("恭喜你，注册成功！")
								uni.navigateTo({
									url:"../login/login"
								})
							}
						}
					})
				}
			},
		}
	}
</script>

<style>
	.nav_box{
		width: 100%;
		height: 100px;
		background: url("../../static/flower/login-bg.jpg");
		font-size: 25px;
		color: #56D25B;
	}
	.title1{
		width: 100%;
		height: 40px;
	}
	.p1{
		width: 40%;
		margin: 0 auto;
		line-height: 40px;
		font-size: 25px;
	}
	.title2{
		width: 100%;
		height:30px;
	}
	.p2{
		width: 35%;
		height: 60px;
		line-height: 30px;
		margin: 0 auto;
		color: #0c0c0c;
		font-size: 18px;
	}
	.login_box{
		width: 80%;
		margin-top: 50px;
		margin: 0 auto;
	}
	.login{
		width: 100%;
		height: 50px;
		display: flex;
		margin-top: 25px;
	}
	.my_number{
		font-size: 20px;
		line-height: 50px;
	}
	.inp1{
		border: 1px solid blank;
		background-color: rgba(220,220,220,0.3);
		height: 50px;
		margin: 0 auto;
	}
	.tologin{
		margin-top: 20px;
	}
	.toregist{
		margin-top: 20px;
	}
	#code-img{
		cursor: pointer;
		vertical-align: top;
		width: 130px;
		height: 42px;
		margin: 0 auto;
	}
	.regist{
		margin-top: 20px;
	}
	.head_img{
		width: 100%;
		height: 80px;
	}
	#img{
		width: 80px;
		height: 80px;
		border-radius: 50%;
		background-color: #D2DAE8;
	}
</style>
