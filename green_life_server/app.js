
/********引入模块*******/
global.express = require('express');
global.ejs = require('ejs');
global.bodyParser = require('body-parser');
global.mysql = require('mysql');
const cookieParser = require('cookie-parser');
const session = require('express-session');
const svgCaptcha = require('svg-captcha');

global.app = express();

//开启cookie
let secret = 'moc.01815h.www';
app.use(cookieParser(secret));
// 开启session
app.use(session({
    secret: secret,
    name:'sessid1810',
    resave: false,
    saveUninitialized: true,
    cookie: {maxAge:24*3600000}
}))


//接受post过来的数据
app.use(bodyParser.urlencoded({ extended: true }));   //接收form-data
app.use(bodyParser.json());  //接收json格式的数据

//建立数据库连接
global.mydb = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123',
    port: 3306,
    database: 'demo1',
	multipleStatements: true
});
mydb.connect();

//自定义ejs模板
app.engine('html',ejs.renderFile);    //定义模板引擎，自定后缀是html
app.set("views",'views');        //指定模板文件所在的文件夹
app.set('view engine','html');        //注册模板引擎到express





/*******************前端请求数据的路由*************************/
//获取所有商品信息
app.get('/getgoodsdata',(req,res)=>{
	console.log("商品信息");
	let sql="select * from goods_info";
	mydb.query(sql,(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
		else if(result.length!=0){
			app.set('jsonp callback name', 'cb');
			res.jsonp(result)
		}else{
			res.send("There is no goods!");
		}
	})
})
//axios.post请求方式/花卉页面
app.post('/getdatabyajax',(req,res)=>{
	res.setHeader("Access-Control-Allow-Origin", "*");
	// console.log("zhixingle")
	let sql="select * from goods_info";
	mydb.query(sql,(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else if(result.length!=0){
			res.send(result)
		}else{
			res.send("There is no goods!");
		}
	})
})

//前端请求用户信息
app.get('/userdata',(req,res)=>{
	console.log(req.query.id)
	let id=req.query.id;
	let sql="select * from user_info where id=?";
	mydb.query(sql,id,(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else if(result.length!=0){
			app.set('jsonp callback name', 'cb');
			res.jsonp(result)
		}else{
			res.send("There is no users!");
		}
	})	
})

//用户登录
app.post('/user_login',(req,res)=>{
	let body=req.body;
	let sql="select * from user_info where tel=? and pwd=?";
	res.setHeader("Access-Control-Allow-Origin", "*");
	mydb.query(sql,[body.tel,body.pwd],(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
		else if(result.length!=0){
			if(body.code.toLowerCase()!=captcha.text.toLowerCase()){res.send("code err!")}
			else{res.send({feedback:"login success!",data:result})}
		}else{
			res.send({feedback:"name and passward not match!",data:""})
		}
	})
})
//用户注册
app.post('/user_regist',(req,res)=>{
	let body=req.body;
	let sql="select * from user_info where tel=?";
	res.setHeader("Access-Control-Allow-Origin", "*");
	mydb.query(sql,[body.tel],(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
		else if(result.length!=0){
			res.send("this telnumber has been registed!")
		}else{
			let sq="insert into user_info(nickname,pwd,tel) values (?,?,?)";
			mydb.query(sq,[body.nickname,body.pwd,body.tel],(err,result)=>{
				if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
				else{
					res.send("regist success!");
				}
			})
		}
	})
})

//用户信息修改
app.get('/changeuser',(req,res)=>{
	console.log(req.query)
	console.log(req.query.id)
	console.log(req.query.name)
	let sql="update user_info set nickname=?,tel=?,head_img=? where id=?";
	mydb.query(sql,[req.query.name,req.query.tel,req.query.imgs,req.query.id],(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else{
			app.set('jsonp callback name', 'cb');
			res.jsonp(result)
		}
	})
})
//商品详情页面
app.get('/getdetails',(req,res)=>{
	let goodsId=req.query.id;
	let sql="select * from goods_info where id=?";
	mydb.query(sql,[goodsId],(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else{
			app.set('jsonp callback name', 'cb');
			res.jsonp(result)
		}
	})
})


//前端动态获取验证码
let captcha;
app.get('/getcode',(req,res)=>{
	captcha=svgCaptcha.create({
		background:"#aaa",
		color:false,
		width:78,
		noise:3,
		height:32,
		fontSize:30,
		ignoreChars:'0o1i'
	});
	// console.log(captcha.text);
	// 把图片上的文字信息存储在session里面
	req.session.coder = captcha.text;
	res.type('svg');
	res.status(200).send(captcha.data);
})

/*****************************后端路由******************************/
app.get('/test',(req,res)=>{
	res.render("index.html")
})
app.get('/',(req,res)=>{
	res.render("login.html")
})
app.get('/seven_days.html',(req,res)=>{
	res.render("seven_days.html")
})
app.get('/hostest_goods.html',(req,res)=>{
	res.render("hostest_goods.html")
})
app.get('/add_goods.html',(req,res)=>{
	res.render("add_goods.html")
})
app.get('/query_goods.html',(req,res)=>{
	res.render("query_goods.html")
})
app.get('/query_user.html',(req,res)=>{
	res.render("query_user.html")
})
app.get('/all_feedback.html',(req,res)=>{
	res.render("all_feedback.html")
})
app.get('/not_read_feedback.html',(req,res)=>{
	res.render("not_read_feedback.html")
})

//登录验证账号密码
app.post('/index',(req,res)=>{
	let body=req.body;
	let sql='select * from manager where name=? and password=?';
	mydb.query(sql,[body.name,body.password],(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else if(result.length!=0){
			res.render("index.html");
		}else{
			res.send("name and password not match!");
		}
	})
})
//添加商品到数据库
app.post('/add_goods',(req,res)=>{
	let body=req.body;
	let small_imgs_url=`${body.small_img_1},${body.small_img_2},${body.small_img_3},${body.small_img_4}`;
	let big_imgs_url=`${body.big_img_1},${body.big_img_2},${body.big_img_3},${body.big_img_4}`;
	let sql='insert into goods_info(type,classify,name,description,small_imgs,big_imgs,del_price,ins_price,inventory,sells,breed_ways,publish_time) values(?,?,?,?,?,?,?,?,?,?,?,now())';
	let arr=[body.type,body.classify,body.name,body.description,small_imgs_url,big_imgs_url,body.del_price,body.ins_price,body.inventory,body.sells,body.breed_ways];
	mydb.query(sql,arr,(err,result)=>{
		if(err){console.log("在添加数据到数据库时发生了错误："+err);return;}
		else{
			res.send("add data to database success!");
		}
	})
})

//静态资源托管
app.use(express.static(__dirname+'/static'));
// app.use(express.static(__dirname+'/../green_life/dist'));

//设置监听端口
app.listen(81, () => {
    console.log('服务器在端口号81监听中...');
})