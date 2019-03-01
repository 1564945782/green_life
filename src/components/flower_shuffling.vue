<!-- 描述：这是vue脚手架提供的模板 -->
<template>
  <section class="shuffling center">
    <el-carousel :interval="3000" arrow="always" height="450px" id="flower_shuffling" left="0px">
      <el-carousel-item v-for="(item,index) in 4" :key="item" :style="{backgroundImage:'url('+imgsrc[index]+')'}">
        
      </el-carousel-item>
    </el-carousel>

  </section>
</template>

<script>
import lunbo_img01 from '../assets/img/l-lunbo01.jpg'
import lunbo_img02 from '../assets/img/l-lunbo02.jpg'
import lunbo_img03 from '../assets/img/l-lunbo03.jpg'
import lunbo_img04 from '../assets/img/l-lunbo04.jpg'
export default {
  name: 'flowerShuffling',
  data(){
    return {imgsrc:[lunbo_img01,lunbo_img02,lunbo_img03,lunbo_img04]
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
#flower_shuffling{
	position: relative;
	width: 100%;
	left: 0px;
}
/* .classification{
      width:1200px;
    }
  .classification ul{
    width: 100%;
      height: 80px;
    display:flex;
    align-items: center;
      justify-content: center;
  } */
  .nav01 div{
    width: 100%;
      height: 3px;
      margin-bottom: -5px;
      background-color: rgba(236, 232, 232, 0.6);
      background: linear-gradient(to right,rgba(0,0,0,0),rgba(146, 208, 139, 0.5));
  }
  .nav07 div{
    width: 100%;
      height: 3px;
      margin-bottom: -5px;
      background-color: rgba(236, 232, 232, 0.6);
      background: linear-gradient(to right,rgba(146, 208, 139, 0.5),rgba(0,0,0,0));
  }

  .nav01,.nav07{width: 35%;}
  .nav02,.nav04,.nav06{
    width:0%;

    }
  .nav03,.nav05{
    width:5%;
    display:flex;
    align-items: center;
      justify-content: center;
    }
</style>
