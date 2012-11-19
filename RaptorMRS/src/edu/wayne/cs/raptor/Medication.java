package edu.wayne.cs.raptor;

import java.util.Date;

/** A representation of a medication in the system. 
 * 
 * @author Ramez
 *
 */
public class Medication {
	
	/** A unique Medication identification number */
	private int medicationID;
	
	/** Description of the medication */
	private String description;
	
	/** Name of the Medication. Could be separated from brand in future ? */
	private String name;
	
	/** The recommended (fluid) or prescribed/dispensed (pill) dosage of this medication */
	private String dosage;
	
	//TODO: include this?  look at email back from client or ask him again.  i.e. is this a pill, powder, liquid, etc...
	//private String dosageForm; 
	
	//TODO take this out of medication, possibly put in a med-service. also out of table?
	//this may need to be split into two parts - one in encounter as prescribed/dispensed, and another in inventory.  
	//i wonder if a service would be an appropriate place to comma-delimit or otherwise deal with collections for hibernate
	//private int quantity
	
	//TODO the string thing (User type storage)
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
	public Medication(){
		
	}

	/** Returns the Medication ID  */
	public int getMedicationID() {
		return medicationID;
	}
	/** Sets a Medication ID */
	public void setMedicationID(int medicationID) {
		this.medicationID = medicationID;
	}
	/** Returns the name of the Medication */
	public String getName() {
		return name;
	}
	/** Sets a name for the Medication */
	public void setName(String name) {
		this.name = name;
	}
	/** Returns a description of the Medication */
	public String getDescription() {
		return description;
	}
	/** Sets a description for the Medication */
	public void setDescription(String description) {
		this.description = description;
	}

	public String getDosage() {
		return dosage;
	}

	public void setDosage(String dosage) {
		this.dosage = dosage;
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
