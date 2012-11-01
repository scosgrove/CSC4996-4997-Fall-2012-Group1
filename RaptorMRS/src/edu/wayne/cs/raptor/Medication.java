package edu.wayne.cs.raptor;

/** A representation of a medication in the system. 
 * 
 * @author Ramez
 *
 */
public class Medication {
	
	private double medicationID;
	
	private String name;
	
	private String description;
	
	//private String dosage;
	
	//private String dosageForm; 
	
	public Medication(){
		
	}

	public double getMedicationID() {
		return medicationID;
	}

	public void setMedicationID(double medicationID) {
		this.medicationID = medicationID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
