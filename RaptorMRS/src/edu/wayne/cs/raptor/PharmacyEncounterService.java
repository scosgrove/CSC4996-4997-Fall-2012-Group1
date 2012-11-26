package edu.wayne.cs.raptor;

import java.util.Calendar;

import org.hibernate.Session;

	public class PharmacyEncounterService {
	
	private LoginBean login;
	private Calendar calendar = Calendar.getInstance();
	
	private Session pharmSession;
	
	private PharmacyEncounter pharmEncounter;
	
	public PharmacyEncounterService() {
		pharmEncounter = new PharmacyEncounter();
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
	

	public LoginBean getLogin() {
		return login;
	}

	public void setLogin(LoginBean login) {
		this.login = login;
	}
	
	public String dataToDatabase() {	
		passToPharmEncounter();
		
		pharmSession = HibernateUtil.getSessionFactory().openSession();
		pharmSession.beginTransaction();
		pharmSession.saveOrUpdate(pharmEncounter);
		pharmSession.getTransaction().commit();
		pharmSession.close();
		/* must have encounterID
		 * add encounterID to database
		 * add existing medDispensed variables and corresponding equalPrescribed variables*/
		
		resetFields();
		
		return "pharm";
	}
	
	public void passToPharmEncounter(){
		pharmEncounter.setCreatingUser(this.login.getSystemUser().getUsername());
		pharmEncounter.setCreatedDate(calendar.getTime());
	}
	
	public void resetFields(){
		setPharmEncounter(new PharmacyEncounter());
	}

}