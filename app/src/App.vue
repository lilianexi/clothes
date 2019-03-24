<template>
 <div class="app-container">
    <!--添加公共组件 header-->
    <router-view></router-view>  <!--站位-->
     <!--添加公共组件 tabbar-->
     <!--底部导航-->
     <!--   <nav class="mui-bar mui-bar-tab">
			<a class="mui-tab-item mui-active" href="#tabbar">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</a>
			<router-link class="mui-tab-item" to="/myhome">
				<span class="mui-icon mui-icon-contact"></span>
				<span class="mui-tab-label">我的</span>
			</router-link>
			<a class="mui-tab-item" href="#tabbar-with-contact">
				<span class="mui-icon mui-icon-extra mui-icon-extra-cart">
                    <span class="mui-badge">0</span>
                </span>
				<span class="mui-tab-label">购物车</span>
			</a>
			<a class="mui-tab-item" href="#tabbar-with-map">
				<span class="mui-icon mui-icon-extra mui-icon-extra-heart"></span>
				<span class="mui-tab-label">收藏</span>
			</a>
      </nav>-->
      <!-- <cropper :headerImage="headerImage"  @getHeaderImage="newHeaderImage"></cropper>　 -->
 </div>
</template>
<script>
// import cropper from "@/components/cropper"
export default {
	 
   data(){
      return{

      }
   },
  
}
</script>

<style>
 
</style>
