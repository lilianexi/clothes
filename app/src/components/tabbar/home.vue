<template>
    <div class="app-home">
    <!--顶部导航条--> 
       <Header></Header>
    <!--轮播图-->
        <mt-swipe :auto="10000" :show-indicators="true">
            <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img">
            </mt-swipe-item>
        </mt-swipe>
    <!-- 九宫格 -->
        <div class="mui-content">
                    <ul class="mui-table-view mui-grid-view mui-grid-9"  >
                        <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3" v-for="item in pic" :key="item.id">
                            <a href="#">
                                <span class="mui-icon">
                                    <img :src="item.img_nav">
                                </span>
                            <div class="mui-media-body">{{item.title_nav}}</div>  
                            </a>
                        </li>
                    </ul> 
        </div>
    <!-- 品牌推荐 -->
        <div class="center">
            <div class="contents">
                <div class="content-item" v-for="item in list" :key="item.id" >
                    <img :src="item.img_content" @click="jumpTo" :data-family_id="item.family_id">
                    <p>{{item.title}}</p>
                </div>
            </div>
        </div>
        <Nav></Nav>
    </div> 
    
</template>
<script>
  import Nav from '@/components/nav.vue'
  import Header from '@/components/header.vue'
    export default{
      
        data(){
            var m=this;
            return{
                list:[],
                pic:[],
                family_id:''
                
            }
        },
       created(){
            this.getNav()
            this.handeImage();
        },
        methods:{
            getNav(){
               this.axios.get("http://gufeng.applinzi.com/imageNav").then(result=>{
               this.pic=result.data;
                });
               
            },
           handeImage(){
                this.axios.get("http://gufeng.applinzi.com/imageList").then(result=>{
                this.list=result.data;
                })
            },
            jumpTo(e){
                var family_id= e.target.dataset.family_id;
                console.log(family_id)
                this.$router.push("/list?family_id="+family_id)
            }
        },
       components:{
           Nav,
           Header
       }
       
       
    }
</script>
	<style>
    
    /* 轮播图 */
     .mui-table-view-chevron.mui-table-view-inverted{
        margin-top:44px
    }
    .app-home .mint-swipe{
        height:200px;
    }
    .app-home .mint-swipe-items-wrap{top:22%}
    .app-home .mint-swipe-item img{
        width:100%;
    }
    .app-home .mint-swipe-indicators {
        bottom:16px;
    }
    .app-home .mui-content > .mui-table-view:first-child{
        margin-top:0;
    }
    /* 九宫格 */
    .app-home .mui-content .mui-col-xs-4 {
        width: 19.3%
    }
    .app-home .mui-content .mui-grid-view.mui-grid-9 .mui-table-view-cell{
        padding:0
    }
    /* 内容推荐 */
    .app-home .center{
        padding-bottom:50px
    }
    .app-home .center .contents{
        list-style: none;
        display: flex;
        flex-wrap:wrap;
        justify-content: space-between;
        padding-left:0;
        text-align:center;
        font-size:24px
    }
     .app-home .center .contents p{
        margin-bottom:-9px;
            color:#c2beb2
    }   
    .app-home .center .contents .content-item{
        width:50%;
        background:#fff;
        padding:10px ;
        border:1px solid #ccc   
    }
    .app-home .center .contents .content-item img{
        width:100%;
        border-radius: 10px
    }
    .app-home .center .wz{
        text-align: center;
        font-size: 24px;
        color:#c2beb2;
        font-weight: bold
     
    }
    /* 底部导航栏 */
    .mui-bar.mui-bar-tab{
        background:#19181582;
    }
    .mui-bar.mui-bar-tab a{
        color:#fff
    }
	</style>