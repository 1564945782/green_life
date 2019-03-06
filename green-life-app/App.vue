<script>
	export default {
		globalData:{
		   globalMusicList:'',
		   globalUserInfo:''
		  },
		onLaunch: function () {
			console.log('App Launch');
			uni.request({
				url: 'http://localhost:81/getgoodsdata',
				success: (res) => {
					console.log("App.nue--------------------发起qingqiu",res.data);
					this.globalMusicList=res.data;
					return res.data
				}
			});
			uni.request({
				url: 'http://localhost:81/user_info',
				success: (res) => {
					console.log(res.data)
					this.globalUserInfo=res.data;
					return res.data
				}
			});
		},
		onShow: function () {
			console.log('App Show')
		},
		onHide: function () {
			console.log('App Hide')
		}
	}
</script>

<style>
	/*每个页面公共css */
</style>
