const mysql = require("mysql");
var pool = mysql.createPool({
  host:"w.rdc.sae.sina.com.cn",
  user:"02053kwknm",
  password:"430zm0wh0wli5iwwhhh432i50kz145jz51hixi3k",
  database:"app_gufeng",
  port:3306,
  connectionLimit:20
});
module.exports = pool;