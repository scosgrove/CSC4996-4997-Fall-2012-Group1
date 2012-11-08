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
	});
		</script>
		<script>
		$(function() {
		 $( "#tabs" ).tabs();
	    });
		</script>
		<script>
		$(function() {
		 $( "#tabs2" ).tabs();
	    });
		</script>
		<script>
		$(function() {
		$("#datepicker").datepicker();
           			});
		</script>
		<script>
		$(function() {
	        $( "#accordion" ).accordion();
	        $("#accordion2" ).accordion();
	    });
		</script>
		<script>
		$(function() {
		$("#button").button();
	});
		 </script>
		<script>
	    $(function() {
	        $( "#radio" ).buttonset();
	    });
	   
</script>
<title>Search for or Add a Patient</title>
</head>
<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Simple Entry</a></li>
        <li><a href="#tabs-2">Advanced Entry</a></li>
     
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
					<fieldset>
					
							<table><tr><td>
							
							<h:outputLabel value="First: " styleClass="left-align" ></h:outputLabel>
							<input type="text"   size="20" /></td>
							<td>
							<h:outputLabel value="Last:" styleClass="left-align" ></h:outputLabel>
							<h:inputText size="30"></h:inputText></td>
							
							<td>
							<h:outputLabel value="ID#: " styleClass="left-align"></h:outputLabel>
							<h:inputText size="10"></h:inputText>
							</td></tr>
							</table>
							
							

						<h:panelGrid columns="5">

							<h:outputLabel value="Gender "></h:outputLabel>
							<h:selectOneRadio id="radio">
								<f:selectItem itemLabel="Male" />
								<f:selectItem itemLabel="Female" />
							</h:selectOneRadio>
						</h:panelGrid>
						<h:panelGrid columns="2">
							<h:outputLabel value="Birthdate (Format:mm/dd/yyyy)"></h:outputLabel>
							<input type="text" id="datepicker" />
						</h:panelGrid>

						<h:panelGrid columns="2">

							<h:outputLabel value="City/Town/Village of Residence"></h:outputLabel>
							<h:inputText size="40"></h:inputText>
						</h:panelGrid>

						<h:panelGrid columns="12">

							<h:outputLabel value="Height"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="m"></h:outputLabel>
							<td width="40px"></td>
							<h:outputLabel value="Weight"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="Kg"></h:outputLabel>
							<td width="40px"></td>
							<h:outputLabel value="BMI"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="Kg/m"></h:outputLabel>
						</h:panelGrid>
						</fieldset>
					</div>
				</div>
				<div class="container">
					<div class="left">
						<fieldset><legend>Keywords from Previous Encounters</legend>
								
							
								<h:inputTextarea style="width:250px;height:150px"></h:inputTextarea>
							</fieldset>
					</div>
					<div class="right">
						<fieldset>
						<legend>Vital Signs</legend>
							<h:panelGrid columns="8">

							<h:outputLabel value="BP"></h:outputLabel>
							<td style="width:10px"></td>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="/"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="mmHg"></h:outputLabel>
							
						</h:panelGrid>
						<h:panelGrid columns="8">

							<h:outputLabel value="HR"></h:outputLabel>
							<td style="width:10px"></td>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="BPM"></h:outputLabel>
							<td style="width:160px"></td>
							<h:outputLabel value="RR"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="Breaths/min"></h:outputLabel>
							
						</h:panelGrid>
						<h:panelGrid columns="8">

							<h:outputLabel value="Temp"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="C"></h:outputLabel>
							<td style="width:180px"></td>
							<h:outputLabel value="Ox"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="%"></h:outputLabel>
							
						</h:panelGrid>
						</fieldset>
					</div>
				</div>
				<div class="container">
					<h:panelGrid columns="2">

						<h:outputLabel value="Chief Complaint"></h:outputLabel>
						<h:inputTextarea style="width:700px"></h:inputTextarea>
					</h:panelGrid>
				</div>
				<div class="container">
					<h:panelGrid>

						<h:outputLabel
							value="HPI: Include Onset, Provokes/Palliates, Quality, Radiation, Score, Timing, and anything else"></h:outputLabel>

						<h:inputTextarea style="height:116px;width:900px"></h:inputTextarea>
					</h:panelGrid>
				</div>
				<div class="container">
					<img src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><img
						src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><img
						src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><br>
					<a href="add_photo_page" style="padding-left:20px">New Photo...</a> <br />
					<a href="add_photo_page">Additional Photos...</a>
				</div>
				<div class="container">
					<table>
						<tr>
							<td><h:outputLabel value="Chronic Illnesses:"></h:outputLabel></td>
							<td><h:inputText size="90"></h:inputText></td>
							<td><a href="remove_illness">Remove...</a></td>
						</tr>
						<tr>
							<td colspan="3" align="center"><a href="add_illness">Add...</a></td>
						</tr>
					</table>

				</div>
				<div class="container">
					<table>
						<tr>
							<td><h:outputLabel value="Medical Procedures:"></h:outputLabel></td>
							<td><h:inputText size="90"></h:inputText></td>
							<td><a href="remove procedure">Remove...</a></td>
						</tr>
						<tr>
							<td colspan="3" align="center"><a href="add_procedure">Add...</a></td>
						</tr>
					</table>

				</div>
				<div class="container">
				<h:outputLabel value="Social History and Family History: Include familial illnesses, living situation, occupation"></h:outputLabel>
				<div id="accordion" >						
							<span style="font-size:11pt">Current</span>
						<div>
						<h:inputText style="padding:0;height:80px;width:800px"></h:inputText>
						</div>
						<span style="font-size:11pt">Previous</span>
						<div>
						<h:inputText style="padding:0;height:80px;width:800px"></h:inputText>
						</div>
					
					</div>
				</div>
				<div class="container">
					

						<h:outputLabel value="Prescribed Medicine"></h:outputLabel>
						<div id="tabs2">
   							 <ul>
        						<li><a href="#tabs-1a">Current</a></li>
       							 <li><a href="#tabs-2a">Previous</a></li>
     						    </ul>
    					<div id="tabs-1a">
				
					
						<h:inputText style="padding:0;height:80px;width:800px"></h:inputText>
						</div>
						<div id="tabs-2a">
						<h:inputText style="padding:0;height:80px;width:800px"></h:inputText>
						</div>
						</div>
				</div>
				
				<div class="container">
					<h:panelGrid>

						<h:outputLabel value="Overall Impression for this Visit:"></h:outputLabel>

					<h:inputTextarea style="height:116px;width:900px"></h:inputTextarea>
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
      

						
						

						

					<textarea style="height:116px;width:900px"></textarea>
					
			
    </div>
    </div>
	</div>
</body>
</html>