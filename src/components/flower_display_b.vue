<!-- 描述：这是vue脚手架提供的模板 -->
<template>
	<div>
  <div class="content02">
		
		
		
    <div class="c_wrap center" v-for="item in flower1">
			<div class="f_item_box">
				<div class="c_child02" :data-id="item.id" @click="todetails(item.id)">
					<div>
						<img :src="item.big_imgs">
					</div>
					<p>{{item.name}}</p>
				</div>
			</div>
    </div>
		
		
		
		<div class="c_child03">
			<img src="https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuicFAqe47L1y_!!4137666646.jpg_400x400.jpg_.webp" alt="">
		</div>
  </div>
	</div>
</template>

<script>


export default {
  name: 'flowerDisplayb',
	props:["flower1","flower2"],
  // props:["c_img"],
  methods:{

			fn(){
				console.log(this.c_img)
			},
			todetails(num){
				console.log(num)
				this.$router.push({path: '/details?id='+num})
			}
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
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
.content02{
    width:100%; 
    background-color: #eeeeee;
    margin: 0px 0px 50px 0px;
		display: flex;
		justify-content: space-around;
  }
	.c_child03{
		
	}
  .c_wrap{
    width:1200px;
    height: 280px;
    display:flex;
    align-items: center;
    justify-content: center;  
      
  }
  
  .c_child01{
    width: 35%;
    height: 280px;
    z-index: 2;

     position: relative;
  }
  .c_child01 div{
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
  .c_child01 div:hover{
    background: radial-gradient(rgba(0,0,0,0),rgba(125, 119, 125, 0.97));
    transition: all .8s ease-in;
  }
  .c_child01 img{
    width:100%;
    height:100%;
  }
  .c_child02{
    width: 25%;
        height: 280px;
        display:flex;
    align-items: center;
      justify-content: center; 
      flex-wrap: wrap;
  }
  .c_child02 div{
    width:100%;
    display:flex;
    align-items: center;
    justify-content: center; 
  }
  .c_child02 img{
    width:170px;
    height:170px;
      border-radius: 50%;
  }
	
</style>
