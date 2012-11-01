package edu.wayne.cs.raptor;

/** Defines a Patient entity in the system.  
 * 
 * @author Ramez
 *
 */
public class Patient {
	
		/** A unique Patient identification number */
		private double patientID;
		
		/** Patient's first name */
		private String firstName;
		
		/** Patient's last name */
		private String lastName;
		
		/** Patient's gender */
		private String gender;
		
		/** Patient's residence */
		private String address;
		
		/* Fields to be moved  */
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
		
		
		/** Default empty constructor */
		public Patient(){
			
		}
		
		/** Returns the Patient's ID */
		public double getPatientID() {
			return patientID;
		}
		/** Sets the Patient's ID */
		public void setPatientID(double patientID) {
			this.patientID = patientID;
		}
		/** Returns the Patient's first name */
		public String getFirstName() {
			return firstName;
		}
		/** Sets the Patient's first name */
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		/** Returns the Patient's last name */
		public String getLastName() {
			return lastName;
		}
		/** Sets the Patient's last name */
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		/** Returns the Patient's gender */
		public String getGender() {
			return gender;
		}
		/** Sets the Patient's gender */
		public void setGender(String gender) {
			this.gender = gender;
		}
		/** Returns the Patient's address */
		public String getAddress() {
			return address;
		}
		/** Sets the Patient's address */
		public void setAddress(String address) {
			this.address = address;
		}
		
		// TODO: To be moved to either Vitals/Encounter 
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
