package edu.wayne.cs.raptor;

import java.util.Set;

/** Defines an Encounter. An encounter should track all the interactions between the patient
 *  and any clinic personnel for a given chief-complaint/visit.
 * 
 * @author Ramez
 *
 */
public class Encounter {
	
	
	private double encounterID;
	
	private String chiefComplaint;
	
	private Vitals vitals;
	
	// Meds provided in the current encounter
	private Set<Medication> medsProvided;
	
	// Required entry for an encounter. Overall impression
	private StringBuilder conclusion;
	
	/** 
	 * metadata
	 */
	//private Date createdDate;
	//private Date modifiedDate;
	
	
	/**
	 * TODO: Should there be an attribute where we save keywords from the encounter? */
	
	public Encounter(){
		
	}



	public double getEncounterID() {
		return encounterID;
	}



	public void setEncounterID(double encounterID) {
		this.encounterID = encounterID;
	}



	public String getChiefComplaint() {
		return chiefComplaint;
	}



	public void setChiefComplaint(String chiefComplaint) {
		this.chiefComplaint = chiefComplaint;
	}
	public Vitals getVitals() {
		return vitals;
	}

	public void setVitals(Vitals vitals) {
		this.vitals = vitals;
	}

	public Set<Medication> getMedsProvided() {
		return medsProvided;
	}



	public void setMedsProvided(Set<Medication> medsProvided) {
		this.medsProvided = medsProvided;
	}



	public StringBuilder getConclusion() {
		return conclusion;
	}



	public void setConclusion(StringBuilder conclusion) {
		this.conclusion = conclusion;
	}




	
	

}
