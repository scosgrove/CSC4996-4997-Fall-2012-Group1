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
	private double encounterID;
	
	/** The Patient's stated chief complaint for an encounter */
	private String chiefComplaint;
	
	/** The Patient's vitals taken in the encounter */
	private Vitals vitals;
	
	/** Medications provided in the encounter */
	private Set<Medication> medsProvided;
	
	/** Overall Impression of the encounter & additional comments */
	private StringBuilder conclusion;
	
	/** 
	 * metadata
	 */
	//private Date createdDate;
	//private Date modifiedDate;
	
	
	/**
	 * TODO: Should there be an attribute where we save keywords from the encounter? */
	
	/** Default empty constructor */
	public Encounter(){
		
	}

	/** Returns the encounter ID number */
	public double getEncounterID() {
		return encounterID;
	}

	/** Sets the ecnounter ID number */
	public void setEncounterID(double encounterID) {
		this.encounterID = encounterID;
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
