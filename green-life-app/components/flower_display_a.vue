<template name="flowerDisplaya">
	<view>
		<view class="content01">
		  <view class="c_wrap center">
			<view class="c_child01" @click="jump" v-bind:id="mydata[0].id">
				<img :src="mydata[0].big_imgs.split(',')[0]" alt="mydata[0].name">
				<view>{{mydata[0].name}}</view>
			</view>
			<view class="c_child02" @click="jump" v-bind:id="mydata[1].id">
				<view><img :src="mydata[1].small_imgs.split(',')[1]" alt="mydata[1].name">
			  </view><p>{{mydata[1].name}}</p>
			</view>
			  <view class="c_child03" @click="jump" v-bind:id="mydata[1].id">
			  <p><b>【盆器选择】</b></p>
			  <p> {{mydata[1].description}}</p>
			  <p><b>【注意事项】</b></p>
			  <p>{{mydata[1].description}}</p>
			</view>
		  </view>
		</view>
  </view>
</template>

<script>
	export default {
		name: 'flowerDisplaya',
		  data(){
			return {
				c_img:[
				'https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuicFAqe47L1y_!!4137666646.jpg_400x400.jpg_.webp',
				'https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuibKUsySuyLx_!!4137666646.jpg_400x400.jpg_.webp']
			  };
		  },
		  props:["mydata"],
			methods:{
				jump: function(e) {
					// console.log(this.mydata)
					// console.log(e.currentTarget.id)
				uni.navigateTo({
						url: "../details/details?id="+e.currentTarget.id+"",
						// url: "../details/details"
					});
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
img:hover{
  opacity: 0.5;
  transition: all .3s ease-in;
}
.content01{
    width:100%; 
    background-color: #eeeeee;
    /* margin: 0px 0px 50px 0px; */
  }
  .c_wrap{
    width:100%;
    font-size: 12px;
    display:flex;
    align-items: center;
    justify-content: center; 
	flex-wrap: wrap; 
  }
  .c_child01{
    z-index: 2;
    position: relative;
    width: 100%;
    height: 280px;
  }
  .c_child01 view{
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
	background: radial-gradient(rgba(0,0,0,0),rgba(125, 119, 125, 0.97));
	transition: all .8s ease-in;
  }
  .c_child01 img{
    width:100%;
    height:100%;
  }
  .c_child02{
    width: 40%;
	height: 150px;
	display:flex;
    align-items: center;
    justify-content: center; 
    flex-wrap: wrap;
  }
  .c_child02 view{
    width:100%;
    display:flex;
    align-items: center;
    justify-content: center; 
  }
  .c_child02 img{
    width:80px;
    height:80px;
      border-radius: 50%;
  }
  .c_child03{
      width: 60%;
      height: 90%;
      overflow: hidden;
      line-height: 2;
      text-overflow: ellipsis;
  }
  .c_child03 p:nth-child(2n){
    width:100%;
    text-indent: 2em;
    overflow: hidden;
    line-height: 2;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
  }
</style>
