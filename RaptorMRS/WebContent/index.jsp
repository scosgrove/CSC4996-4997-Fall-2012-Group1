<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="main.css" type="text/css" />
<title>Easy EMR</title>
</head>

<body>	
<f:view>
	<div id= "navigation">
		<img src="img\logo_xl.png" height="60" width="180">
	</div>
	
	<div id= "content">
		<div id = "form" height = "300px">
			<h1>Welcome!</h1>
			<h4>Please log in.</h4>
			
			<h:form>
				
				<!-- original
				<input type="text" name="uid" placeholder="username">
				<input type="password" name="uid" placeholder="password">
				<br>
				<input type="submit" value="Login">
				-->
				
				<h:inputText id = "username" value="#{loginBean.systemUser.username}" />
				<h:inputSecret id = "password" redisplay="false" value="#{loginBean.systemUser.password}" /><br>
				<h:commandButton id = "submit" value = "Login" action="#{loginBean.authenticate}"></h:commandButton>
				<h:outputText value="#{loginBean.loginResult}"></h:outputText>
			</h:form>
			
		</div>
	
		<center>
		<p><a href="">Forgot your password?</p>
		<p><a href="">Request an ID</p>
		</center>

	</div>
</f:view>
</body>

</html>