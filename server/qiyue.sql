SET NAMES UTF8;
DROP DATABASE IF EXISTS gf;
CREATE DATABASE gf CHARSET=UTF8;
USE gf;
#创建图片表
CREATE TABLE gf_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  clothes_id INT,              
  sm VARCHAR(128),            
  md VARCHAR(128),           
  lg VARCHAR(128),            
  iscarousel BOOLEAN       
);
CREATE TABLE gf_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
INSERT INTO gf_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

INSERT INTO gf_index VALUES
(NULL,'http://127.0.0.1:3000/img/index/carousel1.jpg','汉唐精选','http://127.0.0.1:3000/img/home/女装.png','女装'),
(NULL,'http://127.0.0.1:3000/img/index/carousel2.jpg','清风徐徐','http://127.0.0.1:3000/img/home/鞋靴.png','鞋靴'),
(NULL,'http://127.0.0.1:3000/img/index/carousel3.jpg','汉唐精选','http://127.0.0.1:3000/img/home/包包.png','包包'),
(NULL,'http://127.0.0.1:3000/img/index/carousel4.jpeg','汉唐精选','http://127.0.0.1:3000/img/home/饰品.png','饰品'),
(NULL,'','汉唐精选','http://127.0.0.1:3000/img/home/周边.png','周边'),
(NULL,'','汉唐精选','http://127.0.0.1:3000/img/home/运动.png','运动'),
(NULL,'','汉唐精选','http://127.0.0.1:3000/img/home/轻奢.png','轻奢'),
(NULL,'','汉唐精选','http://127.0.0.1:3000/img/home/面部轮廓.png','面部'),
(NULL,'','汉唐精选','http://127.0.0.1:3000/img/home/旗舰.png','旗舰');


CREATE TABLE gf_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  details VARCHAR(128),
  price INT
);
CREATE TABLE gf_index_nav(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64)
);
INSERT INTO gf_index_product VALUES
(NULL,'http://127.0.0.1:3000/img/index/汉.jpg','汉唐精选',"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装",128),
(NULL,'http://127.0.0.1:3000/img/index/唐.jpg','清风徐徐',"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装",321),
(NULL,'http://127.0.0.1:3000/img/index/明.jpg','仙气飘逸',"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装",486),
(NULL,'http://127.0.0.1:3000/img/index/清.jpeg','民国女神',"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装",1800);

