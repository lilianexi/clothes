<template>
    <div class="app-myDetail">
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="#/myhome"></a>
			<h1 class="mui-title">个人资料</h1>
		</header>
		<div class="mui-content">
        <ul class="mui-table-view mui-table-view-chevron">
					<li class="mui-table-view-cell">
						<a href="" class="mui-navigate-right">头像<img src="../../img/2.png" class="headPic"></a>
					</li>
					<li class="mui-table-view-cell">
						<a href="" class="mui-navigate-right">
							昵称 
							<span>会员</span>	
						</a>
					</li>
					<li class="mui-table-view-cell">
						<a href="" class="mui-navigate-right">
							会员等级
							<span>银卡会员</span>
						</a>
					</li>
					<li class="mui-table-view-cell">
						<a href="" class="mui-navigate-right">收货地址</a>
					</li>	
					<li class="mui-table-view-cell">
						<a href="" class="mui-navigate-right">
							我的尺码
							<span>录身材，想尺码推荐</span>
						</a>
					</li>
				</ul>
		</div>
    </div>
</template>
<script>
export default {
	
}
</script>
<style>
	.mui-table-view-chevron .mui-table-view-cell > a:not(.mui-btn){padding-right:39px}
	.mui-navigate-right span,.headPic{
		font-size:13px;
		color:#ccc;
		float:right
	}
	
	
</style>
