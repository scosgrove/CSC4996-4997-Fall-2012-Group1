<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">

<head>
<link rel="stylesheet" href="main.css" type="text/css" />
<title>Easy EMR - Update My Info</title>
</head>

<body>
	<f:view>
		<div id="navigation">
			<img src="img\logo_xl.png" height="60" width="180">
		</div>

		<div id="content">

			<div class="adminPanel">

				<fieldset class="admin">
					<h2>Update My Password</h2>
					<h:form>
					<center>
						<h:panelGrid columns="3">		
								<h:outputLabel value="Password: "></h:outputLabel>
								<h:inputSecret id = "password" value="#{userService.myPassword}"></h:inputSecret><br>
								<h:commandButton value="Update" action="#{userService.userChangeOwnPassword }"></h:commandButton>
								<h:commandButton value="Cancel" action="#{userService.cancel }"></h:commandButton>
						</h:panelGrid>
					</center>
					</h:form>
				</fieldset>
			</div>
			<h:form>
			<div id="footer">
				<p><h:commandLink action="#{loginBean.logout}">Log out</h:commandLink></p>
				<p><a href="HelpInformation.pdf">Need Help?</a></p>
			</div>
			</h:form>

		</div>

	</f:view>
</body>

</html>


