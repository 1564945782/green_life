<!-- 描述：最底部的footer -->
<template>
  <ul class="bottom-footer clear">
	<li><a href="#">footer选项一</a></li>
	<li><a href="#">footer选项二</a></li>
	<li><a href="#">footer选项三</a></li>
	<li><a href="#">footer选项四</a></li>
	<li><a href="#">footer选项五</a></li>
  </ul>
</template>

<script>
export default {
  name: 'bottom-footer',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	.bottom-footer{
		height: 50px;
		background: #333;
	}
	li{
		float: left;
		padding: 0 15px;
		line-height: 50px;
	}
	a{
		color: #ccc;
	}
	a:hover{
		color: #fff;
	}
</style>
