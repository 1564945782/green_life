<!-- 描述：次要菜单导航条 -->
<template>
	<!-- 头部导航条 -->
  <header class="secondary-nav">
	  <div class="box_one">
		  <ul class="left-ul clear">
		  	<li><router-link to="/home">首页</router-link></li>
		  	<li><router-link to="/flower">花卉</router-link></li>
		  	<li><router-link to="/more_meat">多肉</router-link></li>
		  	<li><router-link to="/bionic">仿生盆栽</router-link></li>
		  	<li><router-link to="/feedback">反馈</router-link></li>
		  </ul>
		  <ul class="right-ul">
		  	<li><router-link to="/login">登录</router-link></li>
		  	<li><router-link to="/order_form">购物车</router-link></li>
			<li><router-link to="/my_info"><b style="color: orange;font-size: 18px;">{{nickname}}</b></router-link></li>
		  </ul>
	  </div>
  </header>
</template>

<script>
	export default {
		name: 'secondary_nav',
		props:["curUser"],
		data:function () {
			return {
				nickname:"未登录"
			}
		},
		mounted(){
			if(this.curUser){
				this.nickname=this.curUser.nickname
			}
		}
	}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.secondary-nav{
		width: 100%;
		height: 60px;
		background-color: #333;
	}
	.box_one{
		width: 1200px;
		margin: 0 auto;
		display: flex;
	}
	.left-ul{
		width: 40%;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
	}
	a{
		font-size: 14px;
		font-family: "微软雅黑";
		color: #ccc;
		line-height: 60px;
	}
	.right-ul{
		width: 20%;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
	}
	/* 中间部分 */
	.banner{
		width: 1200px;
		margin: 0 auto;
	}
</style>
