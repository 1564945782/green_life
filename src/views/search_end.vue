<template>
  <div class="search_end_out">
		<secondary-nav></secondary-nav>
		<div class="search_end">
			<input type="search" placeholder="你可以在这里搜索本店的全部商品" v-model="search_words"/>
			<input type="button" value="搜索" @click="searchending"/>
		</div>
		<section class="recommend-est">
			<div class="search_nums">搜索结果总数：{{searchnums}}</div>
			<home-display v-for="(item,index) in goodsData" :singleData="item" :key="index"></home-display>
		</section>
		<div class="no_more">没有更多商品</div>
  </div>
</template>

<script>
	import $ from 'jquery'
	import secondaryNav from '../components/secondary_nav'
	import homeDisplay from '../components/home_display.vue'

	export default {
		name: 'searchend',
		components:{
			secondaryNav,homeDisplay
		},
		mounted() {
			console.log(this.$route.query.key_words);
			this.search_words=this.$route.query.key_words;
			let _this=this
			console.log('submit!');
			let url="http://localhost:81/searchdata?cb=?&keywords="+_this.search_words;
			$.getJSON(url,function(result){
				console.log("数据返回成功-------------")
				console.log(result);
				_this.goodsData=result;
				_this.searchnums=_this.goodsData.length;
				console.log("--------------",_this.goodsData);
			})
		},
		data(){
			return {
				search_words:'',
				goodsData:"",
				singleData:"",
				searchnums:""
			}
		},
		methods:{
			searchending(){
				console.log("searchending");
				console.log(this.search_words);
				let _this=this
				let url="http://localhost:81/searchdata?cb=?&keywords="+_this.search_words;
				$.getJSON(url,function(result){
					console.log("数据返回成功-------------")
					console.log(result);
					_this.goodsData=result;
					_this.searchnums=_this.goodsData.length;
					console.log("--------------",_this.goodsData);
				})
			}
		}
	}
</script>

<style>
	.search_end_out .search_end,.recommend-est,.no_more{
		background-color:#6d6b6b;
	}
.search_end {
		font-size: 0;
		height: 40px;
		width: 100%;
		float: left;
		text-align: center;
		margin-top: 4px;
		    margin-bottom: 50px;
	}

	.search_end input {
		font-size: 16px;
		vertical-align: top;
		height: 40px;
		    margin-top: 20px;
	}
.search_end input:nth-child(1){
	    width: 50%;
    border-radius: 10px 0 0 10px;
    /* padding-left: 20px; */
    text-align: center;
}
	.search [type="search"] {
		width: 450px;
		border: 1px solid #b2d430;
		border-radius: 6px 0 0 6px;
		padding: 0 5px;
		outline: none;
	}

	.search_end [type="button"] {
		color: #fff;
		padding: 0 10px;
		border: 0;
		border-radius: 0 6px 6px 0;
		background: #b2d430;
	}

	.search_end [type="button"]:hover {
		background: #82d430;
	}
	.search_nums{
		    color: red;
    padding: 20px;
	}
	.no_more{
		text-align: center;
    padding: 20px;
    color: #c1b9b9;
	}
</style>
