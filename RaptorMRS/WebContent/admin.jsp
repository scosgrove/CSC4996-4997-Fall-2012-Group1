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
		<div id="navigation">
			<img src="img\logo_xl.png" height="60" width="180">
		</div>

		<div id="content">

			<div class="adminPanel">


				<fieldset class="admin">
					<h2>Find User</h2>
					<h:form>
						<center>
							<h:panelGrid columns="3">
								<h:outputLabel value="Username: "></h:outputLabel>
								<h:inputText></h:inputText><br>
								<h:outputLabel value="First Name: "></h:outputLabel>
								<h:inputText></h:inputText><br>
								<h:outputLabel value="Last Name: "></h:outputLabel>
								<h:inputText></h:inputText><br>
								<h:commandButton action="Find User" value="Search" id="button"></h:commandButton>
							</h:panelGrid>
						</center>	
					</h:form>
				</fieldset>

				<fieldset class="admin">
					<h2>Add User</h2>
					<h:form>
						<h:panelGrid columns="3">
							<center>
							
								
								<h:outputLabel value="First Name: "></h:outputLabel>
								<h:inputText id = "firstName" value="#{userService.newUser.firstName}"></h:inputText><br>
								<h:outputLabel value="Last Name: "></h:outputLabel>
								<h:inputText id = "lastName" value="#{userService.newUser.lastName}"></h:inputText><br>
								<h:outputLabel value="Username: "></h:outputLabel>
								<h:inputText id = "username" value="#{userService.newUser.username}"></h:inputText><br>
								<h:outputLabel value="Password: "></h:outputLabel>
								<h:inputSecret id = "password" value="#{userService.newUser.password}"></h:inputSecret><br>
								<h:outputLabel value="Role: "></h:outputLabel>		
								<h:selectOneMenu id="chooseCarColor" value="#{userService.newUser.roles}">
								  <f:selectItem itemValue="Medical Student" itemLabel="Medical Student"/>
								  <f:selectItem itemValue="Pharmacist" itemLabel="Pharmacist"/>
								  <f:selectItem itemValue="Researcher" itemLabel="Researcher"/>
								</h:selectOneMenu> <br>											
								<h:commandButton value="Add a new user" action="#{userService.createUser}"></h:commandButton>
								<h:commandButton value="Cancel" ></h:commandButton>
							</center>
						</h:panelGrid>

					</h:form>
				</fieldset>
			</div>
			<h:form>
			<div id="footer">
				<p><h:commandLink action="#{loginBean.logout}">Log out</h:commandLink></p>
			</div>
			</h:form>

		</div>

	</f:view>
</body>

</html>


