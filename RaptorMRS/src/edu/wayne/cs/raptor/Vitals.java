package edu.wayne.cs.raptor;

import java.util.Date;

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
	
	/** Patient's measured height */
	private int height;
	
	/** Patient's measured weight */
	private int weight;
	
	/** Patient's measured patientBMI */
	private int calculatedBMI;
	
	/** User that created this Vitals document */
	private String creatingUser;
	
	/** Date this vitals document was created */
	private Date createdDate;
	
	/** The user that last modified this vitals doc */
	private String modifyingUser;
	
	/** The date of the last modification to this vitals document */
	private Date lastModifiedDate;
	
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
	
	/** Returns the patient's measured height */
	public int getHeight() {
		return height;
	}
	
	/** Sets the patient's measured height */
	public void setHeight(int measuredHeight) {
		this.height = measuredHeight;
	}
	
	/** Returns the patient's measured weight */
	public int getWeight() {
		return weight;
	}
	
	/** Sets the patient's measured weight */
	public void setWeight(int measuredWeight) {
		this.weight = measuredWeight;
	}
	
	/** Returns the patient's calculatedBMI */
	public int getBMI() {
		return calculatedBMI;
	}
	
	/** Sets the patient's measured weight */
	public void setBMI(int bmi) {
		this.calculatedBMI = bmi;
	}
	
	/** User that created this Vitals document */
	private void setCreatingUser(String creator)
	{
		this.creatingUser = creator;
	}
	
	private String getCreatingUser()
	{
		return this.creatingUser;
	}
	
	/** Date this vitals document was created */
	private void setCreatedDate(Date created)
	{
		this.createdDate = created;
	}
	
	private Date getCreatedDate()
	{
		return this.createdDate;
	}
	
	/** The user that last modified this vitals doc */
	private void setModifyingUser(String modifier)
	{
		this.modifyingUser = modifier;
	}
	
	private String getModifyingUser()
	{
		return this.modifyingUser;
	}
	
	/** The date of the last modification to this vitals document */
	private void setLastModifiedDate(Date modified)
	{
		this.lastModifiedDate = modified;
	}
	
	private Date getLastModifiedDate()
	{
		return this.lastModifiedDate;
	}
	
}
