<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
	<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/styles.css">
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<script>
	$(function() {
		$(".tabs").tabs();
	});
</script>
<title>Search or Add a Patient</title>
</head>
<body>
<%@ include file="header.jsp" %>
		
	<f:view>
		
		
		<h:form>
			<h2><br><br><br>Find Patient(s)</h2>
			<h:panelGrid columns="2">
				<h:outputLabel value="Patient Identifier or Patient Name: "></h:outputLabel>
				<h:inputText></h:inputText>

			</h:panelGrid>
			<div id="panel3">//if multiple results display table showing all results with patient identification information so user can select correct patient
			</div>
		</h:form><div id="panel1">//display if patient not found
		<h2>Create Patient</h2>
		<div class="tabs">
			<ul>
				<li><a href="#tab1">Simple Entry</a></li>
				<li><a href="#tab2">Advanced Entry</a></li>

			</ul>
			<div id="tab1">
			
				<h:form>
					<h:panelGrid columns="2">
						<h:outputLabel value="Person Name "></h:outputLabel>
						<h:inputText></h:inputText>
					</h:panelGrid>
					<h:panelGrid columns="4">
						<h:outputLabel value="Birthdate "></h:outputLabel>
						<h:inputText></h:inputText>
						<h:outputLabel value="or Age "></h:outputLabel>
						<h:inputText></h:inputText>
					</h:panelGrid>
					<h:panelGrid columns="2">
						<h:outputLabel value="Gender "></h:outputLabel>
						<h:selectOneRadio>
							<f:selectItem itemLabel="Male" />
							<f:selectItem itemLabel="Female" />
						</h:selectOneRadio>
					</h:panelGrid>

					<h:panelGrid columns="1">
						<h:commandButton value="Create Person"></h:commandButton>
					</h:panelGrid>
				</h:form>
			</div>
			<div id="tab2">
				<h:form>
				<h3>
							<h:outputLabel value="Person Name"></h:outputLabel>
						</h3>
					<h:panelGrid columns="7">
						
						<h:outputLabel value="Given"></h:outputLabel>
						<h:inputText></h:inputText>
						<h:outputLabel value="Middle "></h:outputLabel>
						<h:inputText></h:inputText>
						<h:outputLabel value="Family Name "></h:outputLabel>
						<h:inputText></h:inputText>
					</h:panelGrid>
					<h:panelGrid columns="2">
						
							<h:outputLabel value="ID Number"></h:outputLabel>
						
						<h:inputText></h:inputText>
					</h:panelGrid>
					<h3>
							<h:outputLabel value="Demographics"></h:outputLabel>
						</h3>
					<h:panelGrid columns="5">
						
						<h:outputLabel value="Gender "></h:outputLabel>
						<h:selectOneRadio>
							<f:selectItem itemLabel="Male" />
							<f:selectItem itemLabel="Female" />
						</h:selectOneRadio></h:panelGrid><h:panelGrid columns="2">
						<h:outputLabel value="Birthdate (Format:dd/mm/yyyy)"></h:outputLabel>
						<h:inputText></h:inputText>
					</h:panelGrid>
					<h3>
							<h:outputLabel value="Address"></h:outputLabel>
						</h3>
					<h:panelGrid columns="3">
						
						<h:outputLabel value="Address"></h:outputLabel>
						<h:inputText></h:inputText>
					</h:panelGrid>
					<h:panelGrid columns="4">
						<h:outputLabel value="Estate/Nearest Center"></h:outputLabel>
						<h:inputText></h:inputText>
						<h:outputLabel value="Town/Village"></h:outputLabel>
						<h:inputText></h:inputText>
					</h:panelGrid>
					<h:panelGrid columns="4">
						<h:outputLabel value="Latitude"></h:outputLabel>
						<h:inputText></h:inputText>
						<h:outputLabel value="Longitude"></h:outputLabel>
						<h:inputText></h:inputText>
					</h:panelGrid>
						<h:panelGrid columns="1">
			<h:commandButton value="Create Person"></h:commandButton>
		</h:panelGrid>
				</h:form>
			</div>
		</div></div>
	<div id="panel2">//display when patient is found
	<h3><h:panelGrid columns="2">
						<h:outputLabel value="First Name"></h:outputLabel>
						
						<h:outputLabel value="Last Name"></h:outputLabel>
						</h:panelGrid></h3>
						<h:panelGrid columns="2">
						<h:outputLabel value="RaptorMRS Identification Number"></h:outputLabel>
						
						<h:outputLabel ></h:outputLabel>
						</h:panelGrid>
			<div class="tabs">
				<ul>
					<li><a href="#tab-1">Overview</a></li>
					<li><a href="#tab-2">Regimens</a></li>
					<li><a href="#tab-3">Visits</a></li>
					<li><a href="#tab-4">Demographics</a></li>
				</ul>
				<div id="tab-1">Allergies, problem list</div>
				<div id="tab-2">drugs prescribed</div>
				<div id="tab-3">table showing all previous visits</div>
				<div id="tab-4">address information</div>
			</div>
		</div>
	</f:view>
</body>
</html>