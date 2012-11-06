package edu.wayne.cs.raptor;

import java.util.Date;
import java.util.Set;

/** Defines a Patient entity in the system.  
 * 
 * @author Ramez
 *
 */
public class Patient {
	
		/** A unique Patient identification number */
		private int patientID;
		
		/** Patient's first name */
		private String firstName;
		
		/** Patient's last name */
		private String lastName;
		
		/** Patient's gender */
		private String gender;
		
		/** Patient's date of birth */
		private Date birthDate;
		
		/** Patient's residence */
		private String address;
		
		/** A set of unique keywords collected from the Patient's relevant medical information/history */
		private Set<String> keywords;
		
		/** The Patient's social/family history. this information shouldn't change much from an encounter
		 * to another.
		 */
		private String socialHistory;
		
		
		/* Fields possibly to be moved  */
		private int height;
		private int weight;
		private int patientBMI;
		
		/**
		 * metadata
		 */
		// private User creator;
		// private Date createdDate;
		// private User modifier/changer;
		// private Date modifiedDate;
		
		
		/** TODO:  photos of conditions
		 *  TODO: Previously provided meds from previous encounters 
		 *  A listing of previously provided meds (with dates, quantities, and schedule) should be displayed and
		 *   scrollable. This is should be a 'read-only' box.
		 *  TODO: Method to calculate BMI (users should enter height & weight, BMI auto-generated)
		 * */
		
		
		/** Default empty constructor */
		public Patient(){
			
		}
		
		/** Returns the Patient's ID */
		public int getPatientID() {
			return patientID;
		}
		/** Sets the Patient's ID */
		public void setPatientID(int patientID) {
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
		/** Returns Patient's date of birth */
		public Date getBirthDate() {
			return birthDate;
		}
		/** Sets the Patient's date of birth */
		public void setBirthDate(Date birthDate) {
			this.birthDate = birthDate;
		}

		/** Returns the Patient's address */
		public String getAddress() {
			return address;
		}
		/** Sets the Patient's address */
		public void setAddress(String address) {
			this.address = address;
		}
		
		public Set<String> getKeywords() {
			return keywords;
		}

		public void setKeywords(Set<String> keywords) {
			this.keywords = keywords;
		}
		
		public String getSocialHistory() {
			return socialHistory;
		}

		public void setSocialHistory(String socialHistory) {
			this.socialHistory = socialHistory;
		}

		// TODO: To be moved to either Vitals/Encounter 
		public int getHeight() {
			return height;
		}
		public void setHeight(int height) {
			this.height = height;
		}
		public int getWeight() {
			return weight;
		}
		public void setWeight(int weight) {
			this.weight = weight;
		}
		public int getPatientBMI() {
			return patientBMI;
		}
		public void setPatientBMI(int patientBMI) {
			this.patientBMI = patientBMI;
		}

		
		
		
		
		
	

}
