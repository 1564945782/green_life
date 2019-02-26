<template>
  <div class="details">
		<secondary-nav></secondary-nav>
		<!-- 中间部分 -->
		<section class="banner">
			<div class="box_one">
				<div class="banner-left">
					<div class="big-img">
						<img src="https://img.alicdn.com/imgextra/i3/3252508962/O1CN012G4e0WSvpU6Ao0D_!!0-item_pic.jpg_430x430q90.jpg" alt="">
					</div>
					<div class="small-img-box">
						<div class="small-img">
							<img src="" alt="">
						</div>
						<div class="small-img">
							<img src="" alt="">
						</div>
						<div class="small-img">
							<img src="" alt="">
						</div>
						<div class="small-img">
							<img src="" alt="">
						</div>
						<div class="small-img">
							<img src="" alt="">
						</div>
					</div>
				</div>
				<div class="banner-right">
					<p class="info_1">仙人球植物盆栽室内开花防辐射桌面仙人掌盆栽植物多肉植物仙人球</p>
					<p class="info_2">保证成活 2盆送工具</p>
					<!-- 价格区域 -->
					<div class="price">
						<div class="price_one">
							<span class="del_price_str">价格</span>
							<del class="del_price_num">￥11111</del><br>
						</div>
						<div class="price_two">
							<span class="ins_price_str">促销价</span>
							<span class="ins_price_num">￥22222</span>
						</div>
						<p class="discount">淘金币可抵扣商品价格2%</p>
					</div>
					<!-- 运费区域 -->
					<div class="route">
						<span class="route_price">运费</span>
						<el-dropdown>
							  <span class="el-dropdown-link">
									四川成都<i class="el-icon-arrow-down el-icon--right"></i>
							  </span>
							  <el-dropdown-menu slot="dropdown">
								<el-dropdown-item>四川绵阳</el-dropdown-item>
								<el-dropdown-item>四川德阳</el-dropdown-item>
								<el-dropdown-item>四川眉山</el-dropdown-item>
								<el-dropdown-item>四川雅安</el-dropdown-item>
								<el-dropdown-item>四川资阳</el-dropdown-item>
							  </el-dropdown-menu>
						</el-dropdown>
						<span>至</span>
						
					</div>
				</div>
			</div>
		</section>
		<a href="#" class="back-top" title="返回顶部">↑</a>
  </div>
</template>

<script>
	import {$,$$} from '../assets/js/base.js'
	import mainNav from '../components/main_nav'
	import secondaryNav from '../components/secondary_nav'
	export default {
		name: 'details',
		components:{
			mainNav,secondaryNav
		}
	}
</script>

