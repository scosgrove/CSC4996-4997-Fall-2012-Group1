package edu.wayne.cs.raptorTest;

import edu.wayne.cs.raptor.*;

import org.junit.Test;

public class MedicationTest {

	Medication medication = new Medication();
	
	//no point in testing an empty constructor. 

	@Test
	public void testSetAndGetMedicationID() {
		double expectedID = 58203847;
		double actualID;
		medication.setMedicationID(expectedID);
		actualID = medication.getMedicationID();
		assert(expectedID == actualID);
	}

	@Test
	public void testSetAndGetName() {
		String expectedName = "beHappy-azipram";
		String actualName;
		medication.setName(expectedName);
		actualName = medication.getName();
		assert(expectedName == actualName);
	}

	@Test
	public void testSetAndGetDescription() {
		String expectedDesc = "gets you happy";
		String actualDesc;
		medication.setDescription(expectedDesc);
		actualDesc = medication.getDescription();
		assert(expectedDesc == actualDesc);
	}
}
