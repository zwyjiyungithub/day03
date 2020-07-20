<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>页面静态化</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
	<div id="app">
		<div v-if="show">
		<button @click="toadd">新增</button>
			<table border="1">
				<tr>
					<td>编号</td>
					<td>姓名</td>
					<td>年龄</td>
					<td>性别</td>
					<td>操作</td>
				</tr>
				<tr v-for="(user,index) in users">
					<td>{{index}}</td>
					<td>{{user.name}}</td>
					<td>{{user.age}}</td>
					<td>{{user.sex==1?'男':'女'}}</td>
					<td>
						<a @click="toedit(user)">修改</a>
						<a @click="del(index)">删除</a>
					</td>
				</tr>
			</table>
	</div>
	<div v-if="!show">
			姓名：<input type="text" v-model="user.name"><br>
			年龄：<input v-model="user.age"><br>
			性别：<input type="radio" value="1" v-model="user.sex">男
			    <input type="radio" value="0" v-model="user.sex">女<br>
			    <button @click="add" v-if="isEdit">添加</button> 
			    <button @click="edit" v-if="!isEdit">修改</button> 
			    <button @click="back">返回</button>
		</div>
	</div>
</body>
	<script type="text/javascript">
		var app = new Vue({
			el:'#app',
			data:{
				user:{},
				show:true,
				users:[
				    	{name:"张三",sex:1,age:12},
				    	{name:'刘亦菲',sex:0,age:20},       
						{name:'范冰冰',sex:1,age:19},
						{name:'古力娜扎',sex:0,age:18},       
						{name:'柳岩',sex:1,age:17}
				    ]
			},
			methods:{
				toadd(){
					this.show=false;
					thi.isEdit=true;
				},
			}
	});
</script>
</html>