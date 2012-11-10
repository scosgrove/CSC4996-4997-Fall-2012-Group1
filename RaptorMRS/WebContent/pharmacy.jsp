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
</head>
<body>
	<div id="wrap">
		<f:view>
			<jsp:directive.include file="header.jsp" />
			
				
				<h:form styleClass="login">
				<fieldset class="login">
				<legend class="login">Search for Patient</legend>
					<h:panelGrid columns="6">
						<h:outputLabel value="First: "></h:outputLabel>
						<h:inputText></h:inputText>
						<h:outputLabel value="Last: "></h:outputLabel>
							<h:inputText></h:inputText>
							<h:outputLabel value="Patient ID: "></h:outputLabel>
							<h:inputText></h:inputText>
						<h:commandButton value="Search"></h:commandButton>
					
						<h:commandButton value="Reset" > </h:commandButton>
						
						
					</h:panelGrid>
					</fieldset>
					<fieldset>
					<h:panelGrid columns="6">
                       <h:column>
                          <h:outputText value="Select Medication: "/>
                          <h:selectManyMenu style="height:100;" >
                              <f:selectItem itemLabel="Aspirin" itemValue="aspirin" />
                              <f:selectItem itemLabel="Tylenol" itemValue="tylenol"/>
                              <f:selectItem itemLabel="Morphine" itemValue="morphine"/>
                          </h:selectManyMenu>
                      </h:column>
                       <h:column>
                          <h:outputText value="Select Dosage : "/>
                          <h:selectManyMenu style="height:100;" >
                              <f:selectItem itemLabel="200" itemValue="200" />
                              <f:selectItem itemLabel="400" itemValue="200"/>
                          </h:selectManyMenu>
                      </h:column>
                      <h:column>
                          <h:outputText value="Select Measure: "/>
                          <h:selectManyMenu style="height:100;" >
                              <f:selectItem itemLabel="mg" itemValue="mg" />
                              <f:selectItem itemLabel="g" itemValue="g"/>
                          </h:selectManyMenu>
                      </h:column>
 
                      <h:column>
                          <h:commandButton value="Submit" action="#{selectManyMenuBean.submit}"/>
                      </h:column>
                  </h:panelGrid>
                  </fieldset>
					
				</h:form>
					</f:view>
	</div>
</body>
</html>