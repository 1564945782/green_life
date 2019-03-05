<!-- 描述：这是example示例文件 -->
<template>
  <div class="feedback">
  		<secondary-nav :curUser="currUser"></secondary-nav>
		<div class="feed-wrap">
			<div class="feed-welcome">欢迎您，<strong>{{currUser.nickname}}</strong></div>
			<textarea placeholder="在这里输入您的反馈意见"></textarea><br />
			<button type="button">提交</button>
		</div>
  </div>
</template>

<script>
	import secondaryNav from '../components/secondary_nav'
	export default {
		name: 'feedback',
		props:["currUser"],
		components:{
			secondaryNav
		}
	}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.feed-wrap{
		width: 90%;
		margin: 0 auto;
		padding: 0 20px 15px;
		background: #eee;
	}
	.feed-welcome{
		font: normal 20px/30px "微软雅黑";
		padding: 15px 0;
	}
	.feed-wrap textarea{
		height: 250px;
		width: 100%;
		font-size: 18px;
		resize: none;
		overflow: auto;
	}
	.feed-wrap button{
		padding: 5px 10px;
	}
</style>
