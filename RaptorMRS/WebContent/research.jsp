<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="main.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Easy EMR - Create Reports</title>
</head>
<body>
<!-- Created by Lev, uploaded by Marek -->
<f:view>
	<div id= "navigation">
			<img src="img\logo_xl.png" height="60" width="180">
		</div>
		
		<div id= "content">
		
			<div id = "form">
				<h1>Create Reports</h1>
	
			<h:form>
	
				<h:commandButton action="#{researchReportsBean.generateBloodSampleReport}" value="Create Blood Sample Report" style="width:300px;height:60px"></h:commandButton>
				<h:commandButton action="#{researchReportsBean.generateConditionReport}" value="Create Condition/Procedure Report" style="width:300px;height:60px"></h:commandButton>
				<h:commandButton action="#{researchReportsBean.generateRxReport}" value="Create RX Report" style="width:300px;height:60px"></h:commandButton>
			</h:form>
	
			</div>

		<center>
		<h:form>
			<p><h:commandLink action="#{loginBean.logout}">Log out</h:commandLink></p>
		</h:form>
		</center>

		</div>
</f:view>
</body>
</html>