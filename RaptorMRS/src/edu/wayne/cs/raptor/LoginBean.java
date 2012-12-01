package edu.wayne.cs.raptor;

import java.util.List;

import org.hibernate.Session;

/**  This bean handles the User login and authentication against the database
 * 
 * @author Ramez
 *
 */
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


	/** Authenticate user */
public String authenticate() {
	
		
		Session userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		
		String u = this.systemUser.getUsername();
		
		@SuppressWarnings("unchecked")
		List<User> dbUsername = userSession.createQuery( "from User where username='"+u+"'").list();
		userSession.getTransaction().commit(); 
		userSession.close();
		
		// Verify the retrieved list of data is not empty before using it 
		if(dbUsername != null && dbUsername.size() >0)
		{
			setTempUserName(dbUsername.get(0).getUsername());
			setTempPassword(dbUsername.get(0).getPassword());
		}
	
		
		// Check if username exists 
		if (this.systemUser.getUsername().equals(this.getTempUserName()))
		{
			//If the username exists , check if the password is correct
			if( this.systemUser.getPassword().equals(this.getTempPassword()) )
			{
				setAuthenticated(true);
				setSystemUser(dbUsername.get(0));
				return handleRoleToPage(dbUsername.get(0));
			}
			//  If password incorrect
			else
			{
				setLoginResult("Incorrect Password. Try again");
				return "invalid";
			}
		
		}	
		//Username is not in the database
		setLoginResult("Username doesn't exist. Please sign up first");
		return "noexist";
	}
	
	/** Handles the default page the user is taken to upon login */
	public String handleRoleToPage(User user){
		
		if (user.getRoles().equals(Role.ADMIN) )
			return "admin";
		if (user.getRoles().equals(Role.DOCTOR) )
			return "create";
		if (user.getRoles().equals(Role.PHARMACIST))
			return "pharm";
		return "research";
	}
	
	/** Sign out the current user
	 *  TODO: Not tested yet with JSP pages  */
	
	public String logout(){
		setSystemUser(new User());
		setLoginResult("");
		setAuthenticated(false);
		setTempUserName("");
		setTempPassword("");
		return "index";
	}
	
	public String clear(){
		return "clearedLoginFields";
	}
	
	/* Run an insert of admin user into the DB or use a method to create admin beforehand
	 * 
	 * public String createAdminFirstTime(){
	return "createdAdmin";
}*/
	

}