CREATE TABLE gf_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
CREATE TABLE gf_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  count INT,
  price INT,
  pid INT,
  uid INT
);
CREATE TABLE gf_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd  VARCHAR(32)
);
INSERT INTO gf_family VALUES
(NULL,"清朝系列"),
(NULL,"汉服系列"),
(NULL,"古装系列"),
(NULL,"仙女系列");
/**笔记本电脑**/
CREATE TABLE gf_goods(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  color VARCHAR(64),           #规格/颜色
  
  lname VARCHAR(32),          #商品名称
  size_x VARCHAR(32),             #尺码
  size_s VARCHAR(32),
  size_l VARCHAR(32),
  size_xl VARCHAR(32),
  size_xxl VARCHAR(32),
  img_url  VARCHAR(128)
);
INSERT INTO gf_goods VALUES
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg"),
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg"),
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg"),
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg"),
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg"),
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg"),
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg"),
(null,1,"女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝","大气之韵，品牌之选",128,"7天无理由","图片色"," 玉叶金枝","x","s","l","xl","xxl","http://127.0.0.1:3000/img/list/tang1.jpg");

 <aside id="offCanvasSide" class="mui-on-canvas-right" v-show="isVisible==true">
            <div id="offCanvasSideScroll" class="mui-scroll-wrapper">
                <div class="mui-scroll">
                    <ul class="mui-table-view mui-table-view-chevron mui-table-view-inverted">
                        <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                               <img src="../../img/home/pic01.png">
                               春装
                            </a>
                        </li>
                        <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic02.png">
                               夏装
                            </a>
                        </li>
                        <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic03.png">
                               秋装
                            </a>
                        </li>
                        <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic04.png">
                               冬装
                            </a>
                        </li>
                         <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic05.png">
                               美妆
                            </a>
                        </li>
                         <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic06.png">
                               鞋靴
                            </a>
                        </li>
                         <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic06.png">
                               冬装
                            </a>
                        </li>

                         <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic04.png">
                               冬装
                            </a>
                        </li>
                         <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic05.png">
                               冬装
                            </a>
                        </li>
                         <li class="mui-table-view-cell">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic06.png">
                               冬装
                            </a>
                        </li>
                         <li class="bottom">
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic07.png">
                                个人中心
                                </a>
                            <a class="mui-navigate-right">
                                <img src="../../img/home/pic08.png">
                                品牌收藏
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </aside>-->
         <header class="mui-bar mui-bar-nav">
            <a class="mui-action-back mui-icon mui-icon-back mui-pull-left"></a>
            <h1 class="mui-title">女装</h1>
             <a class="mui-action-back mui-icon mui-icon-search mui-pull-right"></a>
        </header>
        <div class="content">
            <div class="card1">
                <p>春季衣橱♥潮流趋势</p>
                <div>
		  <!--         <div class="ui-slider-item mui-slider-item-duplicate" v-touch v-on:swipeleft="onSwipeLeft" v-on:swiperight="onSwipeRight"  tag="div">-->
          <v-touch v-on:swipeleft="onSwipeLeft" v-on:swiperight="onSwipeRight"  tag="div">
		                <ul class="mui-table-view mui-grid-view" :transform="translate()">
		                    <li class="mui-table-view-cell mui-media mui-col-xs-6" >
								<a href="#">
									<img class="mui-media-object" src="../../img/list/ps1.jpg">
									<div class="mui-media-body">凸显曼妙身姿</div>
								</a>
							</li>
							<li class="mui-table-view-cell mui-media mui-col-xs-6">
								<a href="#">
									<img class="mui-media-object" src="../../img/list/ps2.jpg">
									<div class="mui-media-body">颜值穿搭</div>
								</a>
							</li>
							<li class="mui-table-view-cell mui-media mui-col-xs-6">
								<a href="#">
									<img class="mui-media-object" src="../../img/list/ps3.jpg">
									<div class="mui-media-body">潮翻街头</div>
								</a>
							</li>
		                    <li class="mui-table-view-cell mui-media mui-col-xs-6">
								<a href="#">
									<img class="mui-media-object" src="../../img/list/ps3.jpg">
									<div class="mui-media-body">万能搭配</div>
								</a>
							</li>
		                </ul>
                        </v-touch>
					</div>
			</div>     
            <div class="card2">
                <p>唯品快抢♥精品女装</p>
                <div class="mui-card">
                    <div class="mui-card-content">
                        <div class="mui-card-content-inner">
                         <!--<img src="../../img/" alt="">-->
                        </div>
               
                    </div>
                </div>	
            </div>
            <div class="card3">
                <p>最后疯抢♥直击底价</p>
            </div>
            <div class="card4">
                <p>今日特卖♥10点上新</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
          
        }
    },
    methods:{
        onSwipeLeft(){
            console.log("hua")
            //  this.move="all 0.2 linear"
        },
        onSwipeRight(){
            console.log("右")
        }
    },
    created(){
      this.onSwipeLeft();
    }
     
}
</script>
<style>
    .content{
        text-align: center;
        margin:10px;
        font-weight: normal;
        
    }
    .content p{
        font-size:20px
    }
	.content .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-object{
		width:60px;
        border:1px solid #ccc;
        border-radius:10%
	}

	 .content .mui-table-view.mui-grid-view{
		display:flex;
		justify-content:space-around;
	}
    .content .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body{
        font-size:1px;
    }
   
	
</style>
