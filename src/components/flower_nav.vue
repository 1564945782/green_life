<!-- 描述：这是vue脚手架提供的模板 -->
<template>
  <section class="classification center">
    <ul>
      <li class="nav01"><div></div></li>
      <li class="nav02 center" style="list-style-type: square;"></li>
      <li class="nav03" @click="sonchange(1)">水培</li>
      <li class="nav04 center" style="list-style-type: square;"></li>
      <li class="nav05" @click="sonchange(0)">陆培</li>
      <li class="nav06 center" style="list-style-type: square;"></li>
      <li class="nav07"><div></div></li>
    </ul>
  </section>
</template>

<script>
export default {
  name: 'flowerNav',
  data () {
    return {
      flag: 1
    }
  },
  methods:{
    sonchange(e){
      this.$emit('change',e);
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
.classification{
      width:1200px;
    }
  .classification ul{
    width: 100%;
    height: 80px;
    display:flex;
    align-items: center;
    justify-content: center;
    color: #347b2c;
  }
  ul li:hover{
    color: #50ce66;
  }
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
