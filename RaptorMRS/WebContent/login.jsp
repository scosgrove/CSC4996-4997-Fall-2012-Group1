<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<div id="wrap">

<f:view>
<h:outputLabel></h:outputLabel>

	<jsp:directive.include file="header.jsp"/>
	<h2>Log In</h2>
		<h:form>
<h:panelGrid columns="2">
<h:outputLabel value="Username: "></h:outputLabel><h:inputText value="#{userInterfaceBean.username}"></h:inputText>

<h:outputLabel value="Password: "></h:outputLabel>
<h:inputSecret value="#{userInterfaceBean.password}"></h:inputSecret>
<h:commandButton value="Log In" action="#{userInterfaceBean.checkPassword}" ></h:commandButton>
<h:outputText value="#{userInterfaceBean.loginAttemptResult}"></h:outputText>
</h:panelGrid>
</h:form>
</f:view>
</div>
</body>
</html>