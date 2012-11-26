package edu.wayne.cs.raptor;

import java.util.Calendar;

import javax.swing.JOptionPane;

import org.hibernate.Session;

/**
 * This unadulterated, no-holds-barred titan of a class takes care of saving and retrieval for 
 * patient, vitals, encounter, and pharmacy encounters.  like a boss. 
 * @author Jackson Turner
 *
 */

public class EncounterService implements IEncounterService {

	private Session userSession;
	private Calendar calendar;
	
	private LoginBean login;
	private Patient patient;
	private Vitals vitals;
	private Encounter encounter;
	private PharmacyEncounter pharmEncounter;
	
	public EncounterService() {
		calendar = Calendar.getInstance();
	}
	
	public void saveOrUpdateEncounter()
	{
		
	}
	
	public String updateEncounter()
	{
		//housekeeping
		patient.setModifyingUser(login.getSystemUser().getUsername());
		patient.setLastModifiedDate(calendar.getTime());
		
		vitals.setModifyingUser(login.getSystemUser().getUsername());
		patient.setLastModifiedDate(calendar.getTime());
		
		encounter.setModifyingUser(login.getSystemUser().getUsername());
		encounter.setLastModifiedDate(calendar.getTime());
		
		//pharmEncounter intentionally left blank under the design-decision assumption that there will not be a time where someone goes back to edit medication prescribed or dispensed.  
		//get it right the first time.  no cheating. 
		//end housekeeping
		
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		
		userSession.update(patient);
		userSession.update(vitals);
		userSession.update(encounter);
		
		userSession.getTransaction().commit();
		userSession.close();
		
		patient = new Patient();
		vitals = new Vitals();
		encounter = new Encounter();
		
		//return to create.jsp after the create patient form has been submitted
		return "create";
	}
	
	public String saveNewEncounter()
	{
		//housekeeping
		patient.setCreatingUser(login.getSystemUser().getUsername());
		patient.setCreatedDate(calendar.getTime());
		patient.setModifyingUser(login.getSystemUser().getUsername());
		patient.setLastModifiedDate(calendar.getTime());
		
		vitals.setCreatingUser(login.getSystemUser().getUsername());
		vitals.setCreatedDate(calendar.getTime());
		vitals.setModifyingUser(login.getSystemUser().getUsername());
		vitals.setLastModifiedDate(calendar.getTime());
		
		encounter.setCreatingUser(login.getSystemUser().getUsername());
		encounter.setCreatedDate(calendar.getTime());
		encounter.setModifyingUser(login.getSystemUser().getUsername());
		encounter.setLastModifiedDate(calendar.getTime());
		
		pharmEncounter.setCreatingUser(login.getSystemUser().getUsername());
		pharmEncounter.setCreatedDate(calendar.getTime());
		//end housekeeping
		
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		
		userSession.save(patient);
		userSession.save(vitals);
		userSession.save(encounter);
		userSession.save(pharmEncounter);
		
		userSession.getTransaction().commit();
		userSession.close();
		
		patient = new Patient();
		vitals = new Vitals();
		encounter = new Encounter();
		pharmEncounter = new PharmacyEncounter();
		
		JOptionPane.showMessageDialog(null, "Record saved!", "Success!", JOptionPane.INFORMATION_MESSAGE);
		
		//return "create" to go back to create.jsp after the create patient form is submitted
		return "create";
	}

	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
	public Vitals getVitals() {
		return vitals;
	}
	public void setVitals(Vitals vitals) {
		this.vitals = vitals;
	}
	
	public PharmacyEncounter getPharmEncounter() {
		return pharmEncounter;
	}
	public void setPharmEncounter(PharmacyEncounter pharmEncounter) {
		this.pharmEncounter = pharmEncounter;
	}
	
	public void setLogin(LoginBean login) {
		this.login = login;
	}
	public LoginBean getLogin()
	{
		return login;
	}
	
	public void setEncounter(Encounter encounter)
	{
		this.encounter = encounter;
	}
	public Encounter getEncounter()
	{
		return encounter;
	}
}