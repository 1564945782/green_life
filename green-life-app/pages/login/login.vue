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
		
		<!-- 登陆框 -->
			<view class="login_box" :style="{display:login_show==1?'block':'none'}">
				<view class="login">
					<p class="my_number" >账号：</p>
					<input class="inp1" type="text" v-model="mydata.tel"/>
				</view>
				
				<view class="login">
					<p class="my_number" >密码：</p>
					<input class="inp1" type="password" v-model="mydata.pwd"/>
				</view>
				
				<view class="login">
					<p class="my_number">验证：</p>
					<input class="inp1" type="text" name="code" placeholder="请输入验证码"  v-model="mydata.code"/>
				</view>
				
				<view class="tologin">
					<span>点击换一张:</span>
					<img id="code-img" :src="codeImgSrc" @click="refreshCode" />
				</view>
				
				<view class="tologin">
					<button @click="tologin">登录</button>
				</view>
				
				<view class="regist">
					<button @click="toregist">去注册</button>
				</view>
			</view>
			
	</view>
</template>

<script>
	export default {
		components: {
			
		},
		data() {
			return {
				mydata:{
					tel:'',
					pwd:'',
					code:'',
				},
				login_show: 1,
				// regist_show: 0,
				codeImgSrc:'http://localhost:81/getcode',
// 				regist_name:'',
// 				regist_tel:'',
// 				regist_pwd:''
			};
		},
		methods:{
			
			//刷新验证码
			refreshCode:function (){
			    this.codeImgSrc='http://localhost:81/getcode?_'+new Date();
			},
			//登陆请求
			tologin:function(){
				let _this=this;
				if(this.mydata.tel==""){alert("请输入账号")}
				else if(this.mydata.pwd==""){alert("请输入密码")}
				else if(this.mydata.code==""){alert("请输入验证码")}
				else{
						uni.request({
						url: 'http://localhost:81/user_login',
						method:'POST',
						data:_this.mydata,
						success: (res) => {
							// console.log(res);
							console.log(res.data.feedback)
							if(res.data.feedback=="name and passward not match!"){alert("账号和密码不匹配！\n您可能账号或密码输入错误！")}
							else if(res.data.feedback=="code err!"){alert("验证码输入错误！")}
							else if(res.data.feedback=="login success!"){
								uni.switchTab({
									url:"../index/index"
								})
							}
						}
					});
				}
			},
			//跳转到注册页面
			toregist:function(){
				uni.navigateTo({
					url:"../regist/regist"
				})
			}
			
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
