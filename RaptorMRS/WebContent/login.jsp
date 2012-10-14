<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<f:view>
<h:outputLabel></h:outputLabel>
<h1> RaptorMRS </h1>
	<ul><li><a>Home</a></li>
<li><a>Find or Add Patient</a></li>
<li><a>Admin</a></li>
<li><a>Inventory</a></ul>
		<h:form>
<h:panelGrid columns="2">
<h:outputLabel value="Username: "></h:outputLabel><h:inputText value="#{userInterfaceBean.username}"></h:inputText>

<h:outputLabel value="Password: "></h:outputLabel>
<h:inputText value="#{userInterfaceBean.password}"></h:inputText>
<h:commandButton action="#{userInterfaceBean.checkPassword}" value="Log In"></h:commandButton>
<h:outputLabel value="#{userInterfaceBean.loginAttemptResult}"></h:outputLabel>
</h:panelGrid>
</h:form>
</f:view>
</body>
</html>