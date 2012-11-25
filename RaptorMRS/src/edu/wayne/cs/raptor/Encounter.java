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
	
	/** The vitals taken in the encounter */
	//private Vitals vitals;
	//what to do about mapping a nested object with hibernate....?
	//fix: flatten.  no nesting, vitals merged with encounter.  
	
	/** Patient's measured height */
	private int height = 0;
	
	/** Patient's measured weight */
	private int weight = 0;
	
	/** Patient's measured patientBMI */
	private int calculatedBMI;
	
	/** Patient's systolic blood pressure */
	private int systolicBP;
	
	/** Patient's diastolic blood pressure */
	private int diastolicBP;
	
	/** Patient's heart rate as BeatsPerMinute*/
	private int heartRate;
	
	/** Patient's temperature in celsius */
	private int temperatureC;
	
	/** Patient's respiratory rate */
	private int respRate;
	
	/** Patient's pulse oximetry in percentage */
	private int oximetry;
	
	/** The stated chief complaint for an encounter */
	private String chiefComplaint;
	
	/** Medication prescribed during the physician encounter */
	//	private Set<Medication> medicationsPrescribed; - decided to make each field correspond to one medication
	
	private String medicationPrescribed1;

	private String medicationPrescribed2;
	
	private String medicationPrescribed3;

	private String medicationPrescribed4;
	
	private String medicationPrescribed5;
	
	/** Patient had blood drawn */
	private boolean bloodDrawnStatus;
	
	/** Patient's blood sample number */
	private int bloodSampleID;
	
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
	
	/** Recorded History of Present Illness (current illness) */
	private String historyOfPresentIllness;
	
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

	/** Returns the patient's measured height */
	public int getHeight() {
		return height;
	}
	
	/** Sets the patient's measured height */
	public void setHeight(int measuredHeight) {
		this.height = measuredHeight;
	}
	
	/** Returns the patient's measured weight */
	public int getWeight() {
		return weight;
	}
	
	/** Sets the patient's measured weight */
	public void setWeight(int measuredWeight) {
		this.weight = measuredWeight;
	}
	
	/** Calculates patient's BMI if all necessary fields are not null */
	public void calculateBMI()
	{  
		if(height != 0 && weight != 0)
			calculatedBMI = (int) ((int)( weight / (int)(Math.pow(height, 2)) ) * 703.06957964f);

		//excluded for reasons of time.  
//		if(unitSystem == "metric")
//		{
//			bmi = (float)( measuredWeight / Math.pow(measuredHeight, 2));
//		}
	}
	
	/** Returns the patient's calculatedBMI */
	public int getCalculatedBMI() {
		calculateBMI();
		return calculatedBMI;
	}
	
	/** Sets the patient's measured weight */
	public void setCalculatedBMI(int bmi) {
		this.calculatedBMI = bmi;
	}
	
	/** Returns patient's systolic blood pressure */
	public int getSystolicBP() {
		return systolicBP;
	}
	
	/** Sets patient's systolic blood pressure */
	public void setSystolicBP(int systolicBP) {
		this.systolicBP = systolicBP;
	}
	
	/** Returns patient's diastolic blood pressure */
	public int getDiastolicBP() {
		return diastolicBP;
	}
	
	/** Sets patient's diastolic blood pressure */
	public void setDiastolicBP(int diastolicBP) {
		this.diastolicBP = diastolicBP;
	}
	
	/** Returns patient's heart rate */
	public int getHeartRate() {
		return heartRate;
	}
	
	/** Sets the patient's heart rate */
	public void setHeartRate(int heartRate) {
		this.heartRate = heartRate;
	}
	
	/** Returns the patient's temperature */
	public int getTemperatureC() {
		return temperatureC;
	}
	
	/** Sets the patient's temperature */
	public void setTemperatureC(int temperatureC) {
		this.temperatureC = temperatureC;
	}
	
	/** Returns patient's respiratory rate */
	public int getRespRate() {
		return respRate;
	}
	
	/** Sets the patient's repiratory rate */
	public void setRespRate(int respRate) {
		this.respRate = respRate;
	}
	
	/** Returns the patient's pulse oximetry */
	public int getOximetry() {
		return oximetry;
	}
	
	/** Sets the patient's pulse oximetry */
	public void setOximetry(int oximetry) {
		this.oximetry = oximetry;
	}
	
	/** Returns the chief complaint in the encounter*/
	public String getChiefComplaint() {
		return chiefComplaint;
	}

	/** Sets the chief complaint */
	public void setChiefComplaint(String chiefComplaint) {
		this.chiefComplaint = chiefComplaint;
	}
	
	public String getMedicationPrescribed1() {
		return medicationPrescribed1;
	}

	public void setMedicationPrescribed1(String medicationPrescribed1) {
		this.medicationPrescribed1 = medicationPrescribed1;
	}

	public String getMedicationPrescribed2() {
		return medicationPrescribed2;
	}

	public void setMedicationPrescribed2(String medicationPrescribed2) {
		this.medicationPrescribed2 = medicationPrescribed2;
	}

	public String getMedicationPrescribed3() {
		return medicationPrescribed3;
	}

	public void setMedicationPrescribed3(String medicationPrescribed3) {
		this.medicationPrescribed3 = medicationPrescribed3;
	}

	public String getMedicationPrescribed4() {
		return medicationPrescribed4;
	}

	public void setMedicationPrescribed4(String medicationPrescribed4) {
		this.medicationPrescribed4 = medicationPrescribed4;
	}

	public String getMedicationPrescribed5() {
		return medicationPrescribed5;
	}

	public void setMedicationPrescribed5(String medicationPrescribed5) {
		this.medicationPrescribed5 = medicationPrescribed5;
	}

	/** Returns the patient's blood draw status */
	public boolean getBloodDrawnStatus() {
		return bloodDrawnStatus;
	}
	
	/** Sets the patient's  blood draw status */
	public void setBloodDrawnStatus(boolean drawn) {
		this.bloodDrawnStatus = drawn;
	}
	
	/** Returns the patient's blood draw sample id number */
	public int getBloodSampleID() {
		return bloodSampleID;
	}
	
	/** Sets the patient's blood draw sample id number */
	public void setBloodSampleID(int bloodDrawID) {
		this.bloodSampleID = bloodDrawID;
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

	public String getHistoryOfPresentIllness() {
		return historyOfPresentIllness;
	}
	public void setHistoryOfPresentIllness(String hpi) {
		this.historyOfPresentIllness = hpi;
	}
	
	/** Returns the overall impression of the encounter */
	public String getOverallImpression() {
		return overallImpression;
	}

	/** Sets the overall impression of the encounter */
	public void setOverallImpression(String impression) {
		this.overallImpression = impression;
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