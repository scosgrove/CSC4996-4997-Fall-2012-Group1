<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/styles.css" />
<link rel="stylesheet"
	href="http://localhost:8080/RaptorMRS/faces/jquery-ui-1.9.1.custom.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script>
	$(function() {
	$("input[type=submit]").button();
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Super Admin Page</title>
</head>
<body>
<div id="wrap">
<f:view>
<jsp:directive.include file="header.jsp"/>


<h:form>
<h3> Search for users by: </h3>
(Any or all of fields below)

<h:panelGrid columns="6">
<h:outputLabel value="Username: "></h:outputLabel><h:inputText value="#{User2.username}"></h:inputText>
<h:outputLabel value="First Name: "></h:outputLabel><h:inputText value="#{User2.firstName}"></h:inputText>
<h:outputLabel value="Last Name: "></h:outputLabel><h:inputText value="#{User2.lastName}"></h:inputText> <h:commandButton action="FindUser" value="Search" id="button"></h:commandButton>

</h:panelGrid>
</h:form>

<h:form>
<h3> Add new users: </h3>
(ALL FIELDS ARE REQUIRED)

<h:panelGrid columns="6">

<h:outputLabel value="First Name: "></h:outputLabel><h:inputText value="#{User2.setFirstName}"></h:inputText>
<h:outputLabel value="Last Name: "></h:outputLabel><h:inputText value="#{User2.setLastName}"></h:inputText>
<h:outputLabel value="Username: "></h:outputLabel><h:inputText value="#{User2.setUsername}"></h:inputText>
<h:outputLabel value="Start Date: "></h:outputLabel><h:inputText value="#{User2.setStartDate}"></h:inputText>
<h:outputLabel value="End Date: "></h:outputLabel><h:inputText value="#{User2.setEndDate}"></h:inputText>
<h:outputLabel value="Roles: "></h:outputLabel><h:inputText value="#{User2.setRoles}"></h:inputText>


<h:commandButton action="Add new user" value="Add New User" id="button"></h:commandButton>
<h:commandButton action="DoNothing" value="Cancel" ></h:commandButton>
</h:panelGrid>
</h:form>
<h:outputLabel value="#{currentTimaAndDate.getDate}"></h:outputLabel>
<p> <%= new java.util.Date() %> </p>
</f:view>
</div>
</body>
</html>