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
		<h:form>
			<div id= "navigation">
				<div style="float:left">
					<img src="img\logo_xl.png" height="60" width="180">
				</div>
	
				<div style="float:right">
					<p><h:commandLink action="#{loginBean.logout}">Log out</h:commandLink></p>		
					<p><h:commandLink action="#{userService.switchToUpdateInfo}">Change My Password</h:commandLink></p>
				</div>
			</div>
			<BR>
			<div id="container">
			
			<h3 style="color:red">Hello!, <i><h:outputLabel value="#{loginBean.systemUser.username }"/></i></h3>
	
				<div  style="border:2px groove; text-align:center; width:400; height:60">
					<p><b>Search:</b>&nbsp;&nbsp;First Name <h:inputText id="firstname" value="#{encounterService.searchPatientFirstName }" />&nbsp;&nbsp;<h:commandButton id="searchFirst" value="Search" action="#{encounterService.searchPatientsF }"></h:commandButton>
									 &nbsp;&nbsp;Last Name<h:inputText id="lastname" value="#{encounterService.searchPatientLastName }" />&nbsp;&nbsp;<h:commandButton id="searchLast" value="Search" action="#{encounterService.searchPatients }"></h:commandButton>
									 &nbsp;&nbsp;Patient ID<h:inputText id="patientID" value="#{encounterService.searchPatientId }" />&nbsp;&nbsp;<h:commandButton id="search" value="Search" action="#{encounterService.searchPatient }"></h:commandButton></p>
				</div>
				
				<h:commandButton action="#{encounterService.resetRecord }" style="width:150px;height:50px" value="Create New Patient"/>
				<h:dataTable value="#{encounterService.searchList}" var="encounter">
					<h:column>
						<f:facet name="header">
							<h:column>
								<h:outputText value="Encounter Id" />
							</h:column>
						</f:facet>
						<h:outputText value="#{encounter.encounterID}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:column>
								<h:outputText value="Overall Impress." />
							</h:column>
						</f:facet>
						<h:outputText value="#{encounter.overallImpression}" />
					</h:column>

					<h:column>
						<f:facet name="header">
							<h:column>
								<h:outputText value="Chief Complaint" />
							</h:column>
						</f:facet>
						<h:outputText value="#{encounter.chiefComplaint}" />
					</h:column>

					<h:column>
						<f:facet name="header">
							<h:column>
								<h:outputText value="Actions" />
							</h:column>
						</f:facet>
						<h:panelGrid columns="2">
							<h:commandLink value="Select"
								action="#{encounterService.selectEncounter}">
								<f:setPropertyActionListener
									target="#{encounterService.encounter}" value="#{encounter}" />
							</h:commandLink>
						</h:panelGrid>
					</h:column>
				</h:dataTable>

				<div id = "module" style="float:left">
					<h1>General Information</h1>
				
					<h3>Patient ID</h3>
					<h:outputLabel value = "#{encounterService.patient.patientID }"></h:outputLabel>
					<h3>First Name</h3>
					<h:inputText value = "#{encounterService.patient.firstName }"></h:inputText>
					<h3>Last Name</h3>
					<h:inputText value = "#{encounterService.patient.lastName }"></h:inputText>
					<h3>City/Town/Village of Residence</h3>
					<h:inputText value = "#{encounterService.patient.residence }"></h:inputText>
					<h3>Birth Date</h3>
					<h:inputText value = "#{encounterService.patient.birthDate }"></h:inputText>
					<h3>Gender</h3>
					<h:selectOneMenu id ="gender" value="#{encounterService.patient.gender }">
				   		<f:selectItem itemValue="Male" itemLabel="Male" />
				   		<f:selectItem itemValue="Female" itemLabel="Female" />
					</h:selectOneMenu>
				</div>
			</div>	
		</h:form>
	</f:view>
</body>
</html>