<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">

<head>
	<link rel="stylesheet" href="main.css" type="text/css" />
	<title>Easy EMR - Admin</title>
</head>

<body>
<f:view>
	<div id= "navigation">
		<img src="img\logo_xl.png" height="60" width="180">
	</div>
	
	<div id= "content">
			
		<div class="adminPanel">


		<fieldset class="admin">
		<h2>Find User</h2>
		<h:form >
			<center>
			<h:panelGrid columns="3">
			<h:outputLabel value="Username: "></h:outputLabel><h:inputText ></h:inputText><br>
			<h:outputLabel value="First Name: "></h:outputLabel><h:inputText></h:inputText><br>
			<h:outputLabel value="Last Name: "></h:outputLabel><h:inputText></h:inputText><br>
			<h:commandButton action="FindUser" value="Search" id="button"></h:commandButton>
			</center>
			</h:panelGrid>
		</h:form>
		</fieldset>

		<fieldset class="admin">
		<h2>Add User </h2>
		<h:form>
			<h:panelGrid columns="3">
				<center>
				<h:outputLabel value="First Name: "></h:outputLabel><h:inputText ></h:inputText><br>
				<h:outputLabel value="Last Name: "></h:outputLabel><h:inputText ></h:inputText><br>
				<h:outputLabel value="Username: "></h:outputLabel><h:inputText ></h:inputText><br>
				<h:outputLabel value="Start Date: "></h:outputLabel><h:inputText ></h:inputText><br>
				<h:outputLabel value="End Date: "></h:outputLabel><h:inputText ></h:inputText><br>
				<h:outputLabel value="Role: "></h:outputLabel>
				<select name="sel">
				<option value="Select">- Select -</option>
				<option value="Student">Student</option>
				<option value="Pharmacist">Pharmacist</option>
				<option value="Researcher">Researcher</option>
				</select>
				<br>
				<h:commandButton action="Add new user" value="Add New User" id="button"></h:commandButton>
				<h:commandButton action="DoNothing" value="Cancel" ></h:commandButton>
				</center>
			</h:panelGrid>
			
		</h:form>
		</fieldset>
		</div>
		
		<div id = "footer">
			<p><a href="index.jsp">Log out</p>
		</div>
		
	</div>
	
	

</f:view>	
</body>

</html>


