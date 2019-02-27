<!-- 描述：主菜单导航条 -->
<template>
  <header class="main-nav clear">
		<div class="logo">Green Life</div>
		<div class="nav">
			<ul class="left-ul clear">
				<li><router-link to="/home">首页</router-link></li>
				<li><router-link to="/flower">花卉</router-link></li>
				<li><router-link to="/more_meat">多肉</router-link></li>
				<li><router-link to="/bionic">仿生盆栽</router-link></li>
				<li><router-link to="/feedback">反馈</router-link></li>
			</ul>
			<div class="head-img"><router-link to="/my_info"></router-link></div>
			<ul class="right-ul">
				<li><router-link to="/login">登录</router-link></li>
				<li><router-link to="/order_form">购物车(0)</router-link></li>
			</ul>
			<div class="search">
				<input type="search" placeholder="你可以在这里搜索本店的全部商品" />
				<input type="button" value="搜索" />
			</div>
		</div>
  </header>
</template>

<script>
	export default {
		name: 'main_nav',
		data () {
			return {
				msg: 'Welcome to Your Vue.js App'
			}
		}
	}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.main-nav{
		height: 90px;
		background: #fff;
	}
	.logo{
		color: #56d25b;
		text-align: center;
		float: left;
		height: 90px;
		width: 18%;
		font: 600 30px/90px Economica;
	}
	.nav{
		float: right;
		width: 80%;
		height: 40px;
	}
	.nav li{
		display: block;
		float: left;
		padding: 0 3px;
		margin: 0 15px;
		height: 40px;
		line-height: 40px;
	}
	.nav a{
		color: #000;
		padding: 2px 0;
		font: 400 18px/30px "微软雅黑";
	}
	.left-ul{
		float: left;
	}
	.right-ul{
		float: right;
	}
	.left-ul li:nth-child(1) a{
		border-bottom: 2px solid #b2d430;
	}
	.left-ul a:hover{
		color: #b2d430;
		border-bottom: 2px solid #b2d430;
	}
    .right-ul a:hover{
		color: #56d25b;
	}
	.head-img{
		cursor: pointer;
		float: right;
		height: 34px;
		width: 34px;
		margin: 2px 20px 2px;
		border: 1px solid #ccc;
		border-radius: 50%;
		background: url(../assets/img/f_basic_icon.jpg) no-repeat -40px -42px/450%;
	}
	.head-img:hover{
		border: 1px solid #56d25b;
	}
	.search{
		font-size: 0;
		height: 40px;
		width: 100%;
		float: left;
		text-align: center;
		margin-top: 4px;
	}
	.search input{
		font-size: 16px;
		vertical-align: top;
		height: 40px;
	}
	.search [type="search"]{
		width: 450px;
		border: 1px solid #b2d430;
		border-radius: 6px 0 0 6px;
		padding: 0 5px;
		outline: none;
	}
	.search [type="button"]{
		color: #fff;
		padding: 0 10px;
		border: 0;
		border-radius: 0 6px 6px 0;
		background:  #b2d430;
	}
	.search [type="button"]:hover{
		background: #82d430;
	}
</style>
