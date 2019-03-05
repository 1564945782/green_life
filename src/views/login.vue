<template>
  <div class="f-login">
		<img class="f-logo" src="../assets/img/f-logo.jpg" />
		<router-link to="/" class="back-home">返回首页</router-link>
		<!-- <a href="#" class="back-home">返回首页</a> -->
		<div class="f-adv">绿色生活，成就您的家居之美</div>
		<div class="login-regist-box">
			<div class="router-btns clear">
				<a href="#" @click="toLogin" :class="isLoginBtn?'active-btn':''">登录</a>
				<a href="#" @click="toRegist" :class="!isLoginBtn?'active-btn':''">注册</a>
			</div>
			<form class="login-form" v-if="isLoginBtn">
				<label>
					<span><img src="../assets/img/f-tel-icon.png" /></span>
					<input type="text" name="tel" placeholder="手机号码" @change="checkTel" v-model="telVal"/>
				</label>
				<label>
					<span><img src="../assets/img/f-password-icon.png" /></span>
					<input type="text" name="pwd" placeholder="密码" @change="checkPwd" v-model="pwdVal"/>
				</label>
				<label>
					<input type="text" name="code" placeholder="请输入验证码"  v-model="codeVal"/>
					<img id="code-img" :src="codeImgSrc" @click="refreshCode" />
				</label>
				<label><input type="submit" class="submit-hover" id="login-btn" value="登录" @click.prevent="userLogin" /></label>
				<p class="forget-pwd"><a href="#">忘记密码？</a></p>
			</form>
			<form class="regist-form" v-if="!isLoginBtn">
				<label>
					<span><img src="../assets/img/f-user-icon.png" /></span>
					<input type="text" name="name" placeholder="昵称不超过10个字符" v-model="nameRegistVal" @change="checkName" />
				</label>
				<label>
					<span><img src="../assets/img/f-password-icon.png" /></span>
					<input type="password" name="pwd" placeholder="密码固定6位,建议使用字母+数字组合" v-model="pwdRegistVal" @change="checkRegistPwd" />
				</label>
				<label>
					<span><img src="../assets/img/f-tel-icon.png" /></span>
					<input type="tel" name="tel" placeholder="电话号码" v-model="telRegistVal" @change="checkTel" />
				</label>
				<label><input type="submit" id="regist-btn" :class="isChecked?'submit-hover':''" value="注册" @click.prevent="userRegist" :disabled='!isChecked'/></label>
				<p><input type="checkbox" v-model="isChecked"/>我同意<a href="#">《用户注册条例》</a></p>
			</form>
		</div>
  </div>
</template>

<script>
	import $ from 'jquery';
	import axios from 'axios';
	import qs from 'qs'    //解决axios中以字符串发送数据的问题
	export default {
		name: 'login',
		data:function(){
			return {
				isLoginBtn:true,
				isChecked:false,
				telVal:'',
				pwdVal:'',
				codeVal:'',
				codeImgSrc:'http://localhost:81/getcode',
				nameRegistVal:'',
				pwdRegistVal:'',
				telRegistVal:'',
				userId:'',
				loginUser:''
			}
		},
		methods:{
			toLogin: function(){
				this.isLoginBtn=true;
			},
			toRegist:function(){
				this.isLoginBtn=false;
			},
			checkName:function(){
				if(this.nameRegistVal.length>10){alert("昵称字符个数不能超过10个！")}
			},
			//校验电话号码:只能为11位纯数字电话号码
			checkTel:function(){
				let telVal=this.telVal;
				let regTel=/^[1-9]\d{10}$/;
				if(!regTel.test(telVal)){   
					if(telVal.length>10){alert("请输入11位手机电话号码")}
				}
			},
			//校验密码:只能为6位数字或字母组合
			checkPwd:function(){
				let pwdVal=this.pwdVal;
				let regPwd=/^[a-zA-Z0-9]{6}$/;
				if(!regPwd.test(pwdVal)){   
					alert("密码位数只能为6位！\n密码字符只能为数字和字母！")
				}
			},
			checkRegistPwd:function(){
				let pwdRegistVal=this.pwdRegistVal;
				let regRegistPwd=/^[a-zA-Z0-9]{6}$/;
				if(!regRegistPwd.test(pwdRegistVal)){
					alert("密码位数只能设置为6位！\n密码字符只能为纯数字或纯字母或数字字母组合！")
				}
			},
			//刷新验证码
			refreshCode:function (){
			    this.codeImgSrc='http://localhost:81/getcode?_'+new Date();
			},
			//登录  检查是否有未填项  校验验证码
			userLogin:function(){
				let that=this;
				if(this.telVal==""){alert("请输入电话号码")}
				else if(this.pwdVal==""){alert("请输入密码")}
				else if(this.codeVal==""){alert("请输入验证码")}
				else{
					axios.post('http://localhost:81/user_login',qs.stringify({
						tel:this.telVal,
						pwd:this.pwdVal,
						code:this.codeVal
					}))
					.then(function (response) {
						if(response.data.feedback=="name and passward not match!"){alert("账号和密码不匹配！\n您可能账号或密码输入错误！")}
						else if(response.data.feedback=="code err!"){alert("验证码输入错误！")}
						else if(response.data.feedback=="login success!"){
							that.$router.push({path:'/'});
							that.loginUser=response.data.data[0];
							that.$emit('getCurrentUser',that.loginUser);
						}
					})
					.catch(function (error) {
						console.log(error);
					});
				}
			},
			userRegist:function(){
				console.log("您点击了注册按钮")
				if(this.nameRegistVal==""){alert("请设置昵称")}
				else if(this.pwdRegistVal==""){alert("请设置密码")}
				else if(this.telRegistVal==""){alert("请设置电话码")}
				else{
					axios.post('http://localhost:81/user_regist',qs.stringify({
						nickname:this.nameRegistVal,
						pwd:this.pwdRegistVal,
						tel:this.telRegistVal
					}))
					.then(function (response) {
						if(response.data=="this telnumber has been registed!"){alert("该电话号码已被注册！")}
						else if(response.data=="regist success!"){alert("注册成功！")}
					})
					.catch(function (error) {
						console.log(error);
					});
				}
			}
		}
	}
