package edu.wayne.cs.raptor;

/** The vitals of a patient during a specific encounter.
 * 
 * @author Ramez
 *
 */
public class Vitals {
	
	/** Should have a constraint on values ? */
	//TODO: figure out if we can even get doubles back from the front end.  scott mentioned everything comes through as strings because tomcat.  
	private double systolicBP;
	private double diastolicBP;
	private double heartRate;
	private double respRate;
	private double temperatureC;
	private double oximetry;
	
	public Vitals(){	
		//assignment operator seems to work just fine (i asked jUnit, he said so)
	}
	
	public double getSystolicBP() {
		return systolicBP;
	}
	public void setSystolicBP(double systolicBP) {
		this.systolicBP = systolicBP;
	}
	public double getDiastolicBP() {
		return diastolicBP;
	}
	public void setDiastolicBP(double diastolicBP) {
		this.diastolicBP = diastolicBP;
	}
	public double getHeartRate() {
		return heartRate;
	}
	public void setHeartRate(double heartRate) {
		this.heartRate = heartRate;
	}
	public double getRespRate() {
		return respRate;
	}
	public void setRespRate(double respRate) {
		this.respRate = respRate;
	}
	public double getTemperatureC() {
		return temperatureC;
	}
	public void setTemperatureC(double temperatureC) {
		this.temperatureC = temperatureC;
	}
	public double getOximetry() {
		return oximetry;
	}
	public void setOximetry(double oximetry) {
		this.oximetry = oximetry;
	}
}
