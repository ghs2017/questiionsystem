<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>自动出题</title>
</head>

<body >
	<form action="chuti.jsp" method="post">
	<center>
	<h2>自动出题</h2>
	<h3><font>出题类型:<input type="radio" name="type" value="zhengshu">整数
				<input type="radio" name="type" value="zhenfenshu">真分数
				<input type="radio" name="type" value="douyou">都有</font></h3>
	<h3><font>出题数：<input type="text" name ="chutishu"  ></font><br></h3>
				<input type="submit" value="出题">
	</center>
	</form>
	
	 
	
</body>
</html>