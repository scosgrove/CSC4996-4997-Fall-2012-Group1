<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
<f:view>
<jsp:directive.include file="header.jsp"/>


<h:form>
<h2> Search for users by: </h2>
(Any or all of fields below)

<h:panelGrid columns="6">
<h:outputLabel value="Username: "></h:outputLabel><h:inputText value="#{User2.username}"></h:inputText>
<h:outputLabel value="First Name: "></h:outputLabel><h:inputText value="#{User2.firstName}"></h:inputText>
<h:outputLabel value="Last Name: "></h:outputLabel><h:inputText value="#{User2.lastName}"></h:inputText> <h:commandButton action="FindUser" value="Search"></h:commandButton>

</h:panelGrid>
</h:form>

<h:form>
<h2> Add new users: </h2>
(ALL FIELDS ARE REQUIRED)

<h:panelGrid columns="6">

<h:outputLabel value="First Name: "></h:outputLabel><h:inputText value="#{User2.setFirstName}"></h:inputText>
<h:outputLabel value="Last Name: "></h:outputLabel><h:inputText value="#{User2.setLastName}"></h:inputText>
<h:outputLabel value="Username: "></h:outputLabel><h:inputText value="#{User2.setUsername}"></h:inputText>
<h:outputLabel value="Start Date: "></h:outputLabel><h:inputText value="#{User2.setStartDate}"></h:inputText>
<h:outputLabel value="End Date: "></h:outputLabel><h:inputText value="#{User2.setEndDate}"></h:inputText>
<h:outputLabel value="Roles: "></h:outputLabel><h:inputText value="#{User2.setRoles}"></h:inputText>


<h:commandButton action="Add new user" value="Add New User"></h:commandButton>
<h:commandButton action="DoNothing" value="Cancel"></h:commandButton>
</h:panelGrid>
</h:form>

</f:view>
</div>
</body>
</html>