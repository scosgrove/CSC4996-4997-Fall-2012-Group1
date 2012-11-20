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
<script type="text/javascript">
function clock() {
	   var now = new Date();
	   var outStr = 'Time: ' + now.getHours()+' hr';
	   document.getElementById('clockDiv').innerHTML = outStr;
	   var displayDate = 'Date: ' + (now.getMonth()+1) + '/' + (now.getDate()) + '/' + now.getFullYear();
	   document.getElementById('currentDate').innerHTML = displayDate;
	   setTimeout('clock()',1000);
	}
	clock();

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Super Admin Page</title>
</head>
<body onload="clock();" >
<div class="wrapper">
<jsp:directive.include file="header.jsp"/>
<div class="content">
<f:view>

<div class="adminPanel">


<fieldset class="admin">
				<legend class="admin">Find User</legend>
<h:form >
<h:panelGrid columns="6">
<h:outputLabel value="Username: "></h:outputLabel><h:inputText value="#{User2.username}"></h:inputText>
<h:outputLabel value="First Name: "></h:outputLabel><h:inputText value="#{User2.firstName}"></h:inputText>
<h:outputLabel value="Last Name: "></h:outputLabel><h:inputText value="#{User2.lastName}"></h:inputText> <h:commandButton action="FindUser" value="Search" id="button"></h:commandButton>

</h:panelGrid>
</h:form>
</fieldset>

<fieldset class="admin">
				<legend class="admin">Add User </legend>
<h:form>



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
</fieldset>
</div>
</f:view>
</div></div>
</body>
</html>