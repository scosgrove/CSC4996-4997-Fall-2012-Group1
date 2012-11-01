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
	
	/** Patient's systolic blood pressure */
	private double systolicBP;
	
	/** Patient's diastolic blood pressure */
	private double diastolicBP;
	
	/** Patient's heart rate as BeatsPerMinute*/
	private double heartRate;
	
	/** Patient's respiratory rate */
	private double respRate;
	
	/** Patient's temperature in celsius */
	private double temperatureC;
	
	/** Patient's pulse oximetry in percentage */
	private double oximetry;
	
	/** Default empty constructor */
	public Vitals(){	
		//assignment operator seems to work just fine (i asked jUnit, he said so)
	}
	
	/** Returns patient's systolic blood pressure */
	public double getSystolicBP() {
		return systolicBP;
	}
	
	/** Sets patient's systolic blood pressure */
	public void setSystolicBP(double systolicBP) {
		this.systolicBP = systolicBP;
	}
	
	/** Returns patient's diastolic blood pressure */
	public double getDiastolicBP() {
		return diastolicBP;
	}
	
	/** Sets patient's diastolic blood pressure */
	public void setDiastolicBP(double diastolicBP) {
		this.diastolicBP = diastolicBP;
	}
	
	/** Returns patient's heart rate */
	public double getHeartRate() {
		return heartRate;
	}
	
	/** Sets the patient's heart rate */
	public void setHeartRate(double heartRate) {
		this.heartRate = heartRate;
	}
	
	/** Returns patient's respiratory rate */
	public double getRespRate() {
		return respRate;
	}
	
	/** Sets the patient's repiratory rate */
	public void setRespRate(double respRate) {
		this.respRate = respRate;
	}
	
	/** Returns the patient's temperature */
	public double getTemperatureC() {
		return temperatureC;
	}
	
	/** Sets the patient's temperature */
	public void setTemperatureC(double temperatureC) {
		this.temperatureC = temperatureC;
	}
	
	/** Returns the patient's pukse oximetry */
	public double getOximetry() {
		return oximetry;
	}
	
	/** Sets the patient's pulse oximetry */
	public void setOximetry(double oximetry) {
		this.oximetry = oximetry;
	}
}
