package edu.wayne.cs.raptor;

import java.util.List;

import org.hibernate.Session;

public class LoginBean {
	
	private User systemUser;
	private String tempUserName;
	private String tempPassword;
	private String loginResult;
	private boolean authenticated;
	
	public LoginBean(){
		systemUser = new User();
	}

	public User getSystemUser() {
		return systemUser;
	}

	public void setSystemUser(User systemUser) {
		this.systemUser = systemUser;
	}
	
	public String getTempUserName() {
		return tempUserName;
	}

	public void setTempUserName(String tempUserName) {
		this.tempUserName = tempUserName;
	}

	public String getTempPassword() {
		return tempPassword;
	}

	public void setTempPassword(String tempPassword) {
		this.tempPassword = tempPassword;
	}
	
	public String getLoginResult() {
		return loginResult;
	}

	public void setLoginResult(String loginResult) {
		this.loginResult = loginResult;
	}

	public boolean isAuthenticated() {
		return authenticated;
	}

	public void setAuthenticated(boolean authenticated) {
		this.authenticated = authenticated;
	}


	/**
	 * Authenticate user (only user with username "admin" for now )
	 * 
	
	 * 
	 */
public String authenticate() {
	
		
		Session userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		
		// querying for user with username=admin , only admin can login now if already in database
		@SuppressWarnings("unchecked")
		List<User> result = userSession.createQuery( "from User user where user.username='admin'" ).list();
		//result.get(0).setRoles(Role.ADMIN);
		//userSession.saveOrUpdate(result.get(0));
		userSession.getTransaction().commit(); 
		userSession.close();
				
				
		setTempUserName(result.get(0).getUsername());
		setTempPassword(result.get(0).getPassword());
				
		if( this.systemUser.getUsername().equals(this.getTempUserName())
						&& this.systemUser.getPassword().equals(this.getTempPassword())) 
		{
			this.authenticated = true;
			return "admin";
		}
						
		/*	
				// Need to handle role to page navigation 
				// handle first time login 
				// add admin role to admin user 
				if(result != null && result.size() > 0 )	
				{	
					// validating password and username
				}
		*/
		return "invlaid";
		
	}
	
	public String createAdminFirstTime(){
		/*Session userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		userSession.save(new User("AdminFName","AdminLName","admin","raptor"));
		userSession.getTransaction().commit();
		userSession.close();*/
		return "createdAdmin";
	}
	
	public String clear(){
		this.systemUser.setUsername("");
		this.systemUser.setPassword("");
		return "clearedLoginFields";
	}
	

}
