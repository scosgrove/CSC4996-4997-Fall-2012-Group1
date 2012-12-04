package edu.wayne.cs.raptor;

import java.util.Calendar;
import java.util.List;
import org.hibernate.Session;

/** This class serves User entities in the system: Creating, retrieving Users
 * 
 *  If the user being searched for is not in database , fields will not populate, maybe 
 *  display an error/notification message 
 *  
 *  TODO: Password will not display after search is performed, if left blank, it's updated to blank in DB
 *  TODO: Still need to check for duplicates, null search fields and null create/add fields 
 *  TODO: Are we going to delete any users or void/retire users.
 *  TODO: Change user/patient/encounter/vitals scope to none instead of session
 *  
 * @author Muhammed, Ramez
 *
 */


public class UserService implements IUserService {

	/** User fields*/
	private User newUser;
	private LoginBean login;
	private Session userSession;
	private Calendar calendar = Calendar.getInstance();
	
	private String searchUsername;   // the fields to search for user by , getters and setters 
	private String searchFirst;		// need to be reset after search 
	private String searchLast;
	private boolean isCreating;
	
	public UserService(){
		newUser = new User();
		setCreating(true);
	}
	
	public void setLogin(LoginBean login){
		this.login=login;
	}
	
	public User getNewUser() {
		return newUser;
	}

	public void setNewUser(User newUser) {
		this.newUser = newUser;
	}
	
	public String getSearchUsername() {
		return searchUsername;
	}

	public void setSearchUsername(String searchUsername) {
		this.searchUsername = searchUsername;
	}

	public String getSearchFirst() {
		return searchFirst;
	}

	public void setSearchFirst(String searchFirst) {
		this.searchFirst = searchFirst;
	}

	public String getSearchLast() {
		return searchLast;
	}

	public void setSearchLast(String searchLast) {
		this.searchLast = searchLast;
	}

	public boolean isCreating() {
		return isCreating;
	}

	public void setCreating(boolean isCreating) {
		this.isCreating = isCreating;
	}
	
	/** Called on an Add User action */
	public String createUser()
	{
		newUser.setCreatingUser(this.login.getSystemUser().getUsername());
		newUser.setCreatedDate(calendar.getTime());
		newUser.setModifyingUser(this.login.getSystemUser().getUsername());
		newUser.setLastModifiedDate(calendar.getTime()); 
		saveUser(newUser);
		newUser = new User();
		return "admin";
		
	}
	
	/** Called on an Update User action */
	public String updateUser()
	{
		setCreating(true);
		newUser.setModifyingUser(this.login.getSystemUser().getUsername());
		newUser.setLastModifiedDate(calendar.getTime()); 
		saveUser(newUser);
		newUser = new User();
		return "admin";
	}
	
	/** Function to search for user by specified parameters */
	public String searchUser()
	{
		setCreating(false);
		if (!this.searchUsername.isEmpty())
			if ( getUserByUsername(this.searchUsername)!=null )
				setNewUser(getUserByUsername(this.searchUsername));			
		if(!this.searchLast.isEmpty())
			if ( getUserByLastName(this.searchLast)!=null )
				setNewUser(getUserByLastName(this.searchLast));	
		if(!this.searchFirst.isEmpty())
			if ( getUserByFirstName(this.searchFirst)!=null )
				setNewUser(getUserByFirstName(this.searchFirst));	
		return "admin";
	}
	
	public String resetFields(){
		setSearchUsername("");
		setSearchFirst("");
		setSearchLast("");
		setCreating(true);
		setNewUser(new User());
		return "admin";
	}
	
	@Override
	public void saveUser(User newUser) {
	    userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		userSession.saveOrUpdate(newUser);
		userSession.getTransaction().commit();
		userSession.close();
	}

	/** This method will return the user with the specified userID. 
	 *   This might not be needed from the point of view of a client but could be useful for us */
	@Override
	public User getUser(int _userID) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> result = userSession.createQuery("from User where user.userID='" + _userID + "'").list();
		//is this commit really necessary since we are not inserting records?
		userSession.getTransaction().commit();
		userSession.close();
		
		//should be only one result here since userID is a unique PK in the DB
		if(!result.isEmpty())
			return result.get(0);
		else
			return null;
	}

	/** This method will return the user with the specified username. */
	@Override
	public User getUserByUsername(String _username) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> result = userSession.createQuery("from User user where user.username='" + _username + "'").list();
		userSession.getTransaction().commit();
		userSession.close();
		
		//this field should be unique in the DB as well, so the result list should contain only one record.  
		if(!result.isEmpty())
			return result.get(0);
		return null;
	}
	
	/** This method will return the user with the specified first name. */
	@Override
	public User getUserByFirstName(String _firstName) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> firstNameResult = userSession.createQuery("from User user where user.firstName='" + _firstName + "'").list();
		userSession.getTransaction().commit();
		userSession.close();
		
		//this field should be unique in the DB as well, so the result list should contain only one record.  
		if(!firstNameResult.isEmpty())
			return firstNameResult.get(0);
		else
			return null;
	}
	
	/**  This method will return the user with the specified last name. */
	@Override
	public User getUserByLastName(String _lastName) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> lastNameResult = userSession.createQuery("from User user where user.lastName='" + _lastName + "'").list();
		userSession.getTransaction().commit();
		userSession.close();
		
		//this field should be unique in the DB as well, so the result list should contain only one record.  
		if(!lastNameResult.isEmpty())
			return lastNameResult.get(0);
		else
			return null;
	}

	@Override
	public List<User> getAllUsers() {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> result = userSession.createQuery( "from User" ).list();
		userSession.getTransaction().commit(); 
		userSession.close();
		
		if(!result.isEmpty())
			return result;
		else
			return null;
	}





	

}
