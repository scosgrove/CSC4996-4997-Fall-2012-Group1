package edu.wayne.cs.raptor;

public class PatientData {
	
		// public enum Gender { Male, Female };
	
		public String patientFirstName;
		public String patientLastName;
		public double patientID;
	
		//public Gender patientSex;
		public String patientVillage;
		
		public int patientHeight;
		public int patientWeight;
		public int patientBMI;
		
		//  public Vitals patientVitals;
		
		public StringBuilder patientChiefComplaint;
		public StringBuilder patientHPI;				// Patient's History of Personal Illness 
		
		// Need data structure for photos of conditions ?
		// Chronic illnesses list 
		// Medical procedures list
		// Social and Family history 
		// Previously provided meds from previous encounters
		
		// The following should belong to the specific current encounter in progress
		// Meds provided during current encounter
		// Overall impression for the current visit 
		
		
		
		
		
		public String getPatientFirstName() {
			return patientFirstName;
		}
		public void setPatientFirstName(String patientFirstName) {
			this.patientFirstName = patientFirstName;
		}
		public String getPatientLastName() {
			return patientLastName;
		}
		public void setPatientLastName(String patientLastName) {
			this.patientLastName = patientLastName;
		}
		public double getPatientID() {
			return patientID;
		}
		public void setPatientID(double patientID) {
			this.patientID = patientID;
		}
		public String getPatientVillage() {
			return patientVillage;
		}
		public void setPatientVillage(String patientVillage) {
			this.patientVillage = patientVillage;
		}
		public int getPatientHeight() {
			return patientHeight;
		}
		public void setPatientHeight(int patientHeight) {
			this.patientHeight = patientHeight;
		}
		public int getPatientWeight() {
			return patientWeight;
		}
		public void setPatientWeight(int patientWeight) {
			this.patientWeight = patientWeight;
		}
		public int getPatientBMI() {
			return patientBMI;
		}
		public void setPatientBMI(int patientBMI) {
			this.patientBMI = patientBMI;
		}
		public StringBuilder getPatientChiefComplaint() {
			return patientChiefComplaint;
		}
		public void setPatientChiefComplaint(StringBuilder patientChiefComplaint) {
			this.patientChiefComplaint = patientChiefComplaint;
		}
		public StringBuilder getPatientHPI() {
			return patientHPI;
		}
		public void setPatientHPI(StringBuilder patientHPI) {
			this.patientHPI = patientHPI;
		}
		
		
		
	

}
