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


					<h:selectManyCheckbox id="selectedColumns"
						value="#{researchReportsBean.selectedColumns}" layout="pageDirection">
		
						<f:selectItem itemValue="residence"
							itemLabel="Village/Town/City" />
						<f:selectItem itemValue="birthDate" itemLabel="Birthdate" />
						<f:selectItem itemValue="gender" itemLabel="Gender" />
						<f:selectItem itemValue="height" itemLabel="Height" />
						<f:selectItem itemValue="weight" itemLabel="Weight" />

						<f:selectItem itemValue="calculatedBMI" itemLabel="BMI" />

						<f:selectItem itemValue="systolicBP"
							itemLabel="Blood Pressure" />
						<f:selectItem itemValue="heartRate" itemLabel="Heart Rate" />
						<f:selectItem itemValue="temperatureC" itemLabel="Temperature" />
						<f:selectItem itemValue="respRate" itemLabel="Respirations" />
						<f:selectItem itemValue="oximetry" itemLabel="Oxygen" />
						<f:selectItem itemValue="chiefComplaint"
							itemLabel="Chief Complaint" />
						<f:selectItem itemValue="medicalProcedures"
							itemLabel="Treatment Given" />
						<f:selectItem itemValue="medicationPrescribed1"
							itemLabel="Prescribed 1" />
						<f:selectItem itemValue="medicationPrescribed2"
							itemLabel="Prescribed 2" />
						<f:selectItem itemValue="medicationPrescribed3"
							itemLabel="Prescribed 3" />
						<f:selectItem itemValue="medicationPrescribed4"
							itemLabel="Prescribed 4" />
						<f:selectItem itemValue="medicationPrescribed5"
							itemLabel="Prescribed 5" />

					</h:selectManyCheckbox>
					<br />
					<h3>Sort By</h3>
				<h:selectOneMenu id ="sortBy" value="#{researchReportsBean.sortByColumn }">
				   	<f:selectItem itemValue="NULL" itemLabel="- Select -" />
				  	<f:selectItem itemValue="residence"
							itemLabel="Village/Town/City" />
						<f:selectItem itemValue="birthDate" itemLabel="Birthdate" />
						<f:selectItem itemValue="gender" itemLabel="Gender" />
						<f:selectItem itemValue="height" itemLabel="Height" />
						<f:selectItem itemValue="weight" itemLabel="Weight" />

						<f:selectItem itemValue="calculatedBMI" itemLabel="BMI" />

						<f:selectItem itemValue="systolicBP"
							itemLabel="Blood Pressure" />
						<f:selectItem itemValue="heartRate" itemLabel="Heart Rate" />
						<f:selectItem itemValue="temperatureC" itemLabel="Temperature" />
						<f:selectItem itemValue="respRate" itemLabel="Respirations" />
						<f:selectItem itemValue="oximetry" itemLabel="Oxygen" />
						<f:selectItem itemValue="chiefComplaint"
							itemLabel="Chief Complaint" />
						<f:selectItem itemValue="medicalProcedures"
							itemLabel="Treatment Given" />
						<f:selectItem itemValue="medicationPrescribed1"
							itemLabel="Prescribed 1" />
						<f:selectItem itemValue="medicationPrescribed2"
							itemLabel="Prescribed 2" />
						<f:selectItem itemValue="medicationPrescribed3"
							itemLabel="Prescribed 3" />
						<f:selectItem itemValue="medicationPrescribed4"
							itemLabel="Prescribed 4" />
						<f:selectItem itemValue="medicationPrescribed5"
							itemLabel="Prescribed 5" />

				</h:selectOneMenu>

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
						<a href="HelpInformation.pdf">Need Help?</a>
					</p>
				</h:form>
			</center>

		</div>
	</f:view>
</body>
</html>