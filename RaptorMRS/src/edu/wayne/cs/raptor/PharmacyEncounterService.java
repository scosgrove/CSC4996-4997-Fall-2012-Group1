package edu.wayne.cs.raptor;

import java.util.Calendar;

import org.hibernate.Session;

public class PharmacyEncounterService {

	protected int encounterID;
	private String firstName;
	private String lastName;
	protected String medDispensed1;
	protected String medDispensed2;
	protected String medDispensed3;
	protected String medDispensed4;
	protected String medDispensed5;
	protected boolean equalPrescribed1 = true;
	protected boolean equalPrescribed2 = true;
	protected boolean equalPrescribed3 = true;
	protected boolean equalPrescribed4 = true;
	protected boolean equalPrescribed5 = true;

	private LoginBean login;
	private Calendar calendar = Calendar.getInstance();

	private Session pharmSession;

	private PharmacyEncounter pharmEncounter;
	
	private String creationResult;
	private String recordIDInstruction;

	public PharmacyEncounterService() {
		pharmEncounter = new PharmacyEncounter();
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getEncounterID() {
		return encounterID;
	}

	public void setEncounterID(int encounterID) {
		this.encounterID = encounterID;
	}

	public String getMedDispensed1() {
		return medDispensed1;
	}

	public void setMedDispensed1(String medDispensed1) {
		this.medDispensed1 = medDispensed1;
	}

	public String getMedDispensed2() {
		return medDispensed2;
	}

	public void setMedDispensed2(String medDispensed2) {
		this.medDispensed2 = medDispensed2;
	}

	public String getMedDispensed3() {
		return medDispensed3;
	}

	public void setMedDispensed3(String medDispensed3) {
		this.medDispensed3 = medDispensed3;
	}

	public boolean getEqualPrescribed1() {
		return equalPrescribed1;
	}

	public void setEqualPrescribed1(boolean equalPrescribed1) {
		this.equalPrescribed1 = equalPrescribed1;
	}

	public boolean getEqualPrescribed2() {
		return equalPrescribed2;
	}

	public void setEqualPrescribed2(boolean equalPrescribed2) {
		this.equalPrescribed2 = equalPrescribed2;
	}

	public boolean getEqualPrescribed3() {
		return equalPrescribed3;
	}

	public void setEqualPrescribed3(boolean equalPrescribed3) {
		this.equalPrescribed3 = equalPrescribed3;
	}

	public Session getPharmSession() {
		return pharmSession;
	}

	public void setPharmSession(Session pharmSession) {
		this.pharmSession = pharmSession;
	}

	public PharmacyEncounter getPharmEncounter() {
		return pharmEncounter;
	}

	public void setPharmEncounter(PharmacyEncounter pharmEncounter) {
		this.pharmEncounter = pharmEncounter;
	}

	public String getMedDispensed4() {
		return medDispensed4;
	}

	public void setMedDispensed4(String medDispensed4) {
		this.medDispensed4 = medDispensed4;
	}

	public String getMedDispensed5() {
		return medDispensed5;
	}

	public void setMedDispensed5(String medDispensed5) {
		this.medDispensed5 = medDispensed5;
	}

	public boolean getEqualPrescribed4() {
		return equalPrescribed4;
	}

	public void setEqualPrescribed4(boolean equalPrescribed4) {
		this.equalPrescribed4 = equalPrescribed4;
	}

	public boolean getEqualPrescribed5() {
		return equalPrescribed5;
	}

	public void setEqualPrescribed5(boolean equalPrescribed5) {
		this.equalPrescribed5 = equalPrescribed5;
	}

	public LoginBean getLogin() {
		return login;
	}

	public void setLogin(LoginBean login) {
		this.login = login;
	}

	public Calendar getCalendar() {
		return calendar;
	}

	public void setCalendar(Calendar calendar) {
		this.calendar = calendar;
	}

	public String getCreationResult() {
		return creationResult;
	}

	public void setCreationResult(String creationResult) {
		this.creationResult = creationResult;
	}

	public String getRecordIDInstruction() {
		return recordIDInstruction;
	}

	public void setRecordIDInstruction(String recordIDInstruction) {
		this.recordIDInstruction = recordIDInstruction;
	}

	public String dataToDatabase() {	
		passToPharmEncounter();

		pharmSession = HibernateUtil.getSessionFactory().openSession();
		pharmSession.beginTransaction();
		encounterID = (Integer) pharmSession.save(pharmEncounter);
		pharmSession.getTransaction().commit();
		pharmSession.close();

		creationResult = "Visit ID "+Integer.toString(encounterID)+" created.";
		recordIDInstruction = "Write visit ID on patient sheet.";

		resetFields();

		return "Valid";
	}

	public void passToPharmEncounter(){
		pharmEncounter = new PharmacyEncounter(firstName, lastName, medDispensed1, medDispensed2, 
				medDispensed3, medDispensed4, medDispensed5, equalPrescribed1, equalPrescribed2, equalPrescribed3, 
				equalPrescribed4, equalPrescribed5);

		pharmEncounter.setCreatingUser(this.login.getSystemUser().getUsername());
		pharmEncounter.setCreatedDate(calendar.getTime());
	}

	public void resetFields(){
		setFirstName(null);
		setLastName(null);
		
		setEncounterID(0);
		setMedDispensed1(null);
		setMedDispensed2(null);
		setMedDispensed3(null);
		setMedDispensed4(null);
		setMedDispensed5(null);
		setEqualPrescribed1(true);
		setEqualPrescribed2(true);
		setEqualPrescribed3(true);
		setEqualPrescribed4(true);
		setEqualPrescribed5(true);
	}

}