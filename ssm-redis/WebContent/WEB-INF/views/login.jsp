<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>登录</title>
</head>
<body>
<h1>
	你好！请输入账号和密码!  
</h1>
<form action="login" method="post"> 
账号：<input type="text" name="username" required="required"/>
密码：<input type="password" name="password"  required="required"/>
<input type="submit" value="登录"/>
</form>
</body>
</html>
