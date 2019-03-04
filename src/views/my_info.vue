<template>
	<div class="myinfo">
		<main-nav :curUser="currUser"></main-nav>
		<div class="info_out">
			<el-container style="height: 500px; border: 1px solid #eee">
				<el-aside width="200px" style="background-color: #fcd8c8">
					<el-menu :default-openeds="['3']" id="l_mymenu">
						<el-submenu index="1">
							<template slot="title"><i class="el-icon-message"></i>{{left_list[0][0]}}</template>
							<el-menu-item index="1-1" @click="tab_change(1)">{{left_list[0][1]}}</el-menu-item>
						</el-submenu>

						<el-submenu index="2">
							<template slot="title"><i class="el-icon-menu"></i>{{left_list[1][0]}}</template>
							<el-menu-item index="2-1" @click="tab_change(2)">{{left_list[1][1]}}</el-menu-item>
							<el-menu-item index="2-2" @click="tab_change(3)">{{left_list[1][2]}}</el-menu-item>
						</el-submenu>

						<el-submenu index="3">
							<template slot="title"><i class="el-icon-setting"></i>{{left_list[2][0]}}</template>
							<el-menu-item index="2-1" @click="tab_change(4)">{{left_list[2][1]}}</el-menu-item>
							<el-menu-item index="2-2" @click="tab_change(5)">{{left_list[2][2]}}</el-menu-item>
						</el-submenu>

						<el-submenu index="4">
							<template slot="title"><i class="el-icon-setting"></i>{{left_list[3][0]}}</template>
							<el-menu-item index="2-1" @click="tab_change(6)">{{left_list[3][1]}}</el-menu-item>
							<el-menu-item index="2-2" @click="tab_change(7)">{{left_list[3][2]}}</el-menu-item>
						</el-submenu>
						<el-submenu index="5">
							<template slot="title"><i class="el-icon-setting"></i>{{left_list[4][0]}}</template>
							<el-menu-item index="2-1" @click="tab_change(8)">{{left_list[4][1]}}</el-menu-item>
							<el-menu-item index="2-2" @click="tab_change(9)">{{left_list[4][2]}}</el-menu-item>
						</el-submenu>
						<el-submenu index="6">
							<template slot="title"><i class="el-icon-setting"></i>{{left_list[5][0]}}</template>
							<el-menu-item index="2-1" @click="tab_change(10)">{{left_list[5][1]}}</el-menu-item>
							<el-menu-item index="2-2" @click="tab_change(11)">{{left_list[5][2]}}</el-menu-item>
						</el-submenu>
						<el-submenu index="7">
							<template slot="title"><i class="el-icon-setting"></i>{{left_list[6][0]}}</template>
							<el-menu-item index="2-1" @click="tab_change(12)">{{left_list[6][1]}}</el-menu-item>
							<el-menu-item index="2-2" @click="tab_change(13)">{{left_list[6][2]}}</el-menu-item>
						</el-submenu>
					</el-menu>
				</el-aside>

				<el-container id="main_info01" >
					<el-header style="text-align: right; font-size: 12px">
						<el-dropdown>
							<i class="el-icon-setting" style="margin-right: 15px"></i>
							<el-dropdown-menu slot="dropdown">
								<el-dropdown-item>查看</el-dropdown-item>
								<el-dropdown-item>新增</el-dropdown-item>
								<el-dropdown-item>删除</el-dropdown-item>
							</el-dropdown-menu>
						</el-dropdown>
						<span>{{form.name?form.name:userData}}</span>
					</el-header>

					<el-main id="my_content" :style="{display:tabdisplay}">
						<div class="mytop">
							<div class="mytop_child01">
								<div class="mytop_left_img">
									<img :src="form.imgs?form.imgs:'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=427924835,1332595887&fm=26&gp=0.jpg'" mode="" title="头像"></img></div>
								<div>
									<div class="child_next01">
										<span class="myname">{{form.name}}</span>
										<div>
											<img src="../assets/img/i_won.png" mode=""></img>
											<span>Lv.10</span>
										</div>
									</div>
									<div class="child_next02">
										<div class="cn_01">
											<img src="../assets/img/i_flower02.png" mode=""></img>
											<span>284</span>
										</div>
										<div class="cn_01">
											<img src="../assets/img/i_flower01.png" mode=""></img>
											<span>20</span>
										</div>
									</div>
								</div>
							</div>
							<div class="mytop_child02">
								<div><img src="../assets/img/i_flower02.png" alt=""><span>鲜花充值</span></div>
								<div><img src="../assets/img/i_flower03.png" alt=""><span>花篮充值</span></div>
								<div><img src="../assets/img/i_flower01.png" alt=""><span>彩虹币充值</span></div>
							</div>
						</div>

						<div class="my_info">
							<el-form ref="form" :model="form" label-width="80px">
								<div class="my_title">My Informations <span id="edited" @click="myedited" :style="{color:form.mycolor}">编辑</span></div>
								
								<div class="my_info_content">
									<el-form-item label="头像">

										<img :src="form.imgs?form.imgs:'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=427924835,1332595887&fm=26&gp=0.jpg'" alt="">

									</el-form-item>
									<el-form-item label="id:" style="display: none;">
										<el-input v-model="form.id" :disabled="disabled" blur="true"></el-input>
									</el-form-item>
									<el-form-item label="会员名:">
										<el-input v-model="form.name" :disabled="disabled" blur="true"></el-input>
									</el-form-item>
									<el-form-item label="性别:">
										<el-input v-model="form.sex" :disabled="disabled" blur="false"></el-input>
									</el-form-item>
									<el-form-item label="邮箱:">
										<el-input v-model="form.email" :disabled="disabled"></el-input>
									</el-form-item>
									<el-form-item label="tel:">
										<el-input v-model="form.tel" :disabled="disabled"></el-input>
									</el-form-item>
									<el-form-item label="生日:">
										<el-input v-model="form.birth" :disabled="disabled"></el-input>
									</el-form-item>
									<el-form-item label="地址:">
										<el-input v-model="form.address" :disabled="disabled"></el-input>
									</el-form-item>
									<el-form-item label="个人简介:">
										<el-input v-model="form.brief" :disabled="disabled"></el-input>
									</el-form-item>
									<el-form-item id="mySubmit" :style="{display:display}">
										<el-button type="primary" @click="onSubmit">保存</el-button>
										<el-button @click="onconsel">取消</el-button>
									</el-form-item>
								</div>
							</el-form>
						</div>
					</el-main>
					
					
					<el-main id="info_tab_sec" :style="{display:tab_show==1?'block':'none'}">{{info_tab_sec[0]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==2?'block':'none'}">{{info_tab_sec[1]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==3?'block':'none'}">{{info_tab_sec[2]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==4?'block':'none'}">{{info_tab_sec[3]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==5?'block':'none'}">{{info_tab_sec[4]}}</el-main>
					
					<el-main id="info_tab_sec" :style="{display:tab_show==6?'block':'none'}">{{info_tab_sec[5]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==7?'block':'none'}">{{info_tab_sec[6]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==8?'block':'none'}">{{info_tab_sec[7]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==9?'block':'none'}">{{info_tab_sec[8]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==10?'block':'none'}">{{info_tab_sec[9]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==11?'block':'none'}">{{info_tab_sec[10]}}</el-main>
					<el-main id="info_tab_sec" :style="{display:tab_show==12?'block':'none'}">{{info_tab_sec[11]}}</el-main>
					
					<el-main id="info_tab_sec" :style="{display:tab_show==13?'block':'none'}">{{info_tab_sec[12]}}</el-main>
					
					
					
				</el-container>
				
				
				
			</el-container>
		</div>

	</div>

</template>

<script>
	import $ from 'jquery';

	import mainNav from '../components/main_nav'
	export default {
		name: 'myinfo',
		props: ["currUser"],
		components: {
			mainNav
		},
		data() {
			const item = {
				date: '2016-05-02',
				name: '王小虎',
				address: '上海市普陀区金沙江路 1518 弄'
			};
			return {
				form: {
					id:"",
					imgs: "",
					name: 'XXX',
					sex: '保密',
					email: '133456@qq.com',
					tel: 'XXX',
					birth: '2000-01-01',
					address: '四川省-成都市-武侯区',
					brief: '让绿色走进生活！',	
					mycolor:"#d8c797"
				},
				info_tab_sec:["暂无商家消息","暂无足迹","暂无收藏","会员中心暂未开放","个人设置","充值中心","积分转让","安全中心暂未开放","注销账户暂未开放","素材1","素材1","商家","商品"],
				tab_show:false,
				tabdisplay:"block",
				disabled:true,
				display:"none",
				userData: "未登录",
				tableData: Array(20).fill(item),
				left_list: [
					["消息", "商家回复"],
					["我的收藏", "足迹", "收藏"],
					["个人信息", "会员中心", "个人设置"],
					["账户记录", "充值中心", "积分转让"],
					["账户设置", "安全中心", "注销账户"],
					["素材交易平台", "素材1", "素材2"],
					["关注", "商家", "商品"]
				]
			};
		},
		mounted() {
			this.form.id = this.currUser.id;
			this.form.imgs = this.currUser.head_img;
			this.form.name = this.currUser.nickname;
			this.form.tel = this.currUser.tel;
			console.log(this.currUser)
		},
		methods: {
			onSubmit() {
				let _this=this
				console.log('submit!');
				let url="http://localhost:81/changeuser?cb=?";
				
				// console.log(mydata)
				$.getJSON(url,_this.form,function(result){
					// that.goodsData=result;
					console.log("数据返回成功-------------")
					console.log(result)
					_this.form.mycolor="rgb(243, 165, 95)";
					_this.disabled=true;
					_this.display="none";
					_this.$alert('保存成功！！！', '温馨提示', {
						confirmButtonText: '确定',
						callback: action => {
							_this.$message({
								type: 'info',
								message: `action: ${ action }`
							});
						}
					});
				})
			},
			myedited(){
				console.log("myedited");
				if(!this.form.id){
					console.log(this.form.id);
					this.$router.push({
						path:'/login'
					})
				}
				this.disabled=false
				console.log(this.disabled)
				this.form.mycolor="rgb(243, 165, 95)";
				this.display="block";
			},
			onconsel(){
				console.log('onconsel!');
				this.form.mycolor="rgb(243, 165, 95)";
				this.disabled=true;
				this.display="none";
			},
			tab_change(e){
				console.log("tab_change",e)
				this.tab_show=e
				this.tabdisplay="none";
				if(e==5){
					this.tab_show=false
					this.tabdisplay="block";
				}
			}
		}
	}
</script>

<style>
	.myinfo {
		background: url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551452307510&di=dc46a2cb2d2395cf7225c7f2427c8c51&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617120843_8BrKu.jpeg) no-repeat fixed;
		background-size: cover;
	}

	.info_out {
		width: 1000px;
		margin: auto;
		margin-top: 20px;
		height: 540px;
	}

	.el-header {
		background-color: #B3C0D1;
		color: #333;
		line-height: 60px;
	}

	.info_out .el-header {
		background-color: #fee2d8;
	}

	.el-aside {
		color: #333;
	}

	#l_mymenu {}

	#l_mymenu .el-submenu__title:hover {
		background-color: #b3c0d1;
	}

	#l_mymenu .el-submenu {
		background-color: #fec9b687;
		margin-bottom: 1px;
	}

	#l_mymenu .el-submenu__title {
		color: #FFFFFF;
	}

	#l_mymenu .el-submenu .el-menu {
		background-color: #fcd8c8;
	}

	#l_mymenu .el-menu-item {
		color: #FFFFFF;
		border-bottom: 1px solid white;
	}

	#l_mymenu .el-menu-item:focus,
	.el-menu-item:hover {
		outline: 0;
		background-color: red;
	}

	#l_mymenu .is-active {
		color: #fee2d8;
	}

	#my_content {
		background-color: #dcdcdc87;
		padding: 0;
	}

	.mytop {
		width: 100%;
		height: 150px;
		margin: 0px;
		padding: 10px 0;
		background-color: #f8f8f878;
	}

	.mytop .mytop_child01 {
		display: flex;
		/* align-items: center; */
		/* justify-content: center; */
	}

	.mytop .mytop_left_img {
		margin-left: 20px;
		width: 80px;
		height: 80px;
		border: 1px solid #e0dcdc63;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.mytop .mytop_left_img img {
		width: 100%;
		height: 100%;
	}

	.mytop .child_next01 {
		height: 50%;
		width: 170px;
		display: flex;
		align-items: center;
		justify-content: space-around;
	}

	.mytop .child_next01 div {}

	.mytop img {
		width: 18px;
		height: 18px;
	}

	.mytop span {
		font-size: 12px;
		color: #D3BD9F;
		text-shadow: #bbb;
		text-shadow: 1px red;
		text-shadow: 1px 0.5px #fee2d8;
	}

	.mytop .myname {
		font-size: 14px;
	}

	.mytop .child_next02 {
		display: flex;
		align-items: center;
		justify-content: space-around;
		height: 50%;
		width: 170px;
	}

	.mytop .mytop_child02 {
		width: 100%;
		height: 50px;
		margin-top: 30px;
		display: flex;
	}

	.mytop .mytop_child02 div {
		width: 100px;
		padding: 0 15px;
		height: 35px;
		background-color: #fff;
		border: 1px solid #bbbbbb6e;
		margin: 0 5px;
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		align-items: center;
		justify-content: space-around;
	}

	.mytop .mytop_child02 div:nth-child(1) {
		margin-left: -1px;
	}

	.my_info .my_title {
		width: 100%;
		height: 80px;
		font-size: 20px;
		text-align: center;
		line-height: 80px;

	}
	.my_info #edited{
		    /* text-align: right; */
    /* color: #f9cd98; */
    /* position: relative; */
    /* right: 0px; */
    margin-left: 50px;
	}
	.my_info .my_info_content {
		display: flex;
		flex-direction: column;
		/* align-items: center; */
		justify-content: center;
		padding-left: 50px;
	}

	.my_info .el-input__inner {
		width: 200px;
		    background-color: #ffffff80;
    outline: none;
	}
	.my_info .el-input__inner:hover {
		outline: none;
	}
	.my_info img{
	    width: 50px;
    height: 50px;
    border-radius: 50%;
    margin-left: 60px;
	}
	#info_tab_sec{
		text-align: center;
    line-height: 300px;
    font-size: 26px;
    color: #b7afb0;
	}
	
</style>
