<!-- ÃèÊö£ºÕâÊÇvue½ÅÊÖ¼ÜÌá¹©µÄÄ£°å -->
<template>
  <div>
    <div class="content01">
      <div class="c_wrap center">
        <div class="c_child01"><img :src="mydata.imgsrc[0]" alt="mydata.myalt[0]"><div>{{mydata.flowername[0]}}</div></div>
        <div class="c_child02"><div><img :src="mydata.imgsrc[1]" alt="mydata.myalt[1]">
          </div><p>{{mydata.flowername[1]}}</p></div>
          <div class="c_child03">
          <p><b>{{mydata.mytext[0]}}</b></p>
          <p> {{mydata.mytext[1]}}</p>
          <p><b>{{mydata.mytext[2]}}</b></p>
          <p>{{mydata.mytext[3]}}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'flowerDisplaya',
  data(){
    return {
        c_img:[
        'https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuicFAqe47L1y_!!4137666646.jpg_400x400.jpg_.webp',
        'https://gd3.alicdn.com/imgextra/i3/4137666646/O1CN011yxuibKUsySuyLx_!!4137666646.jpg_400x400.jpg_.webp']
      }
  },
  props:["mydata"]
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
.content01{
    width:100%; 
    background-color: #eeeeee;
    margin: 0px 0px 50px 0px;
  }
  .c_wrap{
    width:1200px;
    height: 280px;
    display:flex;
    align-items: center;
      justify-content: center;  
      
  }
  .c_child01{
    z-index: 2;
    position: relative;
    width: 35%;
    height: 280px;
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
  .c_child03{
      width: 40%;
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
    -webkit-line-clamp: 3;
  }
</style>
