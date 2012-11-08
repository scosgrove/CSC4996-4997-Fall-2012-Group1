<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/styles.css" />
<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/jquery-ui-1.9.1.custom.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log In</title>
<script>
		$(function() {
		$("input[type=submit]").button();
	});
</script>
</head>
<body>
	<div id="wrap">
		<f:view>
			<jsp:directive.include file="header.jsp" />
			<div class="logInPanel">
				
				<h:form styleClass="login">
				<fieldset class="login">
				<legend class="login">Please Log In</legend>
					<h:panelGrid columns="2">
						<h:outputLabel value="Username: "></h:outputLabel>
						<h:inputText value="#{userInterfaceBean.username}"></h:inputText>
						<h:outputLabel value="Password: "></h:outputLabel>
						<h:inputSecret value="#{userInterfaceBean.password}"></h:inputSecret>
						<h:commandButton value="Log In" action="#{userInterfaceBean.checkPassword}"  ></h:commandButton>
						<h:outputText value="#{userInterfaceBean.loginAttemptResult}"></h:outputText>
					</h:panelGrid><br/>
					</fieldset>
				</h:form>
			</div>
		</f:view>
	</div>
</body>
</html>