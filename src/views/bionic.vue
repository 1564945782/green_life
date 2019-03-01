<template>
  <div class="bionic">
		<main-nav :curUser="currUser"></main-nav>
		<div class="top">
			<div class="top_child">
				<div class="top_child01"><img :src="top_img.bio_src[0]" :alt="top_img.bio_alt[0]" :title="top_img.bio_name[0]"></div>
				<div class="top_child02"><img :src="top_img.bio_src[1]" :alt="top_img.bio_alt[1]" :title="top_img.bio_name[1]"></div>
				<div class="top_child03"><img :src="top_img.bio_src[2]" :alt="top_img.bio_alt[2]" :title="top_img.bio_name[2]"></div>
			</div>
		</div>
        <flower-nav></flower-nav>
        <flower-displayb :c_img="tu_src"></flower-displayb>
        <meat-goods-display></meat-goods-display>
        <bottom-footer></bottom-footer>
  </div>
</template>

<script>
	import {$,$$} from '../assets/js/base.js'
	import mainNav from '../components/main_nav'
    import flowerDisplayb from '../components/flower_display_b'
    import flowerNav from '../components/flower_nav'
    import meatGoodsDisplay from '../components/meat_goods_display.vue'
    import bottomFooter from '../components/bottom_footer.vue'
	export default {
		name: 'bionic',
		components:{
			mainNav,flowerDisplayb,flowerNav,meatGoodsDisplay,bottomFooter
		},
		props:["currUser"],
		data(){
			return {
                top_img:{
                    "bio_src":[
        		        'https://gd3.alicdn.com/imgextra/i4/559795223/TB2cCtBfYZnBKNjSZFrXXaRLFXa_!!559795223.jpg_400x400.jpg_.webp',
        		        'https://img.alicdn.com/imgextra/i4/3064978740/TB2I_vKl8smBKNjSZFFXXcT9VXa_!!3064978740.jpg_430x430q90.jpg',
        		        'https://img.alicdn.com/imgextra/i4/2264215783/TB2NAubhFXXXXXrXXXXXXXXXXXX_!!2264215783.jpg_430x430q90.jpg'],"bio_alt":['大丽花01','大丽花02','大丽花03'],
                    "bio_name":["小清新","大丽花","大丽花"]
                },
                tu_src:{
                    "f_src":[
                        'https://gd1.alicdn.com/imgextra/i1/3329824816/O1CN01Ejvjv71lRlwzFYinN_!!3329824816.jpg_400x400.jpg_.webp',
                        'https://img.alicdn.com/imgextra/i1/2465746997/O1CN01vbxeYE21YfkrUCrlb_!!2465746997.jpg_430x430q90.jpg',
                        'https://gd1.alicdn.com/imgextra/i4/2200575633656/O1CN01Dc9kPr1csUVEPUDYR_!!2200575633656.jpg_400x400.jpg_.webp',
                        'https://img.alicdn.com/imgextra/i1/2465746997/TB23gbHc8USMeJjSspfXXX0VFXa_!!2465746997.jpg_430x430q90.jpg'],"myalt":['大丽花01','大丽花02','马蹄莲','大丽花04'],"f_name":["小清新","大丽花","马蹄莲","大丽花"]
                }
            }
		}
	}
</script>

<style>
img:hover{
  opacity: 0.9;
  transition: all .3s ease-in;
}
.top{
    margin-bottom: 250px;
	width:100%;
	height:500px;
	background-image: url("http://demo.sc.chinaz.com/Files/DownLoad/moban/201809/moban3240/images/bg3.jpg");
	display:flex;
	align-items: flex-end;
    justify-content: center;
}
.top_child{
    width: 70%;
    height: 450px;
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    top: 10%;
}
.top_child img{
	width: 100%;
    height:  100%;
}
.top_child01{
    width: 30%;
    height: 250px;
    background-color: green;
    z-index: 2;
    align-self: flex-end;
    position: relative;
    top: 20%;
    left:10%;
}
.top_child02{
    width: 50%;
    height: 400px;
    background-color: blue;
    z-index: 1;
    align-self: flex-start;
    position: relative;
    top: 20%;
}
.top_child03{
    width: 40%;
    height: 300px;
    background-color: green;
    z-index: 2;
    align-self: flex-end;
    position: relative;
    top: 20%;
    left:-5%;
}
</style>
