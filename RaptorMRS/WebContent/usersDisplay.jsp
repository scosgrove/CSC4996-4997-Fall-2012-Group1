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
		<img src="img\logo_xl.png" height="60" width="180">
		</div>
		
		<div id="container" >
			<BR>
			<h:form>
			<h:dataTable value="#{userService.usersList}" var="user">
				<h:column>
					<f:facet name="header">
						<h:column>
							<h:outputText value="Username" />
						</h:column>
					</f:facet>
					<h:outputText value="#{user.username }" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:column>
							<h:outputText value="First Name" />
						</h:column>
					</f:facet>
					<h:outputText value="#{user.firstName}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:column>
							<h:outputText value="Last Name" />
						</h:column>
					</f:facet>
					<h:outputText value="#{user.lastName}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:column>
							<h:outputText value="Actions" />
						</h:column>
					</f:facet>
					<h:panelGrid columns="2">
						<h:commandLink value="Select" action="#{userService.selectUser}">
							<f:setPropertyActionListener target="#{userService.newUser}"
								value="#{user}" />
						</h:commandLink>
					</h:panelGrid>
				</h:column>
			
			</h:dataTable>
			<a href="admin.jsp"> Back</a>
		</h:form>
	</div>

	</f:view>
</body>
</html>