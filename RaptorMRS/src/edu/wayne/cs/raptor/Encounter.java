package edu.wayne.cs.raptor;

import java.util.Set;

/** Defines an Encounter. An encounter should track all the interactions between the patient
 *  and any clinic personnel for a given chief-complaint/visit.
 * 
 * @author Ramez
 *
 */
public class Encounter {
	
	/** A unique Encounter identification number */
	private int encounterID;
	
	/** The id of the patient for whom the encounter is in progress */
	private int patientID;
	
	/** The Patient's stated chief complaint for an encounter */
	private String chiefComplaint;
	
	/** The Patient's vitals taken in the encounter */
	private Vitals vitals;
	
	/** Patient's History of present illness (current illness) */
	private String patientHPI;
	
	/** A chronic illness discovered in the encounter (name and brief description ToBeDone)
	 * TODO:  The names of previously discovered chronic illnesses should be automatically displayed,
	 *  Method to access/edit if desired. if it's resolved should not be displayed during future encounters 
	 *  (but not removed from previously recorded encounters)
	 */
	private String chronicIllness;
	
	/** Any medical procedures the Patient has undergone in the past or the current encounter */
	private String medProcedures;
	

	/** Medications provided in the encounter */
	private Set<Medication> medsProvided;
	
	/** Overall Impression of the encounter & additional comments */
	private StringBuilder conclusion;


	/** 
	 * metadata
	 */
	//private Date createdDate;
	//private Date modifiedDate;
	
	/** TODO: Should there be an attribute where we save keywords from the encounter? 
	 *  Done in patient */
	
	
	
	/** Default empty constructor */
	public Encounter(){
		
	}

	/** Returns the encounter ID number */
	public int getEncounterID() {
		return encounterID;
	}

	/** Sets the ecnounter ID number */
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
	/** Returns the Vital signs of a patient in an encounter */
	public Vitals getVitals() {
		return vitals;
	}
	/** Sets the vital signs of a patient in an encounter */
	public void setVitals(Vitals vitals) {
		this.vitals = vitals;
	}
	
	public String getPatientHPI() {
		return patientHPI;
	}
	public void setPatientHPI(String patientHPI) {
		this.patientHPI = patientHPI;
	}
	
	public String getChronicIllness() {
		return chronicIllness;
	}

	public void setChronicIllness(String chronicIllness) {
		this.chronicIllness = chronicIllness;
	}

	public String getMedProcedures() {
		return medProcedures;
	}

	public void setMedProcedures(String medProcedures) {
		this.medProcedures = medProcedures;
	}

	/** Returns whatever medications were provided to the patient in an encounter */
	public Set<Medication> getMedsProvided() {
		return medsProvided;
	}

	/** Sets the medications that are provided to a patient in an encounter */
	public void setMedsProvided(Set<Medication> medsProvided) {
		this.medsProvided = medsProvided;
	}

	/** Returns the overall impression of the encounter */
	public StringBuilder getConclusion() {
		return conclusion;
	}

	/** Sets the overall impression of the encounter */
	public void setConclusion(StringBuilder conclusion) {
		this.conclusion = conclusion;
	}




	
	

}
