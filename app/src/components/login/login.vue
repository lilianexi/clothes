<template>
    <div class="app-login">
        <div class="title"></div>
         <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner  mui-password ">
                   <input type="text" name="uname" placeholder="请输入用户名" class="mui-input-password" v-model="uname" >
                   <input type="text" name="upwd" placeholder="请输入密码" v-model="upwd" v-if="pwdType">
                    <input type="password" name="upwd" placeholder="请输入密码" v-model="upwd" v-else>
                    <img :src="seen ? seenImg : unseenImg"  class="eye_img" @click="changeType">
                    <mt-button type="primary"  size="large" @click="login">登录</mt-button>
                </div>
               
            </div>
         </div>	
         <div class="register">
            <a>手机快捷登录</a>
            <a>新用户注册</a>
         </div>
         <div class="foot"></div>
    </div>
</template>
<script>
import  {Toast} from 'mint-ui'
export default {
    data(){
        return {
            list:[],
            uname:"",
            upwd:"",
            seen:"",
            seenImg:require("../../img/密码眼睛.png"),
            unseenImg:require("../../img/密码眼睛关闭.png"),
            eyetxt:"",
  			pwdType:false
        }
    },
    methods:{
        changeType(){
            this.seen = !this.seen;
  			this.pwdType=!this.pwdType;
        },
        login(){
            var uname=this.uname;
            var upwd=this.upwd;
            var regu=/^[a-z]{4,18}$/i;
            var regp=/^[0-9]{3,18}$/i;
            if(uname==""){
                 Toast("用户名不能为空")
                 return;
            }
            if(upwd==""){
                 Toast("密码不能为空")
                 return;
            }
            if(!regu.test(uname)){
               Toast("用户名格式不正确")
               return;
            }
            if(!regp.test(upwd)){
                Toast("密码格式不正确")
                return;
            }
            var url="http://gufeng.applinzi.com/login?uname="+uname+"&upwd="+upwd;
            this.axios.get(url).then(result=>{
                // console.log(result)
                if(result.data.code==-1){
                    Toast("用户名或密码有误")
                }else{
                     Toast("登录成功")
                    this.$router.push("./home")
                }
            })
        }
    }
}
</script>
<style>
    .app-login{
        text-align: center
    }
    .app-login .title{
        background-image:url("../../img/sprites-hash-eee66b89.png");
        background-position: -308px -57px;
        width: 125px;
        height: 100px;
        display: inline-block;
        vertical-align: top;
        line-height: 500px;
        overflow: hidden;
    }
    .app-login .foot{
        background-image: url("../../img/sprites-hash-eee66b89.png");
        background-position: -308px -161px;
        width: 40px;
        height: 40px;
        display: inline-block;
        position: relative;
        z-index: 3;
        margin-top:210px
    }
    .app-login .mui-card{background:rgba(255, 255, 255, .4)}
    .app-login .mui-card input{
        font-size:15px;
     }
    .app-login .mui-card-content-inner{padding:29px}
    .app-login .register{
        display: flex;
        justify-content: space-between;
        font-size: 15px
    }
    .app-login .register a{
        margin: 2px 13px
    }
    .mui-password .eye_img{
        margin:0px 19px 0 -35px
    }
</style>

