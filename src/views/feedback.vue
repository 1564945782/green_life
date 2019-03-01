<template>
  <div class="feedback">
		<main-nav :curUser="currUser"></main-nav>
		<div class="feedback_box">
			<div class="feed_box">
				<el-input
				  type="textarea"
				  :rows="2"
				  placeholder="请输入内容"
				  v-model="textarea">
				</el-input>
					<!-- 按钮 -->
					<el-row>
					  <el-button type="primary">发表</el-button>
					  <el-button type="info">清空</el-button>
					</el-row>
			
			</div>
		</div>
  </div>
</template>

<script>
	import {$,$$} from '../assets/js/base.js'
	import mainNav from '../components/main_nav'
	export default {
		name: 'feedback',
		props:["currUser"],
		components:{
			mainNav
		}
	}
</script>

<style>
	.feedback_box{
		width: 100%;
	}
	.feed_box{
		width: 1200px;
		height: 300px;
		margin: 0 auto;
		background-color: lavender;
	}
	.el-row{
		width: 200px;
		margin-right: 100px;
	}
</style>
