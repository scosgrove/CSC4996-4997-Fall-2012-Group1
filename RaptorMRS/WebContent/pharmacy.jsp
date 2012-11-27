<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/styles.css" />
<link rel="stylesheet" href="http://localhost:8080/RaptorMRS/faces/jquery-ui-1.9.1.custom.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pharmacy Entry</title>
<script>
		$(function() {
		$("input[type=submit]").button();
	});
</script>
<script type="text/javascript">
function clock() {
	   var now = new Date();
	   var outStr = 'Time: ' + now.getHours()+' hr';
	   document.getElementById('clockDiv').innerHTML = outStr;
	   var displayDate = 'Date: ' + (now.getMonth()+1) + '/' + (now.getDate()) + '/' + now.getFullYear();
	   document.getElementById('currentDate').innerHTML = displayDate;
	   setTimeout('clock()',1000);
	}
	clock();

</script>
</head>
<body onload="clock();">
	<div class="wrapper">
		<f:view>
			<jsp:directive.include file="header.jsp" />
			
				<div class="content">
				<div class="pharmPanel">
				<h:form >
				<fieldset>
								<legend>Search/Add Patient</legend>


								<h:panelGroup layout="block" styleClass="row">
									<h:panelGroup layout="block" styleClass="first">
										<h:outputLabel value="First:"></h:outputLabel>
										<h:inputText size="15"></h:inputText>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="last">
										<h:outputLabel value="Last:"></h:outputLabel>
										<h:inputText></h:inputText>
									</h:panelGroup>

									<h:panelGroup layout="block" styleClass="residence">
										<h:outputLabel value="Residence:"></h:outputLabel>
										<h:inputText styleClass="residence"></h:inputText>
									</h:panelGroup>
								</h:panelGroup>
								<div style="height:30px"><br /></div>
								<h:panelGroup layout="block" styleClass="row">
									<h:panelGroup layout="block" styleClass="age">
										<h:outputLabel value="Age/Birthdate: "></h:outputLabel>
										<h:inputText></h:inputText>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="gender">
										<h:outputLabel value="Gender: "></h:outputLabel>
										<h:selectOneRadio id="radio" styleClass="genderOptions">

											<f:selectItem itemLabel="Male" />
											<f:selectItem itemLabel="Female" />

										</h:selectOneRadio>

									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="id">
										<h:outputLabel value="ID#: "></h:outputLabel>
										<h:inputText></h:inputText>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="searchButton">
										<input type="submit" value="Search" id="button">
									</h:panelGroup>
								</h:panelGroup>


							</fieldset>
					<fieldset class="admin">
				<legend>Prescribed Medication</legend>
					<h:panelGroup layout="block" styleClass="row">
				<h:panelGroup layout="block" styleClass="pharm">
										<h:outputLabel value="Medication:"></h:outputLabel>
										
										<h:selectOneMenu>
											<f:selectItem itemLabel="Aspirin" itemValue="aspirin" />
                              <f:selectItem itemLabel="Tylenol" itemValue="tylenol"/>
                              <f:selectItem itemLabel="Morphine" itemValue="morphine"/>

										</h:selectOneMenu>
									</h:panelGroup>
										<h:panelGroup layout="block" styleClass="pharm">
										<h:outputLabel value="Dosage:"></h:outputLabel>
									
										<h:selectOneMenu>
											 <f:selectItem itemLabel="200" itemValue="200" />
                              <f:selectItem itemLabel="400" itemValue="400"/>
                               <f:selectItem itemLabel="600" itemValue="600"/>

										</h:selectOneMenu>
									</h:panelGroup>
										<h:panelGroup layout="block" styleClass="pharm">
										<h:outputLabel value="Measure: "></h:outputLabel>
									
										<h:selectOneMenu>
										<f:selectItem itemLabel="mg" itemValue="mg" />
                              <f:selectItem itemLabel="g" itemValue="g"/>
                              <f:selectItem itemLabel="mL" itemValue="ml"/>

										</h:selectOneMenu>
									</h:panelGroup>
									</h:panelGroup>
					
                          
                          <h:commandButton value="Submit" action="#{selectManyMenuBean.submit}"/>
                     
                  </fieldset>
					
				</h:form>
				</div>
					</f:view></div>
	</div>
</body>
</html>