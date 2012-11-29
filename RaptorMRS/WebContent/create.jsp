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
	

	<div id="container">
	<BR>
	
	
	<font color="red"><h3>You are logged in as a: <i>Student</i></h3></font>
	
	<center>
	<div width = "400" height = "60" style="border:2px groove">
	<p><b>Search:</b>&nbsp;&nbsp;First Name <h:inputText id="firstname" value="" />&nbsp;&nbsp;Last Name<h:inputText id="lastname" value="" />&nbsp;&nbsp;Patient ID<h:inputText id="patientID" value="" />&nbsp;&nbsp;<h:commandButton id="search" value="Search" action="search"></h:commandButton></p>
	</div>
	</center>
	
	<center><font color="red"><h1>Visit ID: <h:outputLabel value = "#{encounter.encounterID }"></h:outputLabel></h1></font></center>
		<div id= "create" style="float:left">
			
			<div id = "module" style="float:left">
				<h1>General Information</h1>
				
				<a href=""><img src="img/nopic.png"></a>
				
				<h3>Patient ID</h3>
				<h:outputLabel value = "#{patientData.patientID }"></h:outputLabel>
				<h3>First Name</h3>
				<h:inputText value = "#{patientData.firstName }"></h:inputText>
				<h3>Last Name</h3>
				<h:inputText value = "#{patientData.lastName }"></h:inputText>
				<h3>City/Town/Village of Residence</h3>
				<h:inputText value = "#{patientData.residence }"></h:inputText>
				<h3>Birth Date</h3>
				<h:inputText value = "#{patientData.birthDate }"></h:inputText>
				
				<h3>Gender</h3>
				<h:selectOneMenu id ="gender" value="#{patientData.gender }">
				   	<f:selectItem itemValue="NULL" itemLabel="- Select -" />
				   	<f:selectItem itemValue="Male" itemLabel="Male" />
				   	<f:selectItem itemValue="Female" itemLabel="Female" />
				</h:selectOneMenu>
				
				
				<h3>Height</h3>
				<h:inputText id="hin" value="#{encounter.height }"></h:inputText> in
				<h3>Weight</h3>
				<h:inputText id="wlbs" value="#{encounter.weight }"></h:inputText> lbs
				<br>
				<h3>BMI</h3>
				<h:outputLabel value = "#{encounter.calculatedBMI }"></h:outputLabel>
				

			</div>
			
			<div id = "module" style="float:right">
				<h1>Vitals</h1>
				<h3>Blood Pressure (mmHg)</h3>
				<h:inputText style = "width:60px" id="bpTop"  value="#{encounter.systolicBP }" /> / <h:inputText style = "width:60px" id="bpBottom"  value="#{encounter.diastolicBP }" /> <BR>
				
				<h3>Heart Rate (bpm)</h3>
				<h:inputText id="heartrate"  value="#{encounter.heartRate }" /><br>
				
				<h3>Temperature (C)</h3>
				<h:inputText id="temperature"  value="#{encounter.temperatureC }" /><br>
				
				<h3>Respirations (Breaths per Minute)</h3>
				<h:inputText id="respirations"  value="#{encounter.respRate }" /><br>

				<h3>Oxygen (%)</h3>
				<h:inputText id="oxygen"  value="#{encounter.oximetry }" /><br>
			</div>
		</div>
		
		<div id= "create" style="float:right">
		
			<div id = "module" style="float:left">
				<h1>Complaints and Treatment</h1>
				<h3>Chief Complaint</h3>
				<h:inputTextarea id="primaryComplaint" value="#{encounter.chiefComplaint }" />
				
				<h3>Treatment Given</h3>
				<h:inputTextarea id="treatmentGiven" value="#{encounter.medicalProcedures }" />
				
				<h3>Prescription</h3>
				<h:inputText value="#{encounter.medicationPrescribed1 }"></h:inputText><BR>
				<h:inputText value="#{encounter.medicationPrescribed2 }"></h:inputText><BR>
				<h:inputText value="#{encounter.medicationPrescribed3 }"></h:inputText><BR>
				<h:inputText value="#{encounter.medicationPrescribed4 }"></h:inputText><BR>
				<h:inputText value="#{encounter.medicationPrescribed5 }"></h:inputText><BR>
				
				<h3>Blood Drawn</h3>
				<p>
				<h:selectOneMenu id ="bloodDrawn" value="#{encounter.bloodDrawnStatus }"><f:selectItem itemValue="NULL" itemLabel="- Select -" /><f:selectItem itemValue="Yes" itemLabel="Yes" /><f:selectItem itemValue="No" itemLabel="No" /></h:selectOneMenu><h4>Sample #</h4>&nbsp;<h:inputText value = "#{encounter.bloodSampleID }"></h:inputText>
				</p>
				
				<h3>Other Condition</h3>
				<h:inputText value="#{encounter.condition1 }"></h:inputText><BR>
				<h:inputText value="#{encounter.condition2 }"></h:inputText><BR>
				<h:inputText value="#{encounter.condition3 }"></h:inputText><BR>
				<h:inputText value="#{encounter.condition4 }"></h:inputText><BR>
				<h:inputText value="#{encounter.condition5 }"></h:inputText><BR>
				
			</div>
			
			<div id = "module" style="float:right">
				<h1>Notes</h1>
				<h3>HPI</h3>
				<h4>Onset</h4>&nbsp;<h:inputText style = "width:50px" value="#{encounter.onsetNumber }"></h:inputText>
				<h:selectOneMenu>
					<f:selectItem itemValue="days" itemLabel="days"/>
					<f:selectItem itemValue="weeks" itemLabel="weeks"/>
					<f:selectItem itemValue="months" itemLabel="months"/>
				</h:selectOneMenu> ago<BR>
				
				<h3>Overall Impression</h3>
				<h:inputTextarea id="impression" value="#{encounter.overallImpression }" />
				<h3>Keywords from Previous Encounter</h3>
				<h:inputTextarea id="keywords" value="#{encounter.keywords }" />
				
							
				<h1>Images of condition/illness</h1>
								
				<a href=""><img src="img/nopic.png"></a>
				<a href=""><img src="img/nopic.png"></a>
				<a href=""><img src="img/nopic.png"></a>
				
			</div>
		</div>
		

		
	</div>
	<BR><BR><BR><BR><BR>
	<div id = "footer">
	<h:commandButton id="submit" value="Submit" action="nextPage"></h:commandButton>
    <p><a href="index.jsp">Log out</a></p>
	</div>
</f:view>
</body>