package edu.wayne.cs.raptor;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;;

/** Defines an Encounter. An encounter should track all the interactions between the patient
 *  and any clinic personnel for a given chief-complaint/visit.
 * 
 * @author Ramez
 *
 */
@Entity
@Table(name = "ENCOUNTERS")
public class Encounter {
	
	/** A unique Encounter identification number */
	private int encounterID;
	
	/** The id of the patient for whom the encounter is in progress */
	private int patientID;
	
	/** The stated chief complaint for an encounter */
	private String chiefComplaint;
	
//	/** The vitals taken in the encounter */
//	private Vitals vitals;
	//what TODO about mapping a nested object with hibernate....?
	private String vitals;
	
	/** Recorded History of Present Illness (current illness) */
	private String historyOfPresentIllness;
	
	/** A chronic illness discovered in the encounter (name and brief description ToBeDone)
	 * TODO:  The names of previously discovered chronic illnesses should be automatically displayed,
	 *  Method to access/edit if desired. if it's resolved should not be displayed during future encounters 
	 *  (but not removed from previously recorded encounters)
	 */
	private String chronicIllness;

	/** Keywords for this encounter */
	private String keywords;
	
	/** Any medical procedures the Patient has undergone in the past or the current encounter */
	//TODO does this make sense to change to proceduresPerformed for disambiguity?
	private String medicalProcedures;
	
	/** Medication prescribed during the physician encounter */
//	private Set<Medication> medicationsPrescribed;
	//TODO: sets.....
	private String medicationsPrescribed;
	
	/** Medications provided during the pharmacist encounter */
//	private Set<Medication> medsDispensed;
	private String medicationsDispensed;
	
	/** Overall Impression of the encounter & additional comments */
	private String overallImpression;


	/** 
	 * metadata
	 */
	/** User that created this user */
	private String creatingUser;
	
	/** Date this user was first created */
	private Date createdDate;
	
	/** User to last modify or update this user */
	private String modifyingUser;
	
	/** Date last modification of this user took place, creation counts as a modification */
	private Date lastModifiedDate;
	
	
	
	/** Default empty constructor */
	public Encounter(){
		
	}

	/** Returns the encounter ID number */
	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy = "increment")
	public int getEncounterID() {
		return encounterID;
	}

	/** Sets the encounter ID number */
	public void setEncounterID(int encounterID) {
		this.encounterID = encounterID;
	}

	public int getPatientID() {
		return patientID;
	}

	public void setPatientID(int patientID) {
		this.patientID = patientID;
	}

	/** Returns the chief complaint in the encounter*/
	public String getChiefComplaint() {
		return chiefComplaint;
	}

	/** Sets the chief complaint */
	public void setChiefComplaint(String chiefComplaint) {
		this.chiefComplaint = chiefComplaint;
	}
	
//	/** Returns the Vital signs of a patient in an encounter */
//	public Vitals getVitals() {
//		return vitals;
//	}
//	/** Sets the vital signs of a patient in an encounter */
//	public void setVitals(Vitals vitals) {
//		this.vitals = vitals;
//	}
//	
	/** Returns the Vital signs of a patient in an encounter */
	public String getVitals() {
		return vitals;
	}
	/** Sets the vital signs of a patient in an encounter */
	public void setVitals(String vitals) {
		this.vitals = vitals;
	}
	
	public String getHistoryOfPresentIllness() {
		return historyOfPresentIllness;
	}
	public void setHistoryOfPresentIllness(String hpi) {
		this.historyOfPresentIllness = hpi;
	}
	
	public String getChronicIllness() {
		return chronicIllness;
	}

	public void setChronicIllness(String chronicIllness) {
		this.chronicIllness = chronicIllness;
	}
	
	//github issue #10
//	/** Returns the keywords of the encounter */
//	public Set<String> getKeywords() {
//		return keywords;
//	}
//
//	/** Sets the keywords of the encounter */
//	public void setKeywords(Set<String> kywds) {
//		this.keywords = kywds;
//	}

	/** Returns the keywords of the encounter */
	public String getKeywords() {
		return keywords;
	}

	/** Sets the keywords of the encounter */
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getMedicalProcedures() {
		return medicalProcedures;
	}

	public void setMedicalProcedures(String medicalProcedures) {
		this.medicalProcedures = medicalProcedures;
	}

	//collections issue #10 in github list
//	/** Returns whatever medications were provided to the patient in an encounter */
//	public Set<Medication> getMedsDispensed() {
//		return medsDispensed;
//	}
//
//	/** Sets the medications that are provided to a patient in an encounter */
//	public void setMedsDispensed(Set<Medication> medications) {
//		this.medsDispensed = medications;
//	}

	/** Returns whatever medications were provided to the patient in an encounter */
	public String getMedicationsDispensed() {
		return medicationsDispensed;
	}

	/** Sets the medications that are provided to a patient in an encounter */
	public void setMedicationsDispensed(String medicationsDispensed) {
		this.medicationsDispensed = medicationsDispensed;
	}
	
	//github issue #10
//	/** Returns medications prescribed to the patient */
//	public Set<Medication> getMedsPrescribed() {
//		return medsPrescribed;
//	}
//
//	/** Sets medications prescribed to a patient */
//	public void setMedsPrescribed(Set<Medication> prescribed) {
//		this.medsPrescribed = prescribed;
//	}
	
	/** Returns medications prescribed to the patient */
	public String getMedicationsPrescribed() {
		return medicationsPrescribed;
	}

	/** Sets medications prescribed to a patient */
	public void setMedicationsPrescribed(String medicationsPrescribed) {
		this.medicationsPrescribed = medicationsPrescribed;
	}
	
	/** Returns the overall impression of the encounter */
	public String getOverallImpression() {
		return overallImpression;
	}

	/** Sets the overall impression of the encounter */
	public void setOverallImpression(String impression) {
		this.overallImpression = impression;
	}


	public String getCreatingUser() {
		return creatingUser;
	}

	public void setCreatingUser(String creatingUser) {
		this.creatingUser = creatingUser;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifyingUser() {
		return modifyingUser;
	}

	public void setModifyingUser(String modifyingUser) {
		this.modifyingUser = modifyingUser;
	}

	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}
	
	

}
