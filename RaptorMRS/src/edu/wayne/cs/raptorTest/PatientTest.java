package edu.wayne.cs.raptorTest;

import static org.junit.Assert.*;
import edu.wayne.cs.raptor.*;

import org.junit.Test;

public class PatientTest {
	
	Patient patient = new Patient();

	@Test
	public void testSetAndGetPatientID() {
		int expectedID = 11233;
		int actualID;
		this.patient.setPatientID(expectedID);
		actualID = this.patient.getPatientID();
		assert(expectedID == actualID);
	}

	@Test
	public void testSetAndGetFirstName() {
		String expectedFN = "derp";
		String actualFN;
		this.patient.setFirstName(expectedFN);
		actualFN = this.patient.getFirstName();
		assert(expectedFN == actualFN);
	}

	@Test
	public void testSetAndGetLastName() {
		String expectedLN = "ferp";
		String actualLN;
		this.patient.setLastName(expectedLN);
		actualLN = this.patient.getLastName();
		assert(expectedLN == actualLN);
	}

	@Test
	public void testSetAndGetGender() {
		String expectedGender = "dinosaur";
		String actualGender;
		this.patient.setGender(expectedGender);
		actualGender = this.patient.getGender();
		assert(expectedGender == actualGender);
	}

	@Test
	public void testSetAndGetResidence() {
		String expectedResidence = "mars";
		String actualResidence;
		this.patient.setResidence(expectedResidence);
		actualResidence = this.patient.getResidence();
		assert(expectedResidence == actualResidence);
	}

	@Test
	public void testSetAndGetHeight() {
		int expectedHeight = 9001;
		int actualHeight;
		this.patient.setHeight(expectedHeight);
		actualHeight = this.patient.getHeight();
		assert(expectedHeight == actualHeight);
	}

	@Test
	public void testSetWeight() {
		int expectedWeight = 59439;
		int actualWeight;
		this.patient.setWeight(expectedWeight);
		actualWeight = this.patient.getWeight();
		assert(expectedWeight == actualWeight);
	}

	@Test
	public void testSetAndGetPatientBMI() {
		int expectedBMI = 99;
		int actualBMI;
		this.patient.setPatientBMI(expectedBMI);
		actualBMI = this.patient.getPatientBMI();
		assert(expectedBMI == actualBMI);
	}

	//TODO:locate functionality and move this test (likely in encounter)
//	@Test
//	public void testSetAndGetPatientHPI() {
//		StringBuilder expectedHPI = new StringBuilder();
//		expectedHPI.append("it hurts");
//		StringBuilder actualHPI = new StringBuilder();
//		this.patient.setPatientHPI(expectedHPI);
//		actualHPI.append(this.patient.getPatientHPI());
//		assert(expectedHPI == actualHPI);
//	}
}
