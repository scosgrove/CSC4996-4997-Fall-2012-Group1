<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="t"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="main.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Easy EMR - Create Reports</title>
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

			<div id="form">
				<h1>Create Reports</h1>
				<h:form >


					<h:outputText value="Select Report Columns: " />


					<t:selectManyCheckbox layoutWidth="3" id="selectedColumns" value="#{researchReportsBean.selectedColumns}" layout="pageDirection">
					<tr>
						<td><f:selectItem itemValue="residence" itemLabel="Village/Town/City" /></td>
						<td><f:selectItem itemValue="birthDate" itemLabel="Birthdate" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="gender" itemLabel="Gender" /></td>
						<td><f:selectItem itemValue="height" itemLabel="Height" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="weight" itemLabel="Weight" /></td>
						<td><f:selectItem itemValue="calculatedBMI" itemLabel="BMI" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="systolicBP" itemLabel="Blood Pressure" /></td>
						<td><f:selectItem itemValue="heartRate" itemLabel="Heart Rate" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="temperatureF" itemLabel="Temperature" /></td>
						<td><f:selectItem itemValue="respRate" itemLabel="Respirations" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="oximetry" itemLabel="Oxygen" /></td>
						<td><f:selectItem itemValue="chiefComplaint" itemLabel="Chief Complaint" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="medicalProcedures" itemLabel="Treatment Given" /></td>
						<td><f:selectItem itemValue="medicationPrescribed1" itemLabel="Prescribed 1" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="medicationPrescribed2" itemLabel="Prescribed 2" /></td>
						<td><f:selectItem itemValue="medicationPrescribed3" itemLabel="Prescribed 3" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="medicationPrescribed4" itemLabel="Prescribed 4" /></td>
						<td><f:selectItem itemValue="medicationPrescribed5" itemLabel="Prescribed 5" /></td>
					</tr>
					<tr>
					<td><f:selectItem itemValue="medDispensed1" itemLabel="Dispensed 1" /></td>
						<td><f:selectItem itemValue="medDispensed2" itemLabel="Dispensed 2" /></td>
					</tr>
					<tr>
					<td><f:selectItem itemValue="medDispensed3" itemLabel="Dispensed 3" /></td>
						<td><f:selectItem itemValue="medDispensed4" itemLabel="Dispensed 4" /></td>
						<td><f:selectItem itemValue="medDispensed5" itemLabel="Dispensed 5" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="fingerPoke" itemLabel="BloodDrawn" /></td>
						<td><f:selectItem itemValue="bloodSampleID" itemLabel="Sample Number" /></td>
					</tr>
					<tr>
					
						<td><f:selectItem itemValue="condition1" itemLabel="Condition 1 " /></td>
						<td><f:selectItem itemValue="condition2" itemLabel="Condition 2 " /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="condition3" itemLabel="Condition 3" /></td>
						<td><f:selectItem itemValue="condition4" itemLabel="Condition 4" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="condition5" itemLabel="Condition 5" /></td>
						<td><f:selectItem itemValue="radiation" itemLabel="Radiation" /></td>
					</tr>
					<tr>
					<td><f:selectItem itemValue="quality" itemLabel="Quality" /></td>
					<td><f:selectItem itemValue="provokes" itemLabel="Provokes/Palliates" /></td>
					</tr>
					<tr>
					</t:selectManyCheckbox>
					

					<h:commandButton action="#{researchReportsBean.submit}"
						value="Generate Report" style="width:300px;height:60px;margin-top:20px"></h:commandButton>​​​​​​​​​​​​
			<br />
					<h:outputText value="#{researchReportsBean.result}"></h:outputText>
				</h:form>

			</div>

			<center>
				<a href="HelpInformation.pdf">Need Help?</a>
			</center>

		</div>
	</f:view>
</body>
</html>