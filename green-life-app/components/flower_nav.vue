<template name="flowerNav">
	<view class="classification center">
		<ul>
			<li class="nav01">
				<div></div>
			</li>
			<li class="nav04 center">
				<ul><li></li></ul>
			</li>
			<li class="nav03" @click="sonchange(1)">{{classname}}</li>
			<li class="nav04 center">
				<ul><li></li></ul>
			</li>
			<li class="nav07">
				<div></div>
			</li>
		</ul>
	</view>
</template>

<script>
	export default {
		name: 'flowerNav',
		data() {
			return {
				flag: 1
			};
		},
		props: ["classname"],
		methods: {
			sonchange(e) {
				this.$emit('change', e);
			}
		}
	}
</script>

<style>
	.center {
		margin: auto;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
	}

	.classification {
		width: 100%;
	}

	.classification ul {
		width: 100%;
		height: 80px;
		margin: 0upx;
		padding: 0px;
		display: flex;
		align-items: center;
		justify-content: center;
		color: #347b2c;
	}

	ul li {
		width: 10%;
	}

	

	ul li:hover {
		color: #50ce66;
	}

	.nav01 div {
		width: 100%;
		height: 3px;
		margin-bottom: -5px;
		background-color: rgba(236, 232, 232, 0.6);
		background: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(146, 208, 139, 0.5));
	}

	.nav07 div {
		width: 100%;
		height: 3px;
		margin-bottom: -5px;
		background-color: rgba(236, 232, 232, 0.6);
		background: linear-gradient(to right, rgba(146, 208, 139, 0.5), rgba(0, 0, 0, 0));
	}

	.nav01,
	.nav07 {
		width: 35%;
		list-style-type: none;
	}

	.nav04 {
		width: 0%;
		list-style-type: none;
	}
	.nav04 li{
		width: 0%;
		margin-left: 30px;
		list-style-type: bengali;
	}

	.nav03,
	.nav05 {
		width: 20%;
		display: flex;
		align-items: center;
		justify-content: center;
	}
</style>
