package edu.wayne.cs.raptor;

/** Defines a Patient entity in the system.  
 * 
 * @author Ramez
 *
 */
public class Patient {
	
		private double patientID;
		
		//TODO: Patient's name should be one field ?
		private String firstName;
		private String lastName;
		
		private String gender;
		
		private String address;
		
		private double height;
		
		private double weight;
		
		private double patientBMI;
		
		 
		// Patient's History of present illness (current illness)
		private StringBuilder patientHPI;	
		
		/**
		 * metadata
		 */
		// private User creator;
		// private Date createdDate;
		// private User modifier/changer;
		// private Date modifiedDate;
		
		/** Vitals are specific to an encounter, but in case of displaying a patient seen previously
	    Do/Could we have these fields populated from the latest encounter/visit */
		//  public Vitals patientVitals;   
		
		
		/** TODO:  photos of conditions 
		 *  TODO: Chronic illnesses list 
		 *  TODO: Medical procedures list
		 *  TODO: Social and Family history 
		 *  TODO: Previously provided meds from previous encounters 
		 *  TODO: Method to calculate BMI (users should enter height & weight, BMI auto-generated)
		 * */
		
		
		
		public Patient(){
			
		}
		
		public double getPatientID() {
			return patientID;
		}
		public void setPatientID(double patientID) {
			this.patientID = patientID;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public double getHeight() {
			return height;
		}
		public void setHeight(double height) {
			this.height = height;
		}
		public double getWeight() {
			return weight;
		}
		public void setWeight(double weight) {
			this.weight = weight;
		}
		public double getPatientBMI() {
			return patientBMI;
		}
		public void setPatientBMI(double patientBMI) {
			this.patientBMI = patientBMI;
		}
		public StringBuilder getPatientHPI() {
			return patientHPI;
		}
		public void setPatientHPI(StringBuilder patientHPI) {
			this.patientHPI = patientHPI;
		}
		
		
		
	

}
