<template>
    <div class="app-goodDetail">
       <header class="mui-bar mui-bar-nav hide">
        <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
            <p>宝贝</p>
            <p>评价</p>
            <p>详情</p>
            <p>推荐</p>
        <a class="mui-icon-extra mui-icon-extra-cart mui-icon mui-action-back" @click="go"></a>
        </header>
        <header class="hiden">
            <a  class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"  @click="go"></a>
            <router-link  to="/goodCart" class="mui-icon-extra mui-icon-extra-cart mui-icon mui-action-back"></router-link>
        </header>
        <div class="content">
            <div class="mui-card">
				<div class="mui-card-header mui-card-media" :style="{backgroundImage:'url('+info.img_url+')'}" ></div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						￥<span class="price">{{info.price}}</span>
						<p style="color: #333">{{info.title}}</p>
					</div>
				</div>
			</div>
             <div class="mui-content">
                <ul class="mui-table-view mui-table-view-chevron">
					<li class="mui-table-view-cell">
						<p class="mui-navigate-right">颜色分类:&nbsp;</p>
                        <div class="color">
                            <a role="radio" @click='color'>图片色</a>
                            <a role="radio">深棕色</a>
                            <a role="radio">x</a>
                        </div>
					</li>
                    <li class="mui-table-view-cell">
						<p class="mui-navigate-right">尺码:&nbsp;</p>
                        <div class="size">
                            <a>s</a><a>x</a><a>x</a>
                        </div>
					</li>
                     <li class="mui-table-view-cell">
						<label>购买数量</label>
                        <div class="mui-numbox">
                            <button class="mui-btn mui-btn-numbox-minus" type="button" @click="goodSub">-</button>
                            <input class="mui-input-numbox" type="number" value="1" v-model="count"/>
                            <button class="mui-btn mui-btn-numbox-plus" type="button" @click="goodAdd">+</button>
			            </div>
					</li>
		        </ul>
		</div>
       <div class="mui-content">
                <ul class="mui-table-view mui-table-view-chevron">
					<li class="mui-table-view-cell">
						<p class="mui-navigate-right">颜色分类:&nbsp;</p>
                    </li>
                </ul>
        </div>
        </div>
        <nav class="mui-bar mui-bar-tab mui-bottom">
           
           <div class="buy">
               <a class="cart" @click="addCart"> 加入购物车</a>
               <a> 立即购买</a>  
           </div>
           
		</nav>
    </div>
</template>
<script>
import  {Toast} from 'mint-ui'
export default {
    data(){
        return{
            list:[],
            info:{},
            pid:this.$route.query.pid,
            count:1,
        }
    },
    created(){
        this.get();
    
    },
    methods:{
        color(){
            this.style.background="yellow"
        },
         go(){
            this.$router.go(-1);
            },
          get(){
          this.axios.get("http://gufeng.applinzi.com/findProduct?pid="+this.pid).then(result=>{
            this.info=result.data.data[0];
          });
        },
         goodAdd(){
        this.count++;
      },
        goodSub(){
        if(this.count > 1){
          this.count--;
        }
      },
       addCart(){
           var pid=this.pid;
           var price=this.info.price;
           var uid=1;
           var url="http://gufeng.applinzi.com/addcart?pid="+pid+"&price="+price+"&uid="+uid;
           this.axios.get(url).then(result=>{
          if(result.data.code==1) Toast("添加成功")
          else {
              Toast("请登录");
              this.$router.push("./login")
          }
         
        })
      },
    }
 
}
</script>   
<style>
.hide{display: none} 
.mui-bar p{
    color:#fff;
    margin-top:13px;
    font-size:12px
}
.mui-bar.mui-bar-nav .mui-icon{font-size:21px}
.hiden a{
    background:rgba(0,0,0,.3);
    border-radius:50%;
    font-size:1.5rem;
    color:#fff;
    margin:12px 
}
/* 隐藏头 */
.hiden{
    display: flex;
    justify-content: space-between;
    position:relative;
    top:0;
    z-index: 10
}
.content{
    position: absolute;
    top:0;
    width:100%
}
.content .mui-card{margin:0}
/* 内容部分 */
.mui-card-content-inner .price{
    color:red;
    font-size:24px
}
.mui-card-header.mui-card-media{
    height:90vw;
}
/* 底部导航 */
.mui-bar.mui-bottom {
    display: flex;
    justify-content: space-around;
    align-items:flex-start
    }
.mui-bar-tab a{
    display: inline-block;
    font-size:10px
}
.mui-bar.mui-bar-tab img{
    margin-top:10px
}
.mui-bar.mui-bar-tab .buy{
    margin-top:5px;
}
.mui-bar.mui-bar-tab .buy a{
    font-size:15px
}
.mui-bar.mui-bar-tab .buy .cart{
    box-sizing:content-box; 
    background:rgba(255, 131, 0, 0.8);
    padding:10px 51px;
    border-bottom-left-radius: 30px;
    border-top-left-radius: 30px
}
.mui-bar.mui-bar-tab .buy a:last-child{
    background:red;
    padding:10px 51px;
    border-bottom-right-radius: 30px;
    border-top-right-radius: 30px
}
.mui-bar p{font-size: 7px}
/* 购物车部分 */
.mui-numbox{float:right}
/*   .content .mui-content > .mui-table-view:first-child{margin-top:5px}*/
.content .mui-table-view-cell p:first-child{
    // float:left;
    font-size:15px
}
.size a,.color a{
    float:left;
    padding-left:10px;
    border: 1px solid #f5f5f5;
    background-color: #f5f5f5;
    padding: 6px 12px;
    border-radius: 8px;
    font-size: 13px;
    margin: 0 8px 8px 0;
    color: #555;
    }
.mui-table-view-cell label{
    font-size:15px;
    color:#8f8f94
}
</style>
