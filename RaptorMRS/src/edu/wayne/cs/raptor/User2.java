package edu.wayne.cs.raptor;

import java.util.Date;

public class User2 {
	
	private int userID;
	private String userName;
	private String passphrase;  // Let's replace PASSWORD with PASSPHRASE
	private String firstName;
	private String lastName;
	private Date startDate;
	private Date endDate;
	private boolean authenticated;
	private boolean activeUser;  // If current date is between startDate and endDate
	private String roles;
	
	
	
	public User2(){
		super();
		this.userID = -1;
		this.userName = null;
		this.firstName = null;
		this.lastName = null;
		this.startDate = null;
		this.endDate = null;
		this.authenticated = false;
		this.activeUser = false;
		this.roles = null;
	}
	
	
	public User2(int userID, String userName, String firstName,
			String lastName, Date startDate, Date endDate,
			boolean authenticated, boolean activeUser, String roles) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.authenticated = authenticated;
		this.activeUser = activeUser;
		this.roles = roles;
	}




	public int getUserID() {
		return userID;
	}




	public void setUserID(int userID) {
		this.userID = userID;
	}




	public String getUserName() {
		return userName;
	}




	public void setUserName(String userName) {
		this.userName = userName;
	}




	public String getPassphrase() {
		return passphrase;
	}


	public void setPassphrase(String passphrase) {
		this.passphrase = passphrase;
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




	public Date getStartDate() {
		return startDate;
	}




	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}




	public Date getEndDate() {
		return endDate;
	}




	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}




	public boolean isAuthenticated() {
		return authenticated;
	}




	public void setAuthenticated(boolean authenticated) {
		this.authenticated = authenticated;
	}




	public boolean isActiveUser() {
		return activeUser;
	}




	public void setActiveUser(boolean activeUser) {
		this.activeUser = activeUser;
	}




	public String getRoles() {
		return roles;
	}




	public void setRoles(String roles) {
		this.roles = roles;
	}
	
	
	
	
}
