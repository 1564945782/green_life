<!-- 描述：主菜单导航条 -->
<template>
  <header class="main-nav clear">
		<ul class="left-ul clear">
			<li><router-link to="/home">首页</router-link></li>
			<li><router-link to="/flower">花卉</router-link></li>
			<li><router-link to="/more_meat">多肉</router-link></li>
			<li><router-link to="/bionic">仿生盆栽</router-link></li>
			<li><router-link to="/feedback">反馈</router-link></li>
		</ul>
		<div class="search">
			<input type="search" placeholder="在这里可以搜索本店的全部商品" />
			<input type="button" value="搜索" />
		</div>
		<ul class="right-ul">
			<li><router-link to="/login">登录</router-link></li>
			<li><router-link to="/order_form">购物车(0)</router-link></li>
			<li><router-link to="/my_info">头像图片</router-link></li>
		</ul>
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
		height: 60px;
		background: #333;
	}
	.left-ul{
		float: left;
	}
	.right-ul{
		float: right;
	}
	li{
		display: block;
		float: left;
		padding: 0 20px;
	}
	a{
		font: 400 20px/60px "微软雅黑";
		color: #ccc;
	}
	a:hover{
		color: #fff;
	}
	.search{
		float: left;
		position: relative;
		top: 13px;
		font-size: 0;
	}
	.search input{
		font-size: 16px;
		vertical-align: top;
		height: 34px;
	}
	.search [type="search"]{
		width: 300px;
	}
	.search [type="button"]{
		padding: 0 10px;
	}
</style>
