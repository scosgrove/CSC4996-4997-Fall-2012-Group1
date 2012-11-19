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
	href="http://localhost:8080/RaptorMRS/faces/jquery-ui-1.9.1.custom.css" />
<link rel="stylesheet"
	href="http://localhost:8080/RaptorMRS/faces/styles.css" />

<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script type="text/javascript">
	function clock() {
		var now = new Date();
		var outStr = 'Time: ' + now.getHours() + ' hr';
		document.getElementById('clockDiv').innerHTML = outStr;
		var displayDate = 'Date: ' + (now.getMonth() + 1) + '/'
				+ (now.getDate()) + '/' + now.getFullYear();
		document.getElementById('currentDate').innerHTML = displayDate;
		setTimeout('clock()', 1000);
	}
	clock();
	</script>
	
<script>
    $(function() {
        $( "#tabs" ).tabs();
 
        // fix the classes
        $( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *" )
            .removeClass( "ui-corner-all ui-corner-top" )
            .addClass( "ui-corner-bottom" );
 
        // move the nav to the bottom
        $( ".tabs-bottom .ui-tabs-nav" ).appendTo( ".tabs-bottom" );
    });
    </script>
    


<script>
	$(function() {
		$("#accordion").accordion();
		$("#accordion2").accordion();
	});
</script>
<script>
	$(function() {
		$("#button").button();
	});
</script>
<script>
    $(function() {
        $( "input[type=submit], button" )
            .button()
            .click(function( event ) {
                event.preventDefault();
            });
    });
    </script>
<script>
	$(function() {
		$("#radio").buttonset();
	});
</script>

<title>Search for or Add a Patient</title>
<style>
    /* force a height so the tabs don't jump as content height changes */
    #tabs .tabs-spacer { float: left; height: 2px; }
    .tabs-bottom .ui-tabs-nav { clear: left; padding: 0 1px 1px 1px; }
    .tabs-bottom .ui-tabs-nav li { top: auto; bottom: 0; margin: 0 1px 1px 0; border-bottom: auto; border-top: 0; }
    .tabs-bottom .ui-tabs-nav li.ui-tabs-active { margin-top: -1px; padding-top: 1px; }
    </style>
</head>
<body onload="clock();">

	<f:view>
		<h:form>
			<div class="wrapper">
				<%@ include file="header.jsp"%>
				<div class="content">

<div id="tabs" class="tabs-bottom">
    <ul>
        <li><a href="#tabs-1">Main</a></li>
        <li><a href="#tabs-2">Additional Information</a></li>
 
    </ul>
    <div class="tabs-spacer"></div>
    <div id="tabs-1">


					<div class="container">
						<div class="left">
							<img src="http://localhost:8080/RaptorMRS/faces/placeholder.png" /><br>
							<a href="add_photo_page">Add/Update Photo...</a>
						</div>

						<div class="right">
							<fieldset>
								<legend>Search/Add Patient</legend>


								<h:panelGroup layout="block" styleClass="row">
									<h:panelGroup layout="block" styleClass="first">
										<h:outputLabel value="First:"></h:outputLabel>
										<h:inputText size="15" id="focus" value="#{patientData.firstName}"></h:inputText>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="last">
										<h:outputLabel value="Last:"></h:outputLabel>
										<h:inputText value="#{patientData.lastName}"></h:inputText>
									</h:panelGroup>

									<h:panelGroup layout="block" styleClass="residence">
										<h:outputLabel value="Residence:"></h:outputLabel>
										<h:inputText styleClass="residence" value="#{patientData.residence}"></h:inputText>
									</h:panelGroup>
								</h:panelGroup>
								<div style="height:30px"><br /></div>
								<h:panelGroup layout="block" styleClass="row">
									<h:panelGroup layout="block" styleClass="age">
										<h:outputLabel value="Age/Birthdate: "></h:outputLabel>
										<h:inputText value="#{patientData.birthDate}"></h:inputText>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="gender">
										<h:outputLabel value="Gender: "></h:outputLabel>
										<h:selectOneRadio id="radio" styleClass="genderOptions" value="#{patientData.gender}">

											<f:selectItem itemLabel="Male" />
											<f:selectItem itemLabel="Female" />

										</h:selectOneRadio>

									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="id">
										<h:outputLabel value="ID#: "></h:outputLabel>
										<h:inputText value="#{patientData.patientID}"></h:inputText>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="searchButton">
										<input type="submit" value="Search" id="button">
									</h:panelGroup>
								</h:panelGroup>


							</fieldset>

							<fieldset>
								<legend>Vitals</legend>
								<h:panelGroup layout="block" styleClass="row">
									<h:panelGroup layout="block" styleClass="height">
										<h:outputLabel value="Height:"></h:outputLabel>
										<h:inputText value="#{patientData.height}"></h:inputText>
										<h:selectOneMenu tabindex="-1">
											<f:selectItem itemValue="height_m" itemLabel="m" />
											<f:selectItem itemValue="height_ft" itemLabel="ft" />

										</h:selectOneMenu>
									</h:panelGroup>

									<h:panelGroup layout="block" styleClass="weight">
										<h:outputLabel value="Weight:"></h:outputLabel>
										<h:inputText value="#{patientData.weight}"></h:inputText>
										<h:selectOneMenu tabindex="-1">
											<f:selectItem itemValue="weight_kg" itemLabel="kg" />
											<f:selectItem itemValue="weight_lbs" itemLabel="lbs" />

										</h:selectOneMenu>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="bmi">
										<h:outputLabel value="BMI:"></h:outputLabel>
										<h:inputText value="#{patientData.patientBMI}"></h:inputText>
										<h:selectOneMenu tabindex="-1">
											<f:selectItem itemValue="bmi_kg" itemLabel="kg/m" />
											<f:selectItem itemValue="bmi_ft" itemLabel="lbs/f" />

										</h:selectOneMenu>
									</h:panelGroup>

									<h:panelGroup layout="block" styleClass="temp">
										<h:outputLabel value="Temp: "></h:outputLabel>
										<h:inputText value="#{vitals.temperatureC}"></h:inputText>
										<h:selectOneMenu tabindex="-1">
											<f:selectItem itemValue="temp_c" itemLabel="C" />
											<f:selectItem itemValue="temp_f" itemLabel="F" />

										</h:selectOneMenu>
									</h:panelGroup>
									<h:panelGroup layout="block" styleClass="bloodDrawn">
										<h:outputLabel value="Blood Drawn: "></h:outputLabel>
										<h:selectBooleanCheckbox value="#{vitals.fingerPoke}"></h:selectBooleanCheckbox>
										<h:inputText size="3" value="#{vitals.bloodSampleID}"></h:inputText>
									</h:panelGroup>


								</h:panelGroup>
<div style="height:30px"><br /></div>
								<h:panelGroup layout="block" styleClass="rowPadded">
								
									<h:panelGroup layout="block" styleClass="bp">
										<h:outputLabel value="BP: "></h:outputLabel>
										<h:inputText value="#{vitals.systolicBP}"></h:inputText>
										<h:outputLabel value="/"></h:outputLabel>
										<h:inputText value="#{vitals.diastolicBP}"></h:inputText>
										<h:outputLabel value="mmHg"></h:outputLabel>
									</h:panelGroup>
									
									<h:panelGroup layout="block" styleClass="hr">
										<h:outputLabel value="HR: "></h:outputLabel>
										<h:inputText value="#{vitals.heartRate}"></h:inputText>
										<h:outputLabel value="BPM"></h:outputLabel>
									</h:panelGroup>
									
									<h:panelGroup layout="block" styleClass="rr">
										<h:outputLabel value="RR: "></h:outputLabel>
										<h:inputText value="#{vitals.respRate}"></h:inputText>
										<h:outputLabel value="Breaths/min"></h:outputLabel>
									</h:panelGroup>
									
									<h:panelGroup layout="block" styleClass="ox">
										<h:outputLabel value="Ox: "></h:outputLabel>
										<h:inputText value="#{vitals.oximetry}"></h:inputText>
										<h:outputLabel value="%"></h:outputLabel>
									</h:panelGroup>

								</h:panelGroup>

							</fieldset>



						</div>
					</div>
					<h:panelGroup layout="block" styleClass="row">
						<h:panelGroup layout="block" styleClass="chiefComplaint">
							<h:outputLabel value="Chief Complaint"></h:outputLabel>
							<h:inputTextarea value="#{encounter.chiefComplaint}"></h:inputTextarea>
						</h:panelGroup>

						<h:panelGroup layout="block" styleClass="keywords">
							<h:outputLabel value="Keywords from Previous Encounters"></h:outputLabel>
							<h:inputTextarea tabindex="-1" value="#{encounter.keywords}"></h:inputTextarea>
						</h:panelGroup>

					</h:panelGroup>

					<h:panelGroup layout="block" styleClass="row2">
						<h:panelGroup layout="block" styleClass="hpi">

							<h:outputLabel
								value="HPI: Include Onset, Provokes/Palliates, Quality, Radiation, Score, and Timing"></h:outputLabel>

							<h:inputTextarea value="#{encounter.historyOfPresentIllness}"></h:inputTextarea>
						</h:panelGroup> 
						<h:panelGroup layout="block" styleClass="additionalImages" >
						
								<img src="http://localhost:8080/RaptorMRS/faces/deformity.png" class="left" style="margin-top:15px;margin-left:23px;margin-bottom:10px;" />
								<img src="http://localhost:8080/RaptorMRS/faces/deformity.png" class="left" style="margin-top:15px;margin-left:5px;margin-bottom:10px"/>
								<img src="http://localhost:8080/RaptorMRS/faces/deformity.png" class="left" style="margin-top:15px;margin-left:5px;margin-bottom:10px"/>
								<div style="imgLinks">
									<a href="add_photo_page" class="imgLinks" tabindex="-1">Add Images...</a>
									<a href="add_photo_page" class="imgLinks" tabindex="-1">Edit Images...</a>
									
							</div>
						</h:panelGroup>
					</h:panelGroup>
					
					<h:panelGroup layout="block" styleClass="row">
						<h:panelGroup layout="block" styleClass="overall">
							<h:outputLabel value="Prescribed Medicine: "></h:outputLabel>

							<h:inputTextarea value="#{encounter.medsPrescribed}"></h:inputTextarea>

						</h:panelGroup>

						
					</h:panelGroup>
					<h:panelGroup layout="block" styleClass="row">
						<h:panelGroup layout="block" styleClass="overall">
							<h:outputLabel value="Overall Impression for this Visit: "></h:outputLabel>

							<h:inputTextarea value="#{encounter.overallImpression}"></h:inputTextarea>
						</h:panelGroup>
					</h:panelGroup>
					<form>
				
					
							<input type="submit" value="Finish" id="button"
								style="width: 150px">
						
					</form>
</div>
	<div id="tabs-2">
	<div style="padding-bottom:20px;margin-bottom:20px">
	<h:panelGroup layout="block" styleClass="row">
						<h:panelGroup layout="block" styleClass="overall">
							<h:outputLabel value="Previously Prescribed Medicine: "></h:outputLabel>

							<h:inputTextarea></h:inputTextarea>

						</h:panelGroup>
						</h:panelGroup>
						<h:panelGroup layout="block" styleClass="row">
						<h:panelGroup layout="block" styleClass="overall">
							<h:outputLabel value="Social History: "></h:outputLabel>

							<h:inputTextarea value="#{patientData.socialHistory}"></h:inputTextarea>

						</h:panelGroup>
						</h:panelGroup>
						<h:panelGroup layout="block" styleClass="row">
						<h:panelGroup layout="block" styleClass="overall2">
							<h:outputLabel value="Chronic Illnesses: "></h:outputLabel>

							<h:inputTextarea value="#{encounter.chronicIllness}"></h:inputTextarea>

						</h:panelGroup>
						</h:panelGroup>
					</div>
						</div>
	</div>

				</div>

			</div>


		</h:form>
	</f:view>
	
</body>
</html>