<!-- 描述：主菜单导航条 -->
<template>
	<header class="main-nav clear">
		<div class="logo">Green Life</div>
		<div class="nav">
			<ul class="left-ul clear">
				<li><router-link to="/home" @click.native="changeActiveNum(0)" :class="{'menu_nav_active':activeNum==0}">首页</router-link></li>
				<li><router-link to="/flower" @click.native="changeActiveNum(1)" :class="{'menu_nav_active':activeNum==1}">花卉</router-link></li>
				<li><router-link to="/more_meat" @click.native="changeActiveNum(2)" :class="{'menu_nav_active':activeNum==2}">多肉</router-link></li>
				<li><router-link to="/bionic" @click.native="changeActiveNum(3)" :class="{'menu_nav_active':activeNum==3}">仿生盆栽</router-link></li>
				<li><router-link to="/feedback"@click.native="changeActiveNum(4)" :class="{'menu_nav_active':activeNum==4}">反馈</router-link></li>
			</ul>
			<div class="head-img">
				<div @click="checkimg"><img :src="curUser.head_img" /></div>
			</div>
			<ul class="right-ul">
				<li>
					<router-link to="/login" v-if="!curUser">登录</router-link>
					<router-link to="/login" v-if="curUser">退出</router-link>
				</li>
				<li>
					<router-link to="/order_form">购物车</router-link>
				</li>
			</ul>
			<div class="search">
				<input type="search" placeholder="你可以在这里搜索本店的全部商品" v-model="key_words"/>
				<input type="button" value="搜索" @click="searchend"/>
			</div>
		</div>
	</header>
</template>

<script>
	export default {
		name: 'main_nav',
		data() {
			return {
				activeNum: 0,	
				key_words:""
			}
		},
		props: ["curUser"],
	
		methods: {
			changeActiveNum(num) {
				this.activeNum=num;
			},
			checkimg() {
				let _this=this
				console.log(55)
				if (!_this.curUser.id) {
					console.log(66666666);
					_this.$alert('请登录', '温馨提示', {
						confirmButtonText: '确定',
						callback: action => {
							_this.$message({
								type: 'info',
								message: `action: ${ action }`
							});
						}
					});
				} else {
					console.log(_this.curUser.id);
					_this.$router.push({
						path: '/my_info'
					})
				}
			},
			searchend(){
				console.log("searchend",this.key_words);
				this.$router.push({
					path:'/search_end?key_words='+this.key_words
				})
			}
		}
	}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.main-nav {
		height: 90px;
		background: #fff;
	}

	.logo {
		color: #56d25b;
		text-align: center;
		float: left;
		height: 90px;
		width: 18%;
		font: 600 30px/90px Economica;
	}

	.nav {
		float: right;
		width: 80%;
		height: 40px;
	}

	.nav li {
		display: block;
		float: left;
		padding: 0 3px;
		margin: 0 15px;
		height: 40px;
		line-height: 40px;
	}

	.nav a {
		color: #000;
		padding: 2px 0;
		font: 400 18px/30px "微软雅黑";
	}

	.left-ul {
		float: left;
	}

	.right-ul {
		float: right;
	}
	.menu_nav_active{
		border-bottom: 2px solid #b2d430;
	}
	

	.left-ul a:hover {
		color: #b2d430;
		border-bottom: 2px solid #b2d430;
	}

	.right-ul a:hover {
		color: #56d25b;
	}

	.head-img {
		cursor: pointer;
		float: right;
		height: 34px;
		width: 34px;
		margin: 2px 20px 2px;
		border: 1px solid #ccc;
		border-radius: 50%;
		overflow: hidden;
		background: url(../assets/img/f-user-icon.png) no-repeat 0 0/34px 34px;
	}

	.head-img img {
		height: 100%;
		width: 100%;
	}

	.head-img:hover {
		border: 1px solid #56d25b;
	}

	.search {
		font-size: 0;
		height: 40px;
		width: 100%;
		float: left;
		text-align: center;
		margin-top: 4px;
	}

	.search input {
		font-size: 16px;
		vertical-align: top;
		height: 40px;
	}

	.search [type="search"] {
		width: 450px;
		border: 1px solid #b2d430;
		border-radius: 6px 0 0 6px;
		padding: 0 5px;
		outline: none;
	}

	.search [type="button"] {
		color: #fff;
		padding: 0 10px;
		border: 0;
		border-radius: 0 6px 6px 0;
		background: #b2d430;
	}

	.search [type="button"]:hover {
		background: #82d430;
	}
</style>
