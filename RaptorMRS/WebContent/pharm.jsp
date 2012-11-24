<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html lang="en-US">

<head>
	<link rel="stylesheet" href="main.css" type="text/css" />
	<title>Easy EMR</title>
</head>

<body>
<f:view>
	<div id= "navigation">
		<img src="img\logo_xl.png" height="60" width="180">
	</div>
	
	<div id= "content">
	
		<div id = "form">
			<h1>Create RX Record</h1><br>
			<h3>Enter Visit ID</h3>
				<h:inputText id="visitID" value="" />
			
			<h3>Prescription Given</h3>
				<h:inputText id="prescriptionGiven" value="" />
			
			<h3>Same as Prescribed?</h3>
			<center>
			  <h:selectOneRadio id="sameAsprescribed"
								  value="">
					<f:selectItem id="Yes" itemLabel="Yes" itemValue="1" />
					<f:selectItem id="no" itemLabel="No" itemValue="2" />
				</h:selectOneRadio>
			</center>
			<BR>
			

		<h:commandButton id="submit"   value="Submit" action="nextPage"></h:commandButton>
		</div>		
	</div>
	<center>
	 <p><a href="index.jsp">Log out</a></p>
	</center>
	
	
	
</f:view>
</body>