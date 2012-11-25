package edu.wayne.cs.raptor;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;


public class UserService implements IUserService {

	/** User fields*/
	private int userID = 0;
	private String firstName;
	private String lastName;
	private String userName;
	private String password;
	private String roles;
	private String creatingUser;
	private Date createdDate;
	private String modifyingUser;
	private Date lastModifiedDate;
	private User newUser;
	/** */
	
	private User loggedInUser;
	
	private Session userSession;
	
	private Calendar calendar = Calendar.getInstance();
	
	/**
	 * 
	 * @see edu.wayne.cs.raptor.IUserService#saveUser(edu.wayne.cs.raptor.User)
	 */
	@Override
	public void createUser()
	{
		if(userID != 0)
			newUser.setUserID(userID);
			
		if(!UnitConverter.isNullOrBlank(firstName))
			newUser.setFirstName(firstName);
		
		if(!UnitConverter.isNullOrBlank(lastName))
			newUser.setLastName(lastName);
		
		if(!UnitConverter.isNullOrBlank(userName))
			newUser.setUsername(userName);
		
		if(!UnitConverter.isNullOrBlank(password))
			newUser.setPassword(password);
		
		if(!UnitConverter.isNullOrBlank(roles))
			newUser.setRoles(roles);
		
		newUser.setCreatingUser(this.loggedInUser.getUsername());
		
		newUser.setCreatedDate(calendar.getTime());
		
		newUser.setModifyingUser(this.loggedInUser.getUsername());
		
		newUser.setLastModifiedDate(calendar.getTime());
		
		saveUser(newUser);
	}
	
	@Override
	public void updateUser()
	{
		if(userID != 0)
			newUser.setUserID(userID);
			
		if(!UnitConverter.isNullOrBlank(firstName))
			newUser.setFirstName(firstName);
		
		if(!UnitConverter.isNullOrBlank(lastName))
			newUser.setLastName(lastName);
		
		if(!UnitConverter.isNullOrBlank(userName))
			newUser.setUsername(userName);
		
		if(!UnitConverter.isNullOrBlank(password))
			newUser.setPassword(password);
		
		if(!UnitConverter.isNullOrBlank(roles))
			newUser.setRoles(roles);
		
		newUser.setModifyingUser(this.loggedInUser.getUsername());
		
		newUser.setLastModifiedDate(calendar.getTime());
		
		saveUser(newUser);
	}
	
	@Override
	public User saveUser(User newUser) {
	    userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		userSession.saveOrUpdate(newUser);
		userSession.close();
		return null;
		
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
		
		userSession.getTransaction().commit();
		userSession.close();
		
		//this field should be unique in the DB as well, so the result list should contain only one record.  
		if(!result.isEmpty())
			return result.get(0);
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
