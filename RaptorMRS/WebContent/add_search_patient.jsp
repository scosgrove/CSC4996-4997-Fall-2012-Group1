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
<script>
	$(function() {
		var availableTags = [ "Marek", "Clinton", "Alex", "Jackson", "Sarah",
				"Ramez" ];
		$("#autocomplete").autocomplete({
			source : availableTags
		});
		</script>
		<script>
		$(function() {
		 $( "#tabs" ).tabs();
	    });
		</script>
		<script>
		$(function() {
		$("#datepicker").datepicker({
			inline : true
		});
		</script>
		<script>
		$(function() {
	        $( "#accordion" ).accordion();
	    });
		</script>
		<script>
		$(function() {
		$("#button").button();
	});
</script>
<title>Search for or Add a Patient</title>
</head>
<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Simple</a></li>
        <li><a href="#tabs-2">Advanced</a></li>
     
    </ul>
    <div id="tabs-1">
		<f:view>
			<h:form>
				<div class="container">
					<div class="left">
						<img src="http://localhost:8080/RaptorMRS/faces/recent.png" /><br>
						<a href="add_photo_page">New Photo...</a>
					</div>
					
					<div class="right">
						<h:panelGrid columns="7">
							<h:outputLabel value="Name: "></h:outputLabel>
							<input id="autocomplete" />

							<h:inputText></h:inputText>

							<h:inputText size="5" title="ID#"></h:inputText>
						</h:panelGrid>


						<h:panelGrid columns="5">

							<h:outputLabel value="Gender "></h:outputLabel>
							<h:selectOneRadio>
								<f:selectItem itemLabel="Male" />
								<f:selectItem itemLabel="Female" />
							</h:selectOneRadio>
						</h:panelGrid>
						<h:panelGrid columns="2">
							<h:outputLabel value="Birthdate (Format:dd/mm/yyyy)"></h:outputLabel>
							<input type="text" id="datepicker" />
						</h:panelGrid>

						<h:panelGrid columns="2">

							<h:outputLabel value="City/Town/Village of Residence"></h:outputLabel>
							<h:inputText></h:inputText>
						</h:panelGrid>

						<h:panelGrid columns="8">

							<h:outputLabel value="Height"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="Weight"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="BMI"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
						</h:panelGrid>

					</div>
				</div>
				<div class="container">
					<div class="left">
						<table style="width: 250px">
							<tr>
								<td colspan="2">Keywords from prior visits</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
					<div class="right">
						<table>
							<tr>
								<td colspan="7">Vital Signs</td>
							</tr>
							<tr>
								<td>BP:</td>
								<td></td>
								<td>/</td>
								<td>mmHg</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>

							<tr>
								<td>HR:</td>
								<td></td>
								<td>BPM</td>
								<td></td>
								<td>RR:</td>
								<td></td>
								<td>Breaths/min</td>
							</tr>

						</table>
					</div>
				</div>
				<div class="container">
					<h:panelGrid columns="2">

						<h:outputLabel value="Chief Complaint"></h:outputLabel>
						<h:inputText style="width: 670px; "></h:inputText>
					</h:panelGrid>
				</div>
				<div class="container">
					<h:panelGrid>

						<h:outputLabel
							value="HPI: Include Onset, Provokes/Palliates, Quality, Radiation, Score, Timing, and anything else"></h:outputLabel>

						<textarea style="width: 790px;"></textarea>
					</h:panelGrid>
				</div>
				<div class="container">
					<img src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><img
						src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><img
						src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><img
						src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><br>
					<a href="add_photo_page">New Photo...</a> <br />
					<a href="add_photo_page">Additional Photos...</a>
				</div>
				<div class="container">
					<table>
						<tr>
							<td><h:outputLabel value="Chronic Illnesses:"></h:outputLabel></td>
							<td><h:inputText style="width: 620px; "></h:inputText></td>
							<td><a href="remove_illness">Remove...</a></td>
						</tr>
						<tr>
							<td colspan="3" align="right"><a href="add_illness">Add...</a></td>
						</tr>
					</table>

				</div>
				<div class="container">
					<table>
						<tr>
							<td><h:outputLabel value="Medical Procedures:"></h:outputLabel></td>
							<td><h:inputText style="width: 620px; "></h:inputText></td>
							<td><a href="remove procedure">Remove...</a></td>
						</tr>
						<tr>
							<td colspan="3" align="right"><a href="add_procedure">Add...</a></td>
						</tr>
					</table>

				</div>
				<div class="container">
				<h:outputLabel
							value="Social History and Family History: Include familial illnesses, living situation, occupation"></h:outputLabel>
				<div id="accordion" style="width: 790px;">						
							<h3>Current</h3>
						<div>
						<textarea style="width: 690px;">Current social/family history</textarea>
						</div>
						<h3>Previous</h3>
						<div>
						<textarea style="width: 690px;">Previous social/family history</textarea>
						</div>
					
					</div>
				</div>
				<div class="container">
					<h:panelGrid>

						<h:outputLabel value="Previously Provided Meds"></h:outputLabel>

						<textarea style="width: 790px;"></textarea>
					</h:panelGrid>
				</div>
				<div class="container">
					<h:panelGrid columns="2">

						<h:outputLabel value="Meds/Items Provided"></h:outputLabel>
						<h:inputText style="width: 670px; "></h:inputText>
					</h:panelGrid>
					<span style="align: right"><a href="add_meds">Add...</a></span>
				</div>
				<div class="container">
					<h:panelGrid>

						<h:outputLabel value="Overall Impression for this Visit:"></h:outputLabel>

						<textarea style="width: 790px;"></textarea>
					</h:panelGrid>
				</div>
				<form>
					<div style="align: center">
						<input type="submit" value="Finish" id="button" style="width: 150px">
					</div>
				</form>
			</h:form>



		</f:view>
		</div>
		<div id="tabs-2">
        <p><h3>Additional Information</h3>

						
						<textarea style="width: 790px;"></textarea>
				</p>
    </div>
    </div>
	</div>
</body>
</html>