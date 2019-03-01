<template name="shuffling">
	<view class="shuffling center">

		<swiper class="swiper" :indicator-dots="indicatorDots" :autoplay="autoplay" :interval="interval" :duration="duration" :circular="circular" :vertical="vertical">
			<swiper-item class="shuf" :style="{backgroundImage:'url('+background[0]+')'}">
				<view class="swiper-item uni-bg-red"></view>
			</swiper-item>
			<swiper-item class="shuf" :style="{backgroundImage:'url('+background[1]+')'}">
				<view class="swiper-item uni-bg-green"></view>
			</swiper-item>
			<swiper-item class="shuf" :style="{backgroundImage:'url('+background[2]+')'}">
				<view class="swiper-item uni-bg-blue"></view>
			</swiper-item>
		</swiper>


	</view>
</template>

<script>
	export default {
		name:"shuffling",
		data() {
			return {
				background: ['../static/flower/l-lunbo01.jpg', '../static/flower/l-lunbo02.jpg', '../static/flower/l-lunbo04.jpg'],
				indicatorDots: true,
				autoplay: true,
				interval: 2000,
				duration: 500,
				circular:true,
				vertical:true
			};
		},
		methods: {
			changeIndicatorDots(e) {
				this.indicatorDots = !this.indicatorDots
			},
			changeAutoplay(e) {
				this.autoplay = !this.autoplay
			},
			intervalChange(e) {
				this.interval = e.target.value
			},
			durationChange(e) {
				this.duration = e.target.value
			}
		}
	}
</script>

<style>
.shuf{
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
