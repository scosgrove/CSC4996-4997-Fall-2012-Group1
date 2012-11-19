package edu.wayne.cs.raptor;

/** The vitals of a patient during a specific encounter.
 * 
 * @author Ramez
 *
 */
public class Vitals {
	
	/* Should have a constraint on values ? */
	//TODO: figure out if we can even get doubles back from the front end.
	//scott mentioned everything comes through as strings because tomcat.  
	
	/** unique identifier of a set of vitals for the specific encounter */
	private int vitalsID;
	
	/** a set of vitals is identified by its encounter id number */
	private int encounterID;
	
	/** Patient's systolic blood pressure */
	private int systolicBP;
	
	/** Patient's diastolic blood pressure */
	private int diastolicBP;
	
	/** Patient's heart rate as BeatsPerMinute*/
	private int heartRate;
	
	/** Patient's respiratory rate */
	private int respRate;
	
	/** Patient's temperature in celsius */
	private int temperatureC;
	
	/** Patient's pulse oximetry in percentage */
	private int oximetry;
	
	/** Patient had blood drawn */
	private boolean fingerPoke;
	
	/** Patient's blood sample number */
	private int bloodSampleID;
	
	
	/** Default empty constructor */
	public Vitals(){	
		//assignment operator seems to work just fine (i asked jUnit, he said so)
	}
	
	public int getVitalsID() {
		return vitalsID;
	}

	public void setVitalsID(int vitalsID) {
		this.vitalsID = vitalsID;
	}

	public int getEncounterID() {
		return encounterID;
	}

	public void setEncounterID(int encounterID) {
		this.encounterID = encounterID;
	}

	/** Returns patient's systolic blood pressure */
	public int getSystolicBP() {
		return systolicBP;
	}
	
	/** Sets patient's systolic blood pressure */
	public void setSystolicBP(int systolicBP) {
		this.systolicBP = systolicBP;
	}
	
	/** Returns patient's diastolic blood pressure */
	public int getDiastolicBP() {
		return diastolicBP;
	}
	
	/** Sets patient's diastolic blood pressure */
	public void setDiastolicBP(int diastolicBP) {
		this.diastolicBP = diastolicBP;
	}
	
	/** Returns patient's heart rate */
	public int getHeartRate() {
		return heartRate;
	}
	
	/** Sets the patient's heart rate */
	public void setHeartRate(int heartRate) {
		this.heartRate = heartRate;
	}
	
	/** Returns patient's respiratory rate */
	public int getRespRate() {
		return respRate;
	}
	
	/** Sets the patient's repiratory rate */
	public void setRespRate(int respRate) {
		this.respRate = respRate;
	}
	
	/** Returns the patient's temperature */
	public int getTemperatureC() {
		return temperatureC;
	}
	
	/** Sets the patient's temperature */
	public void setTemperatureC(int temperatureC) {
		this.temperatureC = temperatureC;
	}
	
	/** Returns the patient's pulse oximetry */
	public int getOximetry() {
		return oximetry;
	}
	
	/** Sets the patient's pulse oximetry */
	public void setOximetry(int oximetry) {
		this.oximetry = oximetry;
	}
	
	/** Returns the patient's blood draw status */
	public boolean getFingerPoke() {
		return fingerPoke;
	}
	
	/** Sets the patient's  blood draw status */
	public void setFingerPoke(boolean drawn) {
		this.fingerPoke = drawn;
	}
	
	/** Returns the patient's blood draw sample id number */
	public int getBloodSampleID() {
		return bloodSampleID;
	}
	
	/** Sets the patient's blood draw sample id number */
	public void setBloodSampleID(int bloodDrawID) {
		this.bloodSampleID = bloodDrawID;
	}
}
