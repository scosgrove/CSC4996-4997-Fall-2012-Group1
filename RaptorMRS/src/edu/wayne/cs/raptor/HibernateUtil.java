package edu.wayne.cs.raptor;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/** Should there be a class that serves an entity in the system which gets current session from
 *  HibernateUtil and operate ...
 *
 *  saves, searches for a Patient
 *  should implement other similar classes for User / Encounter / Med ?
 * 
 * @author Ramez
 *
 */
public class HibernateUtil {
	
	/*public static void main(String[] args){
	
			Session session = sess.openSession();
			session.beginTransaction();
			session.save(new User("AdminFName","AdminLName","admin","raptor"));
			session.save( new User("ramez", "habib","ramHab","raptormrs") );
			session.save( new Patient());
			session.getTransaction().commit();
			session.close();
			
			
			//session = sess.openSession();
	        session.beginTransaction();
	        List result = session.createQuery( "from User" ).list();
			for ( User user : (List<User>) result ) {
				System.out.println( "User (" + user.getFirstName() + ") : " + user.getUsername()+", "+user.getUserID() );
			}
			List result2 = session.createQuery("from Patient" ).list();
			for( Patient p : (List<Patient>)result2){
				System.out.println("Patient " +p.getLastName()+", "+p.getFirstName() +", " +p.getPatientID());
			}
			List result3 = session.createQuery("from Encounter" ).list();
			for( Encounter e : (List<Encounter>)result3){
				System.out.println("Encounter " +e.getEncounterID()+", "+e.getPatientID() );
			}
	        session.getTransaction().commit(); 
	        session.close();
	}*/
	
	private static final SessionFactory sess = buildSessionFactory();
	
	private static SessionFactory buildSessionFactory(){
		try {
			// Create session factory from hibernate.cfg.xml
			return  new Configuration().configure().buildSessionFactory();     // maybe changed to annontation configuration
		}
		catch (Throwable ex){
			// Log the exception since it might be swallowed 
			System.err.println("Initial SessionFactory creation failed." +ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
	
	public static SessionFactory getSessionFactory(){
		return sess;
	}
	


}