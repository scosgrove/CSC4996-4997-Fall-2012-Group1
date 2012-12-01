package edu.wayne.cs.raptor;

import org.hibernate.Session;

public class PharmacyEncounterService {

	protected int encounterID = 123;
	protected String medDispensed1;
	protected String medDispensed2;
	protected String medDispensed3;
	protected String medDispensed4;
	protected String medDispensed5;
	protected boolean equalPrescribed1;
	protected boolean equalPrescribed2;
	protected boolean equalPrescribed3;
	protected boolean equalPrescribed4;
	protected boolean equalPrescribed5;
	
	protected String sameAsPrescribed4;
	
	private Session pharmSession;
	
	private PharmacyEncounter pharmEncounter;
	
	public PharmacyEncounterService() {
		pharmEncounter = new PharmacyEncounter();
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
	
	public String dataToDatabase() {
		pharmEncounter.setEncounterID(encounterID);
		pharmEncounter.setMedDispensed1(medDispensed1);
		pharmEncounter.setMedDispensed2(medDispensed2);
		pharmEncounter.setMedDispensed3(medDispensed3);
		pharmEncounter.setMedDispensed4(medDispensed4);
		pharmEncounter.setMedDispensed5(medDispensed5);
		pharmEncounter.setEqualPrescribed1(equalPrescribed1);
		pharmEncounter.setEqualPrescribed2(equalPrescribed2);
		pharmEncounter.setEqualPrescribed3(equalPrescribed3);
		pharmEncounter.setEqualPrescribed4(equalPrescribed4);
		pharmEncounter.setEqualPrescribed5(equalPrescribed5);
		
		pharmSession = HibernateUtil.getSessionFactory().openSession();
		pharmSession.beginTransaction();
		pharmSession.saveOrUpdate(pharmEncounter);
		pharmSession.getTransaction().commit();
		pharmSession.close();
		/* must have encounterID
		 * add encounterID to database
		 * add existing medDispensed variables and corresponding equalPrescribed variables*/
		
		return "Valid";
	}

	public String getSameAsPrescribed4() {
		return sameAsPrescribed4;
	}

	public void setSameAsPrescribed4(String sameAsPrescribed4) {
		this.sameAsPrescribed4 = sameAsPrescribed4;
	}


}