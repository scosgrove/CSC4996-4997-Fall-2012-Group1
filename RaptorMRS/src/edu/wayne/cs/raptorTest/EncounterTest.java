package edu.wayne.cs.raptorTest;

import static org.junit.Assert.*;
import org.junit.Test;
import edu.wayne.cs.raptor.*;

public class EncounterTest {

	//no reason to test an empty constructor

	Encounter encounter = new Encounter();
	
	@Test
	public void testSetAndGetEncounterID() {
		double expectedID = 3848574;
		double actualID;
		encounter.setEncounterID(expectedID);
		actualID = encounter.getEncounterID();
		assert(expectedID == actualID);
	}

	@Test
	public void testSetAndGetChiefComplaint() {
		String expectedComplaint = "it hurts";
		String actualComplaint;
		encounter.setChiefComplaint(expectedComplaint);
		actualComplaint = encounter.getChiefComplaint();
		assert(expectedComplaint == actualComplaint);
	}

	@Test
	public void testSetVitals() {
		//need to talk about .equals method for our custom types.  (i had trouble with implementing and testing)
	}

	@Test
	public void testSetAndGetMedsProvided() {
		//see above
	}

	@Test
	public void testSetAndGetConclusion() {
		StringBuilder expectedConclusion = new StringBuilder();
		StringBuilder actualConclusion = new StringBuilder();
		expectedConclusion.append("patient is sick");
		this.encounter.setConclusion(expectedConclusion);
		actualConclusion = this.encounter.getConclusion();
		assert(expectedConclusion == actualConclusion);
	}

}
