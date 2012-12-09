<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>


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
		<div id="navigation">
			<img src="img\logo_xl.png" height="60" width="180">
		</div>

		<div id="content">

			<div id="form">
				<h1>Create Reports</h1>
				<h:form >


					<h:outputText value="Select Report Columns: " />


					<h:selectManyCheckbox id="selectedColumns" value="#{researchReportsBean.selectedColumns}" layout="pageDirection">
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
						<td><f:selectItem itemValue="temperatureC" itemLabel="Temperature" /></td>
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
					<td><f:selectItem itemValue="medicationDispensed1" itemLabel="Dispensed 1" /></td>
						<td><f:selectItem itemValue="medicationDispensed2" itemLabel="Dispensed 2" /></td>
					</tr>
					<tr>
					<td><f:selectItem itemValue="medicationDispensed3" itemLabel="Dispensed 3" /></td>
						<td><f:selectItem itemValue="medicationDispensed4" itemLabel="Dispensed 4" /></td>
						<td><f:selectItem itemValue="medicationDispensed5" itemLabel="Dispensed 5" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="FingerPoke" itemLabel="BloodDrawn" /></td>
						<td><f:selectItem itemValue="sampleID" itemLabel="Sample Number" /></td>
					</tr>
					<tr>
					
						<td><f:selectItem itemValue="otherConditions 1" itemLabel="Condition 1 " /></td>
						<td><f:selectItem itemValue="otherConditions 2" itemLabel="Condition 2 " /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="otherConditions 3" itemLabel="Condition 3" /></td>
						<td><f:selectItem itemValue="otherConditions 4" itemLabel="Condition 4" /></td>
					</tr>
					<tr>
						<td><f:selectItem itemValue="otherConditions 5" itemLabel="Condition 5" /></td>
						<td><f:selectItem itemValue="Radiation" itemLabel="Radiation" /></td>
					</tr>
					<tr>
					<td><f:selectItem itemValue="Quality" itemLabel="Quality" /></td>
					<td><f:selectItem itemValue="ProvokesandPalliates" itemLabel="Provokes/Palliates" /></td>
					</tr>
					<tr>
					</h:selectManyCheckbox>
					

					<h:commandButton action="#{researchReportsBean.submit}"
						value="Generate Report" style="width:300px;height:60px"></h:commandButton>​​​​​​​​​​​​
			<br />
					<h:outputText value="#{researchReportsBean.result}"></h:outputText>
				</h:form>

			</div>

			<center>
				<h:form>
					<p>
						<h:commandLink action="#{loginBean.logout}">Log out</h:commandLink>
					</p>
					<p>
					<h:commandLink action="#{userService.switchToUpdateInfo}">Change My Password</h:commandLink>
					</p>
					<p>
						<a href="HelpInformation.pdf">Need Help?</a>
					</p>
				</h:form>
			</center>

		</div>
	</f:view>
</body>
</html>