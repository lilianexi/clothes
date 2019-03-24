<template>
	<div id="nav">
		<nav class="mui-bar mui-bar-tab">
					<a class="mui-tab-item mui-active">
						<span class="mui-icon mui-icon-home"></span>
						<span class="mui-tab-label" @click="index">首页</span>
					</a>
					<a class="mui-tab-item"  @click="isLogin">
						<span class="mui-icon mui-icon-contact"></span>
						<span class="mui-tab-label">我的</span>
					</a>
					<a class="mui-tab-item" @click="jump">
						<span class="mui-icon mui-icon-extra mui-icon-extra-cart">
												<span class="mui-badge">0</span>
										</span>
						<span class="mui-tab-label">购物车</span>
					</a>
					<a class="mui-tab-item">
						<span class="mui-icon mui-icon-extra mui-icon-extra-heart"></span>
						<span class="mui-tab-label">收藏</span>
					</a>
		</nav>
	</div>
	
    </template>
	<script>
		import {Toast} from 'mint-ui'
		export default{
			data(){
				return{
					uname:'',
					upwd:''
				}
			},
			methods:{
				jump(){
					this.$router.push("/goodCart")
				},
				isLogin(){
					var uname=this.uname;
					var upwd=this.upwd
					var url="http://gufeng.applinzi.com/login?uname="+uname+"&upwd="+upwd;
					this.axios.get(url).then((result)=>{
						if(result.length==0) {
							Toast("请先登录")
							this.$router.push("/login")
						}
						else this.$router.push('/myhome')
					})
				},
				index(){
						this.$router.push("/home")
				}
			}
		}
	</script>
	<style>

		.mui-bar.mui-bar-tab .mui-tab-item.mui-active{
			color:#fff
	}
	  .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
	</style>
	