<style>
	.banner{
		width: 100%;
	}
	.box_one{
		width: 1200px;
		margin: 0 auto;
		display: flex;
		margin-top: 30px;
	}
	.banner-left{
		width: 460px;
		height: 500px;
		background-color: lavenderblush;
	}
	.big-img{
		width: 420px;
		height: 420px;
		background-color: lemonchiffon;
	}
	.small-img-box{
		width: 420px;
		height: 60px;
		margin-top: 20px;
		display: flex;
		justify-content: space-around;
	}
	.small-img{
		width: 60px;
		height: 60px;
		background-color: lightcoral;
		margin: 0 auto;
	}
	.banner-right{
		width: 740px;
		height: 500px;
		background-color: skyblue;
	}
	.info_1{
		font-size: 18px;
		font-weight: bold;
		margin-top: 5px;
		margin-left: 5px;
	}
	.info_2{
		font-size: 16px;
		margin-top: 5px;
		color: #FF0036;
		margin-left: 5px;
	}
	.price{
		width: 100%;
		height: 90px;
		background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAggAAADGCAMAAACAX4i8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAEhQTFRF7Ovr5+fn8vHx7e3t6ejo8/Ly5uXl7u3t6unp5+bm6urq9PT09fX18fDw9PPz7u7u8fHx8/Pz7ezs5eTk7+7u8O/v9vX16enpNd0tWQAABxVJREFUeNrs3GFy2zgMBWBomWyiNNt0s459/5vW3jZNHNsSJYEAHvh0AP/AfAM+DEjLsOC7e3iL+v21P37f/lH8xV2RFt/hP8Pv77tD7SeJHOyf/9WU8FY6crAEQngHp57wI3ZPCOtgAQQEB/v997fIEuI6qIeA4WD/rNoTlE+HwA6qIYA4OJ0OYXtCZAe1EHAcxE2MoR1UQgByoD5FvnbhoA4CloNjTwh4OgR3UAUBzIH2FKlyOkR3UAMBz0G8KTK8gwoIiA72z99DJcb4DuYhQDoIlhgBHMxCQHWwf75/i9ITEBzMQYB1EGjvAOFgBgKygyiJEcPBNARsB8fEGGCKBHEwCQHcQYibKigOpiDgO/DfO8A4mICQwIF7T8BxcBtCDgf7vefeAcjBTQhZHHjeVEFycAtCGgeOUySUgxsQMjnw2jtgObgOIZUDp8QI5uAqhGwOPPYOaA6uQUjnwOGmCpyDKxAyOrBOjHgOLiHkdGC7dwB0cAEhqQPTxIjo4CuEvA7s9g6QDr5ASOzA7KYKpoNzCLkd2CRGUAdnELI7sNg7oDr4DCG9A4OeAOvgE4QeHLROjLgOPiB04aDxFAns4A+EXhy0fCGL7OAdQjcOGu4doB38htCTg1aJEdvBLwh9OWizdwB38D+Ezhw0SYzoDk4Q+nOwf75XniLhHRwhdOhAfe/wBO/gIH060E2M5W5Ed3CQTh1oJsZyrOMI7uAgnTpQTIwnBwerntDKQVwIzR1o7R3K70oO0A7CQmjvQKknvDsw6QntHESFYOJA44Vs+Sjl3QDsICgEIwfbp8hyVswR10FMCGYOtk6R5w4anw5NHYSEYOhg2wvZclHOEdVBRAiWDjYlxksHDXtCYwcBIRg7WP9Ctlwt6IDpIB4EawerE+N1B416QnMH4SA4OFiXGMutiraQ0N5BNAguDtbsHcpETUdAB8Eg+DhYkRinHKj3BAsHsSC4OVh6U6XMVHWAcxAKgp+DhYlxzoFqT7BxEAmCq4Mle4cyX1a9vYORg0AQnB3Uv5AtVYUdsRzEgeDtoHqKrHOgdDqYOQgDIYCDupsqpbq0A5KDKBAiOKiaIusdKPQEQwdBIARxML93KIuKO+A4iAEhioPZKbIsrO4I4yAEhEAOphPjUgebTgdbBxEghHIwtXcoK+o7gjgIACGWg4nEuMbB6p5g7cAfQjgHt/YOZWWFBwgH7hDiObiRGNc6WNUT7B14Qwjp4FpiLOtLvHzv4ODAGUJQB5eJsWwq8hjfgS+EqA4uesI2BwtPBxcHrhACOzjfO5TNZR6iO/CEENnB2RS53cGCnuDkwBFCcAcf/8xZNOpcmxi9HPhBiO7gzxRZlCo9hnbgBgHAwa/EqOWg6nTwc+AFAcLB6YVsUaz1GNiBEwQMB8fvx6Nired6gqcDHwgwDu5fXlWrPYR14AIBx8FutytPRj3B14EHBCgHRwkHEwnODhwggDnYvaj2hFuJ0duBPQQ0B6ee0D4xujswhwDoYPegKuFaYvR3YA0B0UH7xBjAgTEEUAfaiXGI58AWAqyDpokxhANTCLgOWk6RMRxYQoB2oJ0Yx2AODCFgO2g1RUZxYAcB3sExJ+jvHcI4MIOA70B7ijydDnEcWEFI4UA9MQZyYAQhiYNjYlTtCYEc2EDI4kA7MR46g5DIwe7h9ZEQ6EA/MXYEIZkD5cTYD4R0DrT3Dp1AyOcgaU8QOljsQHvv0AGEnA5STpFCBysc7JTfOySHkNdBwilS6GCVg3SJUehgnQPtvUNaCNkdZEuMQgerv5dMewehgw1fotNB6GCTBEKgg1x7B6GDjT3hkRDoINHeQeiAPaEJhO4cJEmMQgcKEp4IgQ6S9AShAyZGdQi9OsiQGIUOVD74mypCB0yMuhA6d4CeGIUO1E4H6J4gdMDEqAiBDtBfyAodMDGqQaAD/MQodMDEqASBDjL0BKED7cSIOTsIHXCK1IBAB83/mRMCAh1kmSKFDpgYN0OggzwvZIUOmBg3QqCDTHsHoQMmxk0Q6CBXYhQ64N5hAwQ6yNYThA64d1gNgQ7yTZFCB9w7rIRABxmnSKEDJsZVEOggZ2IUOmBiXAGBDrK+kBU6YGJcDIEO8iZGoQPuHRZCoIPMiVHogDdVFkGgg9yJUeiAiXEBBDrInhiFDtgTqiHQQf69g9ABp8hKCHTQw95B6IBTZBUEOugjMQodcIqsgEAHvSRGoQPuHWYh0EE/iVHogIlxBgId9JQYhQ7YEyYh0EFfewehA06RExDowCYnRIdAB91NkUIHTIy3INBBh4lR6ICJ8ToEOujyporQARPjNQh00GliFDrg3uESAh10mxiFDjhFfoVABx33BKEDJsZzCHTQdWIUOmBP+AyBDjpPjEIHTIwfEOig+5sqQgfcO7xDoAMmxhMEOuAUeTj8FGAACqmqUagiyncAAAAASUVORK5CYII=");
		margin-top: 10px;
	}
	.del_price_str,
	.ins_price_str,
	.route_price{
		font-size: 14px;
		margin-left: 10px;
		color: #999999;
	}
	.del_price_num{
		margin-left: 50px;
		color: ;
	}
	.ins_price_num{
		margin-left: 30px;
		font-size: 30px;
		font-weight: bold;
		color: #FF0036;
	}
	.discount{
		font-size: 12px;
		color: #FF0036;
		margin-left: 88px;
		margin-top: 5px;
	}
	.route{
		width: 100%;
		margin-top: 10px;
	}
</style>
