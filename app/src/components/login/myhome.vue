<template>
    <div class="app-myhome">
        <div class="head">
            <div class="h-p">
                <img src="../../img/上传头像.png">
                <p @click="setName">会员</p>
                <img src="../../img/设置.png" @click="logout">
            </div>
            <ul class="nav">
                <li>收藏夹</li>
                <li>关注我们</li>
                <li>红包卡卷</li>
                <li>最近浏览</li>
            </ul>
        </div>
        <div class="mui-card card-one">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    古风中国，唯美优雅
                </div>
            </div>
        </div>
        <div class="mui-card">
            <div class="mui-card-header">
                <span>我的订单</span>
                <span>查看全部订单></span>
            </div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner" >
                    <div v-for="item in list" :key="item.id">
                         <div  :style="{backgroundImage:'url('+item.img+')',backgroundSize: 'cover', backgroundPosition: 'center center',backgroundRepeat: 'no-repeat'}" class="mypic">       
                    </div>
                    <p class="wenzione">{{item.detail}}</p>
                    </div>
                </div>
            </div>
            
        </div>
        <div class="mui-card">
            <div class="mui-card-header">
                <span>我的资产</span>
                <span>查看古风资产></span> 
            </div>
            <div class="mui-card-content">
                    <div class="mui-card-content-inner block"  >
                        <div v-for="item in pic" :key="item.id" class="part">
                            <div :style="{backgroundImage:'url('+item.img+')',backgroundSize: 'cover', backgroundPosition: 'center center',backgroundRepeat: 'no-repeat'}" class="mypic">  
                            </div>
                            <p class="wenzi">{{item.detail}}</p>
                        </div>
                    </div>
            </div>
            </div>
        <div class="mui-card-content  mui-card" >
            <div class="mui-card-content-inner block ad"  ></div>
        </div>
		</div>
</template>
<script>
import {Toast} from "mint-ui";
export default {
    data(){
        return {
            list:[],
            pic:[]

        }
    },
    methods:{
        logout(){
            var url="http://gufeng.applinzi.com/logout";
            this.axios.get(url).then(res=>{
                Toast("已退出")
                let _this=this;
                setTimeout(function(){
                    _this.$router.push("./login");
                 Toast("请重新登录")    
                },1000)
            })
        },
        setName(){
            this.$router.push("./myDetail")
        },
        myhome(){
            this.axios.get("http://gufeng.applinzi.com/myhome").then(result=>{
            this.list=result.data;
        });
        },
        mypay(){
            this.axios.get("http://gufeng.applinzi.com/mypay").then(result=>{
            this.pic=result.data;
            console.log(this.pic)
        });
        }
    },
    created(){
        this.myhome();
        this.mypay()
    }
}
</script>
<style>

    .app-container{
        padding: 0
        }
    .head{
        background:#19181582;
        width:100%;
        height:200px;
        position: relative;
    }
    .head .h-p{
        position:absolute;
        top:30px;
        left:35px
    }
   .head .h-p p{
       color:#ccc;
       font-size:15px;
       position: absolute;
       top:20px;
       left:69px;
       width:100px;
   }
   .head .h-p img:last-child{
       position: absolute;
       top:11px;
       left:284px
   }
   .head .nav{
       list-style: none;
       display: flex;
       justify-content: space-around;
       position: absolute;
       top:110px
   }
   .head .nav li{
       padding-left:10px;
       color:#ccc;
       font-size:15px
       }
       /* 中间文字 */
    .app-myhome   .mui-card.card-one{
        border-radius:50px;
        margin-top:-22px;
        text-align: center;
        
       }
     .app-myhome .mui-card  .mui-card-content-inner{
         font-size:25px;
         display: flex;
         flex-wrap: nowrap;
         justify-content: space-around;
         }
   
    .app-myhome .mui-card  .mui-card-content-inner .mypic{
       width: 21px;
    height: 21px;
    }
    .app-myhome .mui-card  .mui-card-content-inner .part{
        width:50px;
        height:50px;
        margin-left:20px
    }
    .app-myhome .mui-card  .block{
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap
    }
    .app-myhome .mui-card  .mui-card-content-inner .wenzi{
        width:68px;
        font-size: 13px;
        text-align:center

    }
     .app-myhome .mui-card  .mui-card-content-inner .wenzione{
         font-size: 13px
     }
     .ad{
         background:url("../../img/ad.png") no-repeat  center center;
         height:50px;
         background-size: cover

     }
</style>

