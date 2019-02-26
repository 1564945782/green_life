<!-- 描述：最底部的footer -->
<template>
  <div class="bottom-footer">
				<div class="img-box">
					<div class="list">
						<img class="list-box" src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3211196971,689073293&fm=26&gp=0.jpg" alt="">
						<img class="list-box" src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3428712718,2805542683&fm=26&gp=0.jpg" alt="">
						<img class="list-box" src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2382638532,595019554&fm=26&gp=0.jpg" alt="">
					</div>
				</div>
				<div class="liner"></div>
				<div class="text-1">
					© 2019 youxiake.com 版权所有法律顾问：四川四海方圆律师事务所 傅林放 成都市市场投诉电话：0123-456789 投诉及紧急事件联系电话：400-670-6300|四川省成都市武侯区科华北路99号6楼
				</div>
				<div class="text-2">
					预订电话(免长途费)：400-670-6300，公司总部地址：四川省成都市武侯区科华北路99号6楼
				</div>
				<div class="text-3">
					萌芽小镇的所有绿植在这里等你哦！
				</div>
				<div class="text-4">
					@萌芽小镇|@GREEN-LIFE|@小叶的温度
				</div>
	</div>
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
		width: 100%;
		height: 200px;
		margin-top: 30px;
		background: url("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2318092073,2858379104&fm=26&gp=0.jpg");
	}
	
	.img-box{
		width: 100%;
		height: 70px;
		margin-top: 10px;
	}
	.list{
		margin-top: 10px;
		width: 400px;
		height:70px;
		margin: 0 auto;
		display: flex;
		justify-content: space-around;
	}
	.list-box{
		width: 60px;
		height: 60px;
		border-radius: 50%;
		background-color: lavender;
	}
	.liner{
		width: 80%;
		height: 2px;
		background-color: #7E797B;
		margin: 0 auto;
		font-size: 14px;
		margin-bottom: 10px;
	}
	.text-1{
		width: 800px;
		height: 30px;
		margin: 0 auto;
		color: #7E797B;
		margin-bottom: 10px;
	}
	.text-2{
		width: 600px;
		height: 30px;
		margin: 0 auto;
		color: #7E797B;
	}
	.text-3{
		width: 257px;
		height: 18px;
		margin: 0 auto;
		color: #7E797B;
	}
	.text-4{
		width: 300px;
		height: 18px;
		margin: 0 auto;
		color: #7E797B;
	}
</style>
