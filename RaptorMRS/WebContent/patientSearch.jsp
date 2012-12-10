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
	<p><b>Search:</b>&nbsp;&nbsp;First Name <h:inputText id="firstname" value="#{encounterService.searchPatientFirstName }" />&nbsp;&nbsp;<h:commandButton id="searchFirst" value="Search" action="#{encounterService.searchPatientsF }"></h:commandButton>&nbsp;&nbsp;Last Name<h:inputText id="lastname" value="#{encounterService.searchPatientLastName }" />&nbsp;&nbsp;<h:commandButton id="searchLast" value="Search" action="#{encounterService.searchPatients }"></h:commandButton>&nbsp;&nbsp;Patient ID<h:inputText id="patientID" value="#{encounterService.searchPatientId }" />&nbsp;&nbsp;<h:commandButton id="search" value="Search" action="#{encounterService.searchPatient }"></h:commandButton></p>
	</div>
	</center>
	<h:form>
	<h:dataTable value="#{encounterService.patientList}" var="patient" >
      <h:column>
        <%-- Via this facet we define the table header (column 1) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="Patient ID"/>
          </h:column>
        </f:facet>
        <h:outputText value="#{patient.patientID }" />
      </h:column>
      
      <h:column>
        <%-- Via this facet we define the table header (column 2) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="First Name"/>
          </h:column>
        </f:facet>
        <h:outputText value="#{patient.firstName}"/>
      </h:column>
      
      <h:column>
        <%-- Via this facet we define the table header (column 3) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="Last Name"/>
          </h:column>
        </f:facet>
       <h:outputText value="#{patient.lastName}"/>
      </h:column>
     
      <h:column>
        <%-- Via this facet we define the table header (column 4 ) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="Actions"/>
          </h:column>
        </f:facet>  
        <h:panelGrid columns="2">
          <h:commandLink value="Select" action="#{encounterService.selectPatient}">
            <f:setPropertyActionListener target="#{encounterService.patient}" value="#{patient}" />
          </h:commandLink>
       	  
        </h:panelGrid>
      </h:column>
    </h:dataTable>
	</h:form>
			</div>
			

</f:view>
</body>
</html>