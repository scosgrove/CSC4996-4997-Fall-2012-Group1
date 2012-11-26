drop database raptor;

create database raptor;  

use raptor;

 CREATE TABLE `PHARMACY`(
       `encounterID` int(10) unsigned zerofill NOT NULL,
       `medPrescribed1` varchar(55),
       `medPrescribed2` varchar(55),
       `medPrescribed3` varchar(55),
       `medPrescribed4` varchar(55),
       `medPrescribed5` varchar(55),
       `medDispensed1` varchar(55),
       `medDispensed2` varchar(55),
       `medDispensed3` varchar(55),
       `medDispensed4` varchar(55),
       `medDispensed5` varchar(55),
       `equalPrescribed1` bit,
       `equalPrescribed2` bit,
       `equalPrescribed3` bit,
       `equalPrescribed4` bit,
       `equalPrescribed5` bit,
       `creatingUser` varchar(55),
       `createdDate` datetime,
       PRIMARY KEY(`encounterID`),
       UNIQUE KEY `encounterID_UNIQUE` (`encounterID`)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 CREATE TABLE `ENCOUNTERS` (
       `encounterID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
       `patientID` int(10) unsigned zerofill NOT NULL,
       `chiefComplaint` varchar(55),
       `onsetNumber` int(10),
       `onsetUnit` int(10),
       `condition1` varchar(55),
       `condition2` varchar(55),
       `condition3` varchar(55),
       `condition4` varchar(55),
       `condition5` varchar(55),
       `overallImpression` varchar(55),
       `keywords` varchar(55),
       `medicalProcedures` varchar(55),
       `creatingUser` varchar(55),
       `createdDate` datetime,
       `modifyingUser` varchar(55),
       `lastModifiedDate` datetime,
       PRIMARY KEY (`encounterID`),
       UNIQUE KEY `encounterID_UNIQUE` (`encounterID`)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 CREATE TABLE `PATIENTS` (
       `patientID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
       `firstName` varchar(55) NOT NULL,
       `lastName` varchar(55),  
       `birthDate` date DEFAULT NULL,
       `gender` varchar(15),
       `keywords` varchar(55),
       `residence` varchar(55),
       `historyOfPresentIllness` varchar(55),
       `socialHistory` varchar(55),
       `creatingUser` varchar(55) DEFAULT NULL,  
       `createdDate` datetime DEFAULT NULL,
       `modifyingUser` varchar(55) DEFAULT NULL,
       `lastModifiedDate` datetime DEFAULT NULL,
       PRIMARY KEY (`patientID`),
       UNIQUE KEY `patientID_UNIQUE` (`patientID`)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 
CREATE TABLE `USERS` (
	  `userID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
	  `firstName` varchar(55) NOT NULL,
	  `lastName` varchar(55) NOT NULL,
	  `userName` varchar(55) NOT NULL,
	  `password` varchar(55) NOT NULL,
	  `roles` varchar(55) NOT NULL,
	  `creatingUser` varchar(55) DEFAULT NULL,
	  `createdDate` datetime DEFAULT NULL,
	  `modifyingUser` varchar(55) DEFAULT NULL,
	  `lastModifiedDate` datetime DEFAULT NULL,
	  PRIMARY KEY (`userID`),
	  UNIQUE KEY `userID_UNIQUE` (`userID`),
	  UNIQUE KEY `username_UNIQUE` (`userName`),
	) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8;

 
 CREATE TABLE `VITALS` (
       `vitalsID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
       `encounterID` int(10) unsigned zerofill NOT NULL,
       `systolicBP` int(10) unsigned DEFAULT NULL,
       `diastolicBP` int(10) unsigned DEFAULT NULL,
       `heartRate` int(10) unsigned DEFAULT NULL,
       `respRate` int(10) unsigned DEFAULT NULL,
       `temperatureC` int(10) unsigned DEFAULT NULL,
       `oximetry` int(10) unsigned DEFAULT NULL,
       `fingerPoke` bit(1) DEFAULT NULL,
       `bloodSampleID` int(10) unsigned zerofill DEFAULT NULL,
       `height` int(10) unsigned DEFAULT NULL,
       `weight` int(10) unsigned DEFAULT NULL,
       `calculatedBMI` int(10) unsigned DEFAULT NULL,
       `creatingUser` varchar(55),  
       `createdDate` datetime ,
       `modifyingUser` varchar(55),
       `lastModifiedDate` datetime,
       PRIMARY KEY (`vitalsID`),
       UNIQUE KEY `encounterID_UNIQUE` (`encounterID`),
       UNIQUE KEY `vitalsID_UNIQUE` (`vitalsID`),
       UNIQUE KEY `bloodSampleID_UNIQUE` (`bloodSampleID`)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
     
     insert into raptor.USERS (userID, firstName, lastName, userName, password, roles) values (123, 'bob', 'bobson', 'admin', 'raptor','System Administrator');
     insert into raptor.USERS (userID, firstName, lastName, userName, password, roles) values (234, 'jim', 'jimerson', 'student', 'student','Medical Student');
	 insert into raptor.USERS (userID, firstName, lastName, userName, password, roles) values (345, 'frank', 'frankfurter', 'pharm', 'pharm','Pharmacist');
	 insert into raptor.USERS (userID, firstName, lastName, userName, password, roles) values (345, 'sample', 'mcTest', 'research', 'research','Researcher');

     