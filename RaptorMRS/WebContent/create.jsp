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
		<img src="img\logo_xl.png" height="60" width="180">
	</div>
	

	<div id="container">
	<BR>
	
	
	<font color="red"><h3>You are logged in as a: <i>Student</i></h3></font>
	
	<center>
	<div width = "400" height = "60" style="border:2px groove">
	<p><b>Search:</b>&nbsp;&nbsp;First Name <h:inputText id="firstname" value="" />&nbsp;&nbsp;Last Name<h:inputText id="lastname" value="" />&nbsp;&nbsp;Patient ID<h:inputText id="patientID" value="#{encounterService.searchPatientId }" />&nbsp;&nbsp;<h:commandButton id="search" value="Search" action="#{encounterService.searchPatient }"></h:commandButton></p>
	</div>
	</center>
	
	<center><font color="red"><h1>Visit ID: <h:outputLabel value = "#{encounterService.encounter.encounterID }"></h:outputLabel></h1></font></center>
		<div id= "create" style="float:left">
			
			<div id = "module" style="float:left">
				<h1>General Information</h1>
				
				<a href=""><img src="img/nopic.png"></a>
				
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
				   	<f:selectItem itemValue="NULL" itemLabel="- Select -" />
				   	<f:selectItem itemValue="Male" itemLabel="Male" />
				   	<f:selectItem itemValue="Female" itemLabel="Female" />
				</h:selectOneMenu>
				
				
				<h3>Height</h3>
				<h:inputText id="hin" value="#{encounterService.vitals.height }"></h:inputText> in
				<h3>Weight</h3>
				<h:inputText id="wlbs" value="#{encounterService.vitals.weight }"></h:inputText> lbs
				<br>
				<h3>BMI</h3>
				<h:outputLabel value = "#{encounterService.vitals.calculatedBMI }"></h:outputLabel>
				

			</div>
			
			<div id = "module" style="float:right">
				<h1>Vitals</h1>
				<h3>Blood Pressure (mmHg)</h3>
				<h:inputText style = "width:60px" id="bpTop"  value="#{encounterService.vitals.systolicBP }" /> / <h:inputText style = "width:60px" id="bpBottom"  value="#{encounterService.vitals.diastolicBP }" /> <BR>
				
				<h3>Heart Rate (bpm)</h3>
				<h:inputText id="heartrate"  value="#{encounterService.vitals.heartRate }" /><br>
				
				<h3>Temperature (C)</h3>
				<h:inputText id="temperature"  value="#{encounterService.vitals.temperatureC }" /><br>
				
				<h3>Respirations (Breaths per Minute)</h3>
				<h:inputText id="respirations"  value="#{encounterService.vitals.respRate }" /><br>

				<h3>Oxygen (%)</h3>
				<h:inputText id="oxygen"  value="#{encounterService.vitals.oximetry }" /><br>
			</div>
		</div>
		
		<div id= "create" style="float:right">
		
			<div id = "module" style="float:left">
				<h1>Complaints and Treatment</h1>
				<h3>Chief Complaint</h3>
				<h:inputTextarea id="primaryComplaint" value="#{encounterService.encounter.chiefComplaint }" />
				
				<h3>Treatment Given</h3>
				<h:inputTextarea id="treatmentGiven" value="#{encounterService.encounter.medicalProcedures }" />
				
				<h3>Prescription</h3>
				<h:inputText value="#{encounterService.encounter.medicationPrescribed1 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.medicationPrescribed2 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.medicationPrescribed3 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.medicationPrescribed4 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.medicationPrescribed5 }"></h:inputText><BR>
				
				<h3>Blood Drawn</h3>
				<p>
				<h:selectOneMenu id ="bloodDrawn" value="#{encounterService.vitals.fingerPoke }"><f:selectItem itemValue="No" itemLabel="No" /><f:selectItem itemValue="Yes" itemLabel="Yes" /></h:selectOneMenu><h4>Sample #</h4>&nbsp;<h:inputText value = "#{encounterService.vitals.bloodSampleID }"></h:inputText>
				</p>
				
				<h3>Other Condition</h3>
				<h:inputText value="#{encounterService.encounter.condition1 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.condition2 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.condition3 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.condition4 }"></h:inputText><BR>
				<h:inputText value="#{encounterService.encounter.condition5 }"></h:inputText><BR>
				
			</div>
			
			<div id = "module" style="float:right">
				<h1>Notes</h1>
				<h3>HPI</h3>
				
				<table>
				<tr>
				<td><h4>Onset</h4></td>
				<td><h:inputText style = "width:50px" value="#{encounterService.encounter.onsetNumber }"></h:inputText>
				<h:selectOneMenu value="#{encounterService.encounter.onsetUnit }">
					<f:selectItem itemValue="days" itemLabel="days"/>
					<f:selectItem itemValue="weeks" itemLabel="weeks"/>
					<f:selectItem itemValue="months" itemLabel="months"/>
					</h:selectOneMenu> ago</td>
				</tr>
				
				<tr>
				<td><h4>Severity</h4></td>
				<td><h:selectOneMenu>
					<f:selectItem itemValue="0" itemLabel=" - "/>
					<f:selectItem itemValue="1" itemLabel="1"/>
					<f:selectItem itemValue="2" itemLabel="2"/>
					<f:selectItem itemValue="3" itemLabel="3"/>
					<f:selectItem itemValue="4" itemLabel="4"/>
					<f:selectItem itemValue="5" itemLabel="5"/>
					<f:selectItem itemValue="6" itemLabel="6"/>
					<f:selectItem itemValue="7" itemLabel="7"/>
					<f:selectItem itemValue="8" itemLabel="8"/>
					<f:selectItem itemValue="9" itemLabel="9"/>
					<f:selectItem itemValue="10" itemLabel="10"/>
				</h:selectOneMenu></td>
				</tr>
				
				<tr>
				<td><h4>Radiation</h4></td>
				<td><h:inputText value="#{encounterService.encounter.radiation }"/></td>
				</tr>
				
				<tr>
				<td><h4>Quality</h4></td>
				<td><h:inputText value="#{encounterService.encounter.quality }"/></td>
				</tr>
				
				<tr>
				<td><h4>Provokes/Palliates</h4></td>
				<td><h:inputText value="#{encounterService.encounter.provokes }"/></td>
				</tr>
				
				<tr>
				<td><h4>Time of Day</h4></td>
				<td><h:inputText value="#{encounterService.encounter.timeOfDay }"/></td>
				</tr>
				
				<tr>
				<td><h4>Other</h4></td>
				<td><h:inputText value="#{encounterService.encounter.other }"/></td>
				</tr>
				</table>
				
				<h3>Overall Impression</h3>
				<h:inputTextarea id="impression" value="#{encounterService.encounter.overallImpression }" />
				<h3>Keywords from Previous Encounter</h3>
				<h:inputTextarea id="keywords" value="#{encounterService.encounter.keywords }" />
				
							
				<h1>Images of condition/illness</h1>
								
				<a href=""><img src="img/nopic.png"></a>
				<a href=""><img src="img/nopic.png"></a>
				<a href=""><img src="img/nopic.png"></a>
				
			</div>
		</div>
		

		
	</div>

	<center>
	
	<h:commandButton id="submit" value="Submit" action="#{encounterService.saveOrUpdateEncounter }" rendered="#{ not encounterService.newEncounter }"></h:commandButton>
	<h:commandButton id="startNew" value="Start New Encounter" action="#{encounterService.startEncounter}" rendered="#{encounterService.newEncounter }"></h:commandButton>
		<p><h:commandLink action="#{loginBean.logout}">Log out</h:commandLink></p>
		<p><h:commandLink action="#{userService.switchToUpdateInfo}">Change My Password</h:commandLink></p>
		<p><a href="HelpInformation.pdf">Need Help?</a></p>
	
	</center>
	</h:form>
</f:view>
</body>