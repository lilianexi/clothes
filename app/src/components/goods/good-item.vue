<template>
    <div class="app-goodItem">
        <header class="mui-bar mui-bar-nav">
            <a class="mui-icon">X</a>
        </header>
        <div class="top">
            <el-row :gutter="50">
                <el-col :span="6">
                    <div class="grid-content bg-purple">
                    <!--4张，2个标，2个查询，遍历取前4张-->
             <!--     <img v-lazy="item.navPic">-->
                    </div>
                </el-col>
            </el-row>
        </div>
        <ul >
            <li v-for="item in list">
                <img v-lazy="item.href"> 
                <div class="word">
                    <em>疯抢！</em> 
                    <span>￥{{item.nowprice}}</span>
                    <P>唯品价  ￥{{item.weipinPrice}} {{item.reduced}}折钜惠</P>
                    <p>{{item.title}}</p>
                </div>
            </li>
        </ul>
 
    </div>
</template>
<script>

    export default{
        data(){
            return{
                list:[]
            }
        },
        methods:{
            getGooditem(){
                this.axios.get("http://gufeng.applinzi.com/goodItem").then(result=>{
                    console.log(result.data);
                    this.list=result.data
                })
            }
        },
        created(){
            this.getGooditem()
        }
        
        }
  
</script>
<style>
    .app-goodItem ul{
        margin:0;
        padding:0;
        display:flex;
        flex-wrap:wrap;
        justify-content:space-around;
        list-style:none;
        background:#fff;
        border:1px solid #ccc
    }
    .app-goodItem ul li{
       width:50%;
       text-align:center;
      /*  border:1px solid red*/ 
    }
    .app-goodItem ul li img{
        width:96%;
        margin-top:10px
    }
    .app-goodItem ul li .word{
        text-align:left
    }
    .app-goodItem ul li .word em{
     /*     display:inline-block;*/
        background:red;
        width:25%;
        color:#fff;
        border-radius:10px
    }
    .app-goodItem ul li .word p:nth-child(2){
        font-size:10px;
    }
    /* 顶部4张小图片样式 */
    .bg-purple img{
        margin-left:15px;
    }
    .app-goodItem .mui-bar.mui-bar-nav {background:#fff}
    .app-goodItem .mui-bar.mui-bar-nav .mui-icon{
        color:#000;
        width:20px;
        height:20px
    }
</style>