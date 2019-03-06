<!-- 描述：这是vue脚手架提供的模板 -->
<template>
	<div class="f_out">
		<div class="content02">

			<div class="c_wrap center" v-for="item in flower1.slice(0,3)">
				<div class="f_item_box">
					<div class="c_child02" :data-id="item.id" @click="todetails(item.id)">
						<div>
							<img :src="item.big_imgs.split(',')[0]?item.big_imgs.split(',')[0]:''" />
						</div>
						<p>{{item.name}}</p>
					</div>
				</div>
			</div>

			<div class="c_child04">
				 <img :src="flower1[3].big_imgs.split(',')[0]?flower1[3].big_imgs.split(',')[0]:''" /> 
			</div>
		</div>
	</div>
</template>

<script>


	export default {
		name: 'flowerDisplayb',
		props: ["flower1"],
		methods: {
			todetails(num) {
				console.log(num)
				this.$router.push({
					path: '/details?id=' + num
				})
			}
		}
	}
</script>

 <!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
	img:hover {
		opacity: 0.5;
		transition: all .3s ease-in;
	}
	.f_out{
		width: 100%;
		margin: 50px 0px;
		display: flex;
		justify-content: space-around;
		align-items: center;
		
		background-color: #eeeeee;
	}
	.content02 {
		margin: auto;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
		width: 1200px;
		margin: 0px 0px 0px 0px;
		display: flex;
		
	}

	.c_wrap {
		width: 25%;
		height: 280px;
		display: flex;
		align-items: center;
		justify-content: center;

	}

	.c_child01 {
		width: 35%;
		height: 280px;
		z-index: 2;

		position: relative;
	}

	.c_child01 div {
		line-height: 280px;
		color: #d2dae8;
		text-align: center;
		font-size: 30px;
		position: absolute;
		bottom: 0;
		left: 0px;
		right: 0px;
		background: rgba(62, 68, 70, 0.6);
		height: 100%;
		z-index: 22;
	}

	.c_child01 div:hover {
		background: radial-gradient(rgba(0, 0, 0, 0), rgba(125, 119, 125, 0.97));
		transition: all .8s ease-in;
	}

	.c_child01 img {
		width: 100%;
		height: 100%;
	}

	.c_child02 {
		width: 100%;
		height: 280px;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-wrap: wrap;
    border-radius: 10px;
	}

	.c_child02 div {
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.c_child02 img {
		width: 170px;
		height: 170px;
		border-radius: 50%;
	}
	.c_child04{
		    width: 25%;
    height: 280px;
    margin: 0px;
    padding: 0px;
	    opacity: 0.9;
		    background-color:  #a9a5a5e3;
	}
	.c_child04 img{
		width: 100%;
		height: 100%;
	}
</style>