</script>

<style>
	.f-login{
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: url(http://f2.dn.anqu.com/thumb/NjExfHx8MTAwMDB8fHwzfHx8NjI2NQ==/allimg/1210/17-1210291H332.jpg) no-repeat 0 0/100% 100%;
	}
	.f-logo{
		position: fixed;
		top: 20px;
		left: 50px;
	}
	.back-home{
		position: fixed;
		top: 30px;
		right: 50px;
		font: 700 20px "微软雅黑";
	}
	.back-home:hover{
		text-decoration: underline;
	}
	.f-adv{
		display: inline-block;
		position: fixed;
		top: 130px;
		left: 50px;
		color: green;
		font: italic 900 50px "华文行楷";
		border-bottom: 2px solid green;
	}
	.login-regist-box{
		position: fixed;
		right: 80px;
		top: 130px;
		height:450px;
		width: 380px;
	}
	.router-btns a{
		color: #fff;
		float: left;
		text-align: center;
		height: 44px;
		width: 188px;
		font: 900 22px/44px "微软雅黑";
		background-color: #42B983;
	}
	.router-btns a:first-child{
		margin-right: 4px;
	}
	.router-btns .active-btn{
		background-color: #008000;
	}
	.login-regist-box form{
		position: absolute;
		top: 50px;
		height: 400px;
		width: 380px;
		background: #fff;
	}
	.login-regist-box form label{
		display: block;
		width: 310px;
		height: 40px;
		margin: 20px auto;
		background: #fff;
		font-size: 0;
		border: 1px solid #ccc;
	}
	.login-form label:nth-of-type(3){
		border: 0;
	}
	.login-regist-box form label:nth-of-type(1){
		margin-top: 50px;
	}
	.login-regist-box form span{
		display: inline-block;
		vertical-align: top;
		width: 50px;
		height: 40px;
		background: #ddd;
	}
	.login-regist-box form span img{
		margin-left: 8px;
		margin-top: 3px;
	}
	.login-regist-box input{
		
		height: 40px;
		width: 250px;
		border: 0;
		padding: 0 5px;
		outline: none;
		font-size: 18px;
	}
	.login-form [name="code"]{
		width: 160px;
		border: 1px solid #CCCCCC;
	}
	#code-img{
		cursor: pointer;
		vertical-align: top;
		width: 130px;
		height: 42px;
	}
	.login-regist-box form [type="submit"]{
		width: 100%;
		color: #fff;
		background: #56D25B;
	}
	.login-regist-box .submit-hover:hover{
		background: #02c14a;
	}
	.login-regist-box form input[disabled]{
		cursor: text;
		background: #78f47d;
	}
	.login-form p,.regist-form p{
		text-align: center;
		margin-top: 10px;
	}
	.login-form p a:hover,.regist-form p a:hover{
		text-decoration: underline;
	}
	.regist-form [type="checkbox"]{
		vertical-align: middle;
		height: 20px;
		width: 20px;
		margin-right: 5px;
	} 
</style>
