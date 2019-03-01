<template name='bionic'>
	<view class="top">
			<view class="top_child">
				<view class="top_child01"><img :src="top_img.bio_src[0]" :alt="top_img.bio_alt[0]" :title="top_img.bio_name[0]"></view>
				<view class="top_child02"><img :src="top_img.bio_src[1]" :alt="top_img.bio_alt[1]" :title="top_img.bio_name[1]"></view>
				<view class="top_child03"><img :src="top_img.bio_src[2]" :alt="top_img.bio_alt[2]" :title="top_img.bio_name[2]"></view>
			</view>
		</view>
</template>

<script>
	export default {
		name: 'bionic',
		data() {
			return {
                top_img:{
                    "bio_src":[
        		        'https://gd3.alicdn.com/imgextra/i4/559795223/TB2cCtBfYZnBKNjSZFrXXaRLFXa_!!559795223.jpg_400x400.jpg_.webp',
        		        'https://img.alicdn.com/imgextra/i4/3064978740/TB2I_vKl8smBKNjSZFFXXcT9VXa_!!3064978740.jpg_430x430q90.jpg',
        		        'https://img.alicdn.com/imgextra/i4/2264215783/TB2NAubhFXXXXXrXXXXXXXXXXXX_!!2264215783.jpg_430x430q90.jpg'],"bio_alt":['大丽花01','大丽花02','大丽花03'],
                    "bio_name":["小清新","大丽花","大丽花"]
                }
            };
		}
	}
</script>

<style>
img:hover{
  opacity: 0.9;
  transition: all .3s ease-in;
}
.top{
    margin-bottom: 60px;
    width: 100%;
    /* height: 300px; */
    background-image: url(http://demo.sc.chinaz.com/Files/DownLoad/moban/201809/moban3240/images/bg3.jpg);
    background-size: contain;
    background-repeat: no-repeat;
	display:flex;
	align-items: flex-end;
    justify-content: center;
}
.top_child{
    width: 70%;
    height: 200px;
	margin-left: 15%;
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    /* top: 10%; */
}
.top_child img{
	width: 100%;
    height:  100%;
}
.top_child01{
    width: 30%;
    height: 78px;
    background-color: green;
    z-index: 2;
    align-self: flex-end;
    position: relative;
    top: 20%;
    left:10%;
}
.top_child02{
    width: 50%;
    height: 150px;
    background-color: blue;
    z-index: 1;
    align-self: flex-start;
    position: relative;
    top: 36%;
}
.top_child03{
    width: 40%;
    height: 110px;
    background-color: green;
    z-index: 2;
    align-self: flex-end;
    position: relative;
    top: 20%;
    left:-5%;
}
</style>
