const express = require("express");
const pool = require("./pool");
const cors=require("cors");
const bodyParser = require("body-parser");
const session=require("express-session");
const fs =require("fs") //文件模块
const multer=require("multer") //上传文件第三方模块
var app = express();
var upload=multer({dest:"upload/"}) //创建upload 对象
app.listen(5050);
app.use(express.static(__dirname+"/public"));
app.use(cors({
  origin:["http://127.0.0.1:8080","*"],   //允许访问的域名列表
  credentials:true                                           //跨域访问，保存session id
}))
app.use(bodyParser.urlencoded({extended:false}))
app.use(session({
  secret:"128位随机字符",
  resave:false,
  saveUninitialized:true,
  cookie:{
    maxAge:1000*60*60*8
  }
}))
//功能一:home 组件轮播图片,内容推荐图片
app.get("/imageList",(req,res)=>{
  var img=req.query.img;
  var img_content=req.query.img_content;
  var title=req.query.title;
  var family_id=req.query,family_id;
  var sql="SELECT img,img_content,title,family_id FROM gf_index_carousel"; 
  pool.query(sql,[img,img_content,title,family_id],(err,result)=>{
    if(err)throw err;
    if(result.length==0){res.send({code:-1,msg:"查询失败"})}
    else res.send(result)
  })
  
});
//九宫格图片
app.get("/imageNav",(req,res)=>{
  var img_nav=req.query.img_nav;
  var title_nav=req.query.title_nav;
  var sql="SELECT img_nav,title_nav FROM gf_index_nav"; 
  pool.query(sql,[img_nav,title_nav],(err,result)=>{
    if(err)throw err;
    if(result.length==0){res.send({code:-1,msg:"查询失败"})}
    else res.send(result)
  })
  
});
//功能二：login 用户登录
app.get("/login",(req,res)=>{
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    var sql="SELECT uid FROM gf_user WHERE uname = ? and upwd = ?";
    pool.query(sql,[uname,upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){res.send({code:-1,msg:"登录失败"})}
      else{ 
        var id=result[0].uid;
        req.session.uid=id;
        res.send({code:1,msg:"登录成功"})
      }
    })
})
//功能三 用户退出
app.get("/logout",(req,res)=>{
  req.session.uid=null;
  res.send({code:1,msg:"已退出"})
})
//功能四 用户上传更改头像
/*app.post("/upload",upload.single("mypic",(req,res)=>{
  var src=req.file.originalname; //来源文件后缀名
  var i=src.lastIndexOf(".");
  var suff=src.substring(i);  //取点后面的后缀名
  var ftime=new Date().getTime();  //时间毫秒数
  var fran=Math.floor(Math.floor(Math.random()*9999)) //随机数
  var des='./upload/'+ftime+fran+suff; //创建新的文件名
  fs.renameSync(req.file.path,des) //修改名称，移动文件  （源文件路径，目标新文件名）
  res.send({code:1,msg:"上传文件成功"})
  console.log()
})
)*/
//功能五 产品列表页
app.get("/goodItem",(req,res)=>{
    var sql="SELECT * FROM qiyue_gooditem WHERE isVisible!=0";
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      if(result.length==0)res.send({code:404,msg:"数据查询失败"})
      else res.send(result)
    })

})
//功能六：用户搜素产品
app.get("/search",(req,res)=>{
  var key = req.query.key;
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 7;
  }
  var sql =" SELECT lid,title,lname,price,img_url from gf_goods where lname like ? limit ? ,?";
  //4:offset pageSize
  var offset  = (pno-1)*pageSize;
  pageSize = parseInt(pageSize);
  pool.query(sql,["%"+key+"%",offset,pageSize],(err,result)=>{
    if(err)throw err;
    res.send({code:1,data:result,key});
  });
});
//功能七：产品列表
app.get("/products",(req,res)=>{
  //1:参数 pno pageSize
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  var family_id=req.query.family_id;
  //2:允许使用默认值  1 7  15:15
  if(!pno){pno=1}
  if(!pageSize){pageSize=7}
  //3:sql
 var sql = " SELECT lid,title,price,img_url from gf_goods WHERE family_id = ? group by lid limit ?,?";
 var offset = (pno-1)*pageSize;
 pageSize = parseInt(pageSize);
 pool.query(sql,[family_id,offset,pageSize],(err,result)=>{
   if(err)throw err;
   res.send({code:1,data:result});
 }) 
});
//功能八；获取商品详情
app.get("/findProduct",(req,res)=>{
  var pid=req.query.pid;
  var sql="select title,price,img_url from gf_goods where lid = ? "
  pool.query(sql,[pid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,data:result});
 })
})
//功能9：将商品添加到购物车
app.get("/addcart",(req,res)=>{
  if(!req.session.uid) {
    res.send({code:-1,msg:"请登录"})
    return;
   }
  var pid=parseInt(req.query.pid);
  var count=1;
  var uid=parseInt(req.session.uid);
  var price=parseInt(req.query.price);
  var sql="select id from gf_cart  where uid= ? and pid=?";
  pool.query(sql,[uid,pid],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      var sql="insert into gf_cart values('',1,"+price+","+pid+","+uid+")";
    }else{
      var sql=`update gf_cart set count=count+1 where pid=${pid} and uid=${uid}`
    }
    pool.query(sql,(err,result)=>{
      if(err)throw err;
     if(result.affectedRows>0) res.send({code:1, msg:"添加成功"})
     else res.send({code:-1,msg:"添加失败"})
    })
  })

})
//功能10：购物车列表
app.get("/cartlist",(req,res)=>{
  // console.log(req.session.uid)  //undefined
 if(!req.session.uid) {
    res.send({code:-1,msg:"请先登录"})
    return;
  }
  var uid=req.session.uid;
  var sql="select c.id,c.count,c.price,c.uid,c.pid ,l.img_url ,l.title from gf_cart c,gf_goods l where l.lid=c.pid and c.uid=?" 
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result})
  })
})
//功能10：删除购物车列表信息
app.get("/delcartitem",(req,res)=>{
  var id=req.query.id;
  var sql="delete from gf_cart where id=?"
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0) res.send({code:1,msg:"删除成功"})
    else res.send({code:-1,msg:"删除失败"})
  })
})
//图片获取
app.get("/myhome",(req,res)=>{
  var img=req.query.img;
  var detail=req.query.detail;
  var sql="SELECT img,detail FROM gf_myhome where title='pay'"; 
  pool.query(sql,[img,detail],(err,result)=>{
    if(err)throw err;
    if(result.length==0){res.send({code:-1,msg:"查询失败"})}
    else res.send(result)
  })
  
});
app.get("/mypay",(req,res)=>{
  var img=req.query.img;
  var detail=req.query.detail;
  var sql="SELECT img,detail FROM gf_myhome where title='life'"; 
  pool.query(sql,[img,detail],(err,result)=>{
    if(err)throw err;
    if(result.length==0){res.send({code:-1,msg:"查询失败"})}
    else res.send(result)
  })
  
});