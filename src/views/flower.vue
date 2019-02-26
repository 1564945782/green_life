<template>
<div class="flower">
	<main-nav></main-nav>	
	<flower-shuffling></flower-shuffling>
	<flower-nav @change="mychange"></flower-nav>
	<flower-displaya :mydata="(flag==1)?mydata.shui_data:mydata.tu_data"></flower-displaya>
	<flower-displayb :c_img="(flag==1)?c_img1.shui_src:c_img1.tu_src"></flower-displayb>
	<flower-displayb :c_img="(flag==1)?c_img2.shui_src:c_img2.tu_src"></flower-displayb>
	<section class="load_more">
		<div class="el-icon-d-arrow-left"></div>
	</section>
</div>
</template>

<script>

import {$,$$} from '../assets/js/base.js'
import mainNav from '../components/main_nav'
import flowerDisplaya from '../components/flower_display_a'
import flowerDisplayb from '../components/flower_display_b'
import flowerNav from '../components/flower_nav'
import flowerShuffling from '../components/flower_shuffling'
export default {
	name: 'flower',
	components:{
		mainNav,flowerDisplaya,flowerNav,flowerShuffling,flowerDisplayb
	},
	data(){
		return {
			mydata:{
				shui_data:{
					"mytext":['【睡莲不同花型盆器选择】','1、大型睡莲盆栽:最好准备口径50cm左右盆，越大开花越多;可以直接填土种，也可以里面放一个口径25--30cm的套盆种植。推荐开花多的乌汶，心闪，莹宝石，丹泉石，泰国王，迈阿密玫瑰。2、中小型睡莲盆栽:准备O径35cm左右盆，越大开花越多。泥深大概15cm左右，水深5-10cm左右。推荐鲁比、蓝星、黑美人、伊斯兰达、婴儿红、霞妃。3、微型睡莲盆栽:准备口径25cm左右盆，越大开花越多。泥深大概10cm左右，水深5cm左右。推荐海尔芙拉，紫珍妮。热带睡莲可塑性好，鲁比、黑美人、伊斯兰达小苗也可以小盆种植。4、睡莲池栽和水簇箱种植:准备C ]径15-35cm左右套盆，将睡莲种在套盆后再放入池中。5、定期施肥:睡莲新种后，要等20-30天，长新根和新叶后再开始下肥。以后每1-1.5个月一次，一次一小把。下到盆边缘。各类养花肥和复合肥都适合。防藻、防蚊和定期管理:有时间的时候，可以用小网捞清理藻类，预防藻类疯长;盆内适当养小鱼可以预防','【注意事项】','宜阳台，院子，楼顶，最好阳光充足，至少超过4小时光照;室内光线不足的地方种植，可以用水草灯补光。耐寒睡莲一般低温 维持在5度以上就可以种植;热带睡莲一般低温 维持在10度以上就可以种植。准备养睡莲的盆和泥:我们寄的是裸根苗，不带盆和泥;收到苗后如还没有准备好种植,先将苗拿出放置于阴凉的地方，用水泡着;收到苗后如叶有部分腐烂,属正常现象，用剪刀剪掉即可。泥最好选择肥沃松软的养花土;种植时泥深大概15cm以上，水位5- -15cm左右，实际根据盆大小、池深浅适当调整。种植时最好于下午或早上，阳光不强的时候。'],
					"myalt":['睡莲01','睡莲02'],
					"flowername":["一碗莲","睡莲"],
					"imgsrc":["https://img.alicdn.com/imgextra/i2/2986651903/TB2sCdik8yWBuNkSmFPXXXguVXa_!!2986651903-0-item_pic.jpg_430x430q90.jpg",
					"https://gd2.alicdn.com/imgextra/i1/662868211/TB2rAVPeYSYBuNjSspiXXXNzpXa_!!662868211.jpg_400x400.jpg_.webp"]
				},
				tu_data:{
					"mytext":['【大丽花应该选用什么样的盆器呢?】','采用多次换盆为好。盆宜深大通透性好,忌用浅小轻盆大丽花肉质块根较发达，宜用通透性较好、盆径30厘米至50厘米的土陶盆或紫砂盆,塑料盆通透性差,且较轻,遇大风有被吹下阳台的危险,如用塑料筒盆,要用绳扎附栏杆上,以防意外.','【大丽花对土壤的要求?】','宜用中性沙质壤土，忌用重粘土。大丽花以种植在沙质壤土中生长最佳,可用腐叶土50% ,菜园土35% ,沙10% ,草木灰5%混合成疏松肥沃的中性沙质壤土栽种,每年于早春翻盆另换新土,否则易退化,花少色淡。重粘土栽种易烂根,生长不良。栽植前要进行土壤深翻(深30厘米以上) ,并施入充分腐熟的有机肥、骨粉以及少量杀虫药剂,并覆上一薄层土,避免根直接与肥料接触而造成烂根。栽植深度以覆盖芽以上3厘米- 4厘米为宜,过浅易受冻害,过深则不易萌发。栽后浇一次透水。次日傍晚进行浅中耕,使土壤通气良好。株行距按花芽多少合理选择, -般在50-80厘米之间。'],
					"myalt":['大丽花01','大丽花02'],
					"flowername":["大丽花01","大丽花02"],
					"imgsrc":[
					'https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuicFAqe47L1y_!!4137666646.jpg_400x400.jpg_.webp',
     			   'https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuibKUsySuyLx_!!4137666646.jpg_400x400.jpg_.webp']
				}
			},
			c_img1:{
				shui_src:{
					"f_src":[
				        'https://img.alicdn.com/imgextra/i3/3350465491/TB16e7TbgMPMeJjy1XdXXasrXXa_!!0-item_pic.jpg_430x430q90.jpg',
				        'https://gd4.alicdn.com/imgextra/i4/3038175542/O1CN011qoHSa8Nge3fM4j_!!3038175542.jpg_400x400.jpg_.webp',
				        'https://img.alicdn.com/imgextra/i2/3350465491/O1CN01CIWSzD1qQvHuTR8zg_!!3350465491.jpg_430x430q90.jpg',
				        'https://gd2.alicdn.com/imgextra/i1/3166984744/O1CN011kunP8ixa1pHiWm_!!3166984744.jpg_400x400.jpg_.webp'],"myalt":['白掌粉掌','铜钱草','龟背竹','风信子'],"f_name":["小清新","铜钱草","龟背竹","风信子"]
			    },
			    tu_src:{
			    		"f_src":[
					        'https://gd1.alicdn.com/imgextra/i1/3329824816/O1CN01Ejvjv71lRlwzFYinN_!!3329824816.jpg_400x400.jpg_.webp',
					        'https://img.alicdn.com/imgextra/i1/2465746997/O1CN01vbxeYE21YfkrUCrlb_!!2465746997.jpg_430x430q90.jpg',
					        'https://gd1.alicdn.com/imgextra/i4/2200575633656/O1CN01Dc9kPr1csUVEPUDYR_!!2200575633656.jpg_400x400.jpg_.webp',
					        'https://img.alicdn.com/imgextra/i1/2465746997/TB23gbHc8USMeJjSspfXXX0VFXa_!!2465746997.jpg_430x430q90.jpg'],"myalt":['大丽花01','大丽花02','马蹄莲','大丽花04'],"f_name":["小清新","大丽花","马蹄莲","大丽花"]
			    }
	        },
	        c_img2:{
		        shui_src:{
			        "f_src":[
				        'https://gd3.alicdn.com/imgextra/i3/671770904/O1CN019U0UbC1IY4WlWb4vi_!!671770904.jpg_400x400.jpg_.webp',
				        'https://gd2.alicdn.com/imgextra/i4/0/T1fNprFXXgXXXXXXXX_!!0-item_pic.jpg_400x400.jpg_.webp',
				        'https://gd1.alicdn.com/imgextra/i4/383480227/O1CN0139mupg1DY0P3j1uFC_!!383480227.jpg_400x400.jpg',
				        'https://gd2.alicdn.com/imgextra/i2/285407770/TB22K0TcwTqK1RjSZPhXXXfOFXa_!!285407770.jpg_400x400.jpg_.webp'],
				        "myalt":['荷兰进口郁金香','文竹','富贵竹','空气凤梨 懒人无土植物'],"f_name":["荷兰进口郁金香","文竹","富贵竹","空气凤梨 懒人无土植物"]
			        },
			    tu_src:{
			    	"f_src":[
				        'https://gd4.alicdn.com/imgextra/i4/3329824816/O1CN01djlXCm1lRlx1fk1n4_!!3329824816.jpg_400x400.jpg_.webp',
				        'https://gd1.alicdn.com/imgextra/i1/3329824816/O1CN01Zuk2ID1lRlx3JH6LD_!!3329824816.jpg_400x400.jpg_.webp',
				        'https://gd2.alicdn.com/imgextra/i2/3329824816/O1CN01ubBEYg1lRlwuCv0S1_!!3329824816.jpg_400x400.jpg_.webp',
				        'https://gd4.alicdn.com/imgextra/i4/2328489053/TB2gwMZaQSWBuNjSszdXXbeSpXa_!!2328489053.jpg_400x400.jpg_.webp'],"myalt":['大丽花01','大丽花02','大丽花03','大丽花04'],"f_name":["玫瑰","大丽花","大丽花","大丽花"]
		        }
	        },
	        flag:1   
        }
	},
	methods:{
		mychange(e){
			console.log(e);
			this.flag=e;
			console.log(this.flag)
		}
	}
}
</script>

<style>
.center{
	margin:auto;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
}

.flower{
	width: 100%;
	
}
.shuffling{
	width: 100%;
}
	.el-carousel{
		width: 100%;
	}
	.el-carousel__item h3 {
	    color: #475669;
	    font-size: 18px;
	    opacity: 0.75;
	    line-height: 450px;
	    margin: 0;
    }
    .el-carousel__item{
    	background-size:cover;
    	background-repeat:no-repeat;
    }
	  .el-carousel__item:nth-child(1) {
	    background-image: url(../assets/img/l-lunbo02.jpg);
	  }
  
	  .el-carousel__item:nth-child(2) {
	    background-image: url(../assets/img/l-lunbo03.jpg);
	  }
	  .el-carousel__item:nth-child(3) {
	    background-image: url(../assets/img/l-lunbo04.jpg);
	  }
	  .el-carousel__item:nth-child(4) {
	    background-image: url(../assets/img/l-lunbo01.jpg);
	   
	  }
	  
	
	.load_more{
		display:flex;
		align-items: center;
		justify-content: center; 
	}
	.load_more div{
	    margin: 20px;
	    text-align: center;
	    color: green;
	    font-size: 40px;
	    width: ;
	    transform: rotate(-90deg);
	}
</style>
