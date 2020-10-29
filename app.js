//引入Express模块
const express = require('express');
//引入cors模块
const cors = require('cors');
const http = require('http')

const mysql = require('mysql')
const bodyparser = require('body-parser');
const e = require('express');
const { send } = require('process');
//创建一个实例
const serve = express()


//指定服务器的监听端口号
serve.listen(3000)


//将cors作为serve的一个中间件使用
serve.use(cors())
// {
//   origin:['http//127.0.0.0:5500','http://localhost:5500']
// }
//创建连接池
const pool = mysql.createPool({
  host:'127.0.0.1',
  user:'root',
  password:'',
  port:3306,
  database:'floor',
  charset:'utf8',
  connectionLimit:15
})
serve.use(bodyparser.urlencoded({
  extended:false
}))




serve.get('/login',(req,res)=>{
  let username = req.query.uname;
  let password = req.query.upwd;
  let sql = 'select fid,fname,fupwd from floor_user where fname=? and fupwd=?'
  pool.query(sql,[username,password],(err,result)=>{
    if(err) throw err;
    if(result.length == 1){
      res.send({massage:'登录成功',code:1})
    }else{
      res.send({massage:'登录失败',code:0})
    }
  })
})

serve.get('/reginster',(req,res)=>{
  let username = req.query.uname;
  let password = req.query.upwd;
  // console.log(username,password)

  let sql = 'select count(fid) as count from floor_user'
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    let count = result[0].count;
    let sql = 'select fname from floor_user where fname=?'
    pool.query(sql,[username],(err,result)=>{
      if(err) throw err;
      // console.log(result[0])
      if(result[0] != undefined){
        res.send({massage:'注册失败',code:0})
      }else{
        // console.log('1111')
        let sql = `INSERT INTO floor_user VALUES(${count},?,?)`;
        pool.query(sql,[username,password],(err,result)=>{
          if(err) throw err;
          console.log(result);
          res.send({massage:'注册成功',code:1})  
        })
      }
    })
    // 
  })
})


// category
serve.get('/category',(req,res)=>{
  let ctypeId = req.query.ctypeId;
  // console.log(ctypeId)
  let sql = 'select ctype,ctype_id from floor_category where ctype_id=?'
  pool.query(sql,[ctypeId],(err,results)=>{
    if(err) throw err;
    res.send({massage:'查询成功',code:1,results:results})
  })
})


serve.get('/lists',(req,res)=>{
  let ltypeId = req.query.ltypeId;
  // console.log(ctypeId)
  let sql = 'select lname,lprice,lsold,limg from floor_lists where ltype_id=?'
  pool.query(sql,[ltypeId],(err,results)=>{
    if(err) throw err;
    res.send({massage:'查询成功',code:1,results:results})
  })
})
