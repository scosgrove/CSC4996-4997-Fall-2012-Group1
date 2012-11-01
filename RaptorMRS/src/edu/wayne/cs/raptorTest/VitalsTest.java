package edu.wayne.cs.raptorTest;

import edu.wayne.cs.raptor.*;
import org.junit.Test;

public class VitalsTest {

	Vitals vitals = new Vitals();
	
	//no point in testing an empty constructor. 
	
	@Test
	public void testSetAndGetDiastolicBP() {
		double diastolicExpected = 80;
		double diastolicActual;
		vitals.setDiastolicBP(diastolicExpected);
		diastolicActual = vitals.getDiastolicBP();
		assert(diastolicExpected == diastolicActual);
	}

	@Test
	public void testSetAndSetSystolicBP() {
		double systolicExpected = 120;
		double systolicActual;
		vitals.setSystolicBP(systolicExpected);
		systolicActual = vitals.getSystolicBP();
		assert(systolicExpected == systolicActual);
	}

	@Test
	public void testSetAndGetHeartRate() {
		double expectedHeartRate = 65;
		double actualHeartRate;
		vitals.setHeartRate(expectedHeartRate);
		actualHeartRate = vitals.getHeartRate();
		assert(expectedHeartRate == actualHeartRate);
	}


	@Test
	public void testSetAndGetRespRate() {
		double expectedRespRate = 12;
		double actualRespRate;
		vitals.setRespRate(expectedRespRate);
		actualRespRate = vitals.getRespRate();
		assert(expectedRespRate == actualRespRate);
	}

	@Test
	public void testSetAndGetTemperatureC() {
		double expectedTemp = 37;
		double actualTemp;
		vitals.setTemperatureC(expectedTemp);
		actualTemp = vitals.getTemperatureC();
		assert(expectedTemp == actualTemp);
	}

	@Test
	public void testSetAndGetOximetry() {
		double expectedOximetry = 95;
		double actualOximetry;
		vitals.setOximetry(expectedOximetry);
		actualOximetry = vitals.getOximetry();
		assert(expectedOximetry == actualOximetry);
	}
}
