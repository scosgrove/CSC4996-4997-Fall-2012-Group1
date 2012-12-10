<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">

<head>
<link rel="stylesheet" href="main.css" type="text/css" />
<title>Easy EMR - Admin</title>
</head>

<body>
	<f:view>
	<div id= "navigation">
	<div style="float:left">
		<img src="img\logo_xl.png" height="60" width="180">
	</div>
	
	<div style="float:right">
	<h:form>
		<p><h:commandLink action="#{loginBean.logout}">Log out</h:commandLink></p>		
		<p><h:commandLink action="#{userService.switchToUpdateInfo}">Change My Password</h:commandLink></p>
	</h:form>
	</div>
	</div>

		<div id="content">

			<div class="adminPanel">

				<fieldset class="admin">
					<h2>Find User</h2>
					<h:form>
						<center>
							<table>
							<tr>
								<td><h:outputLabel value="Username: "></h:outputLabel></td>
								<td><h:inputText value="#{userService.searchUsername}"> </h:inputText></td>
							</tr>
							<tr>
								<td><h:outputLabel value="First Name: "></h:outputLabel></td>
								<td><h:inputText value="#{userService.searchFirst}"></h:inputText></td>
							</tr>
							<tr>
								<td><h:outputLabel value="Last Name: "></h:outputLabel></td>
								<td><h:inputText value="#{userService.searchLast}"></h:inputText></td>
							</tr>
							<tr>	 
							<td></td>		
							<td><h:commandButton value="Search" action="#{userService.searchUser}" ></h:commandButton></td>
							</tr>
							</table>	
									
						</center>	
					</h:form>
				</fieldset>

				<fieldset class="admin">
					<h2>Add / Update User</h2>
					<h:form>
					<center>
						<h:panelGrid columns="3">					
								
								<h:outputLabel value="First Name: "></h:outputLabel>
								<h:inputText id = "firstName" value="#{userService.newUser.firstName}"></h:inputText><br>
								<h:outputLabel value="Last Name: "></h:outputLabel>
								<h:inputText id = "lastName" value="#{userService.newUser.lastName}"></h:inputText><br>
								<h:outputLabel value="Username: "></h:outputLabel>
								<h:inputText id = "username" value="#{userService.newUser.username}"></h:inputText><br>
								<h:outputLabel value="Password: "></h:outputLabel>
								<h:inputSecret id = "password" value="#{userService.newUser.password}"></h:inputSecret><br>
								<h:outputLabel value="Role: "></h:outputLabel>		
								<h:selectOneMenu id="addrole" value="#{userService.newUser.roles}">
								  <f:selectItem itemValue="Medical Student" itemLabel="Medical Student"/>
								  <f:selectItem itemValue="Pharmacist" itemLabel="Pharmacist"/>
								  <f:selectItem itemValue="Researcher" itemLabel="Researcher"/>
								  <f:selectItem itemValue="System Administrator" itemLabel="Admin"/>
								</h:selectOneMenu> <br>											
								<h:commandButton value="Add a new user" action="#{userService.createUser}" rendered="#{userService.creating}"></h:commandButton>
								<h:commandButton value="Update User" action="#{userService.updateUser }"></h:commandButton>
								<h:commandButton value="Cancel" action="#{userService.resetFields }"></h:commandButton>
						</h:panelGrid>
					</center>
					</h:form>
				</fieldset>
			</div>
			<BR>
			<center>
			<p><a href="HelpInformation.pdf">Need Help?</a></p>
			</center>

		</div>

	</f:view>
</body>

</html>


