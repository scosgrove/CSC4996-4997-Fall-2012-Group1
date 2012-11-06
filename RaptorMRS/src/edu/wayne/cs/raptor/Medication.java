package edu.wayne.cs.raptor;

/** A representation of a medication in the system. 
 * 
 * @author Ramez
 *
 */
public class Medication {
	
	/** A unique Medication identification number */
	private int medicationID;
	
	/** Name of the Medication. Could be separated from brand in future ? */
	private String name;
	
	/** Description of the medication */
	private String description;
	
	//private String dosage;
	
	//private String dosageForm; 
	
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
}
