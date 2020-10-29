const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
const router=express.Router();
router.get("/login",(req,res)=>{
	console.log("ajax请求接收成功");
	res.send("测试成功！");
});





module.exports=router;