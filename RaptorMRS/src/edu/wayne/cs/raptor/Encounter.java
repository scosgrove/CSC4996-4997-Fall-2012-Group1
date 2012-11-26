package edu.wayne.cs.raptor;

import java.util.Date;
import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;;

/** Defines an Encounter. An encounter should track all the interactions between the patient
 *  and any clinic personnel for a given chief-complaint/visit.
 * 
 * @authors Ramez Habib, Tom Hickman, Jackson Turner
 *
 */
@Entity
@Table(name = "ENCOUNTERS")
public class Encounter {
	
	/** A unique Encounter identification number */
	private int encounterID;
	
	/** The id of the patient for whom the encounter is in progress */
	private int patientID;
	
	//figure out how to deal with images using jsp
	//private Bitmap personPhoto
	
	/** The stated chief complaint for an encounter */
	private String chiefComplaint;
	
	private int onsetNumber;
	
	private int onsetUnit;
	
	/** A chronic/other illnesses discovered in the encounter 
	 * TODO:  The names of previously discovered chronic illnesses should be automatically displayed,
	 *  Method to access/edit if desired. if it's resolved should not be displayed during future encounters 
	 *  (but not removed from previously recorded encounters)
	 */
	private String condition1;
	
	private String condition2;
	
	private String condition3;
	
	private String condition4;
	 
	private String condition5;
	
	/** Overall Impression of the encounter & additional comments */
	private String overallImpression;
	
	/** Keywords for this encounter */
	private String keywords;
	
	/** Any medical procedures the Patient has undergone in the past or the current encounter */
	private String medicalProcedures;

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

	public int getOnsetNumber() {
		return onsetNumber;
	}

	public void setOnsetNumber(int onsetNumber) {
		this.onsetNumber = onsetNumber;
	}

	public int getOnsetUnit() {
		return onsetUnit;
	}

	public void setOnsetUnit(int onsetUnit) {
		this.onsetUnit = onsetUnit;
	}

	public String getCondition1() {
		return condition1;
	}

	public void setCondition1(String otherIllness1) {
		this.condition1 = otherIllness1;
	}

	public String getCondition2() {
		return condition2;
	}

	public void setCondition2(String otherIllness2) {
		this.condition2 = otherIllness2;
	}

	public String getCondition3() {
		return condition3;
	}

	public void setCondition3(String otherIllness3) {
		this.condition3 = otherIllness3;
	}
	
	public String getCondition4() {
		return condition4;
	}

	public void setCondition4(String condition4) {
		this.condition4 = condition4;
	}

	public String getCondition5() {
		return condition5;
	}

	public void setCondition5(String condition5) {
		this.condition5 = condition5;
	}
	
	/** Returns the overall impression of the encounter */
	public String getOverallImpression() {
		return overallImpression;
	}

	/** Sets the overall impression of the encounter */
	public void setOverallImpression(String impression) {
		this.overallImpression = impression;
	}

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