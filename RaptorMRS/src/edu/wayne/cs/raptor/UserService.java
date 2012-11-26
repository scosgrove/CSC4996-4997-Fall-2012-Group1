package edu.wayne.cs.raptor;

import java.util.Calendar;
import java.util.List;
import org.hibernate.Session;

////////////////////
// Authors: Muhammed and Ramez
////////////////////


public class UserService implements IUserService {

	/** User fields*/
	private User newUser;
	private LoginBean login;
	private Session userSession;
	private Calendar calendar = Calendar.getInstance();
	
	public UserService(){
		newUser = new User();
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
	
	
	/**
	 * 
	 * @see edu.wayne.cs.raptor.IUserService#saveUser(edu.wayne.cs.raptor.User)
	 */
	@Override
	public String createUser()
	{
		
		
		newUser.setCreatingUser(this.login.getSystemUser().getUsername());
		
		newUser.setCreatedDate(calendar.getTime());
		
		newUser.setModifyingUser(this.login.getSystemUser().getUsername());
		
		newUser.setLastModifiedDate(calendar.getTime()); 
		
		
		saveUser(newUser);
		
		return "admin";
		
	}
	
	
	@Override
	public String updateUser()
	{
		
		newUser.setModifyingUser(this.login.getSystemUser().getUsername());
		
		newUser.setLastModifiedDate(calendar.getTime()); 
		
		saveUser(newUser);
		
		return "admin";
		
	}
	
	@Override
	public String searchUser()
	{
		
		getUserByUsername(newUser.getUsername());
	//	getUserByFirstName(newUser.getFirstName()); --Need to be able to search for first name and last name
	//	getUserByLastName(newUser.getLastName());
		return "search";
	}
	
	@Override
	public void saveUser(User newUser) {
	    userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		userSession.saveOrUpdate(newUser);
		userSession.getTransaction().commit();
		userSession.close();
		
		newUser = new User();
	}

	/**
	 * This method will return the user with the specified userID.  
	 */
	@Override
	public User getUser(int _userID) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		
		@SuppressWarnings("unchecked")
		//this seems like an incomplete query.  investigate further.  also this doesnt make any sense.  plurality?
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

	/**
	 * This method will return the user with the specified username. 
	 */
	@Override
	public User getUserByUsername(String _username) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
	
		
		@SuppressWarnings("unchecked")
		List<User> result = userSession.createQuery("from User user where user.username='" + _username + "'").list();
		

		setNewUser(result.get(0));
		
		userSession.getTransaction().commit();
		userSession.close();
		
		//this field should be unique in the DB as well, so the result list should contain only one record.  
		if(!result.isEmpty())
			return result.get(0);
		else
			return null;
	}
	
	/**
	 * This method will return the user with the specified first name. 
	 */
	@Override
	public User getUserByFirstName(String _firstName) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
	
		
		@SuppressWarnings("unchecked")
		List<User> firstNameResult = userSession.createQuery("from User user where user.firstName='" + _firstName + "'").list();
		

		setNewUser(firstNameResult.get(0));
		
		userSession.getTransaction().commit();
		userSession.close();
		
		//this field should be unique in the DB as well, so the result list should contain only one record.  
		if(!firstNameResult.isEmpty())
			return firstNameResult.get(0);
		else
			return null;
	}
	
	/**
	 * This method will return the user with the specified last name. 
	 */
	@Override
	public User getUserByLastName(String _lastName) {
		userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
	
		
		@SuppressWarnings("unchecked")
		List<User> lastNameResult = userSession.createQuery("from User user where user.lastName='" + _lastName + "'").list();
		

		setNewUser(lastNameResult.get(0));
		
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
		Session userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		
		// querying for user with username=admin , only admin can login now if already in database
		@SuppressWarnings("unchecked")
		List<User> result = userSession.createQuery( "from User user where user.username='admin'" ).list();
		//result.get(0).setRoles(Role.ADMIN);
		//userSession.saveOrUpdate(result.get(0));
		userSession.getTransaction().commit(); 
		userSession.close();
		return null;
	}





	

}
