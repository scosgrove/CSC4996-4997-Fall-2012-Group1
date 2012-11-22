package edu.wayne.cs.raptor;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * Defines a User entity in the system.
 * 
 * @author Sarah Cosgrove
 * @version 1.0
 * @since 2012-10-23
 */
@Entity
@Table( name = "USERS")
public class User {

	/** A unique user identification number */
	private int userID;

	/** User's (legal) first name */
	private String firstName;
	
	/** User's (legal) last name */
	private String lastName;
	
	/** Username for log in porpoises */
	private String username;

	/** Password phrase */
	private String password;
	
	/** Roles this user performs.  I.e. pharmacist, researcher, etc.  */
	private String roles;
	
	
	/** 
	 * metadata
	 */
	/** User that created this user */
	//currently no way to map a User to a database column successfully, hence string type
	private String creatingUser;

	/** Date this user was first created */
	private Date createdDate;
	
	/** User to last modify or update this user */
	//see above about user type storage in the DB :(
	private String modifyingUser;
	
	/** Date last modification of this user took place, creation counts as a modification */
	private Date lastModifiedDate;
	
	
	/** Default empty constructor */
	public User() {
		super();
	}
	
	public User(String fName, String lName, String username, String password){
		this.firstName = fName;
		this.lastName = lName;
		this.password = password;
		this.username = username;
	}

	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy = "increment")
	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	/** Retrieves the user name. This function returns the user's name */
	public String getUsername() {
		return username;
	}

	/**
	 * Sets the user name. This function sets the user's name to what is
	 * specified in the parameter.
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/** Retrieves the password. This function returns the user's password */
	public String getPassword() {
		return password;
	}

	/**
	 * Sets the password
	 * 
	 * This function sets the user password
	 * 
	 */
	public void setPassword(String password) {
		this.password = password;
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

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public String getCreatingUser() {
		return creatingUser;
	}

	public void setCreatingUser(String creatingUser) {
		this.creatingUser = creatingUser;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifyingUser() {
		return modifyingUser;
	}

	public void setModifyingUser(String modifyingUser) {
		this.modifyingUser = modifyingUser;
	}

	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}
	
	/**
	 * Retrieves the login result
	 * 
	 * This function returns a String message describing the result of the login
	 * attempt.
	 * 
	 */
//	public String getLoginAttemptResult() {
//		return loginAttemptResult;
//	}
//
//	/**
//	 * Sets the login result string
//	 * 
//	 * This method sets the login result string
//	 * 
//	 */
//	// currently no use cases for method. marked for removal.
//	public void setLoginAttemptResult(String loginAttemptResult) {
//		this.loginAttemptResult = loginAttemptResult;
//	}

	/**
	 * Checks password
	 * 
	 * This method checks the password to see if it matches the string "raptor"
	 * and sets the login attempt result string based on the comparison.
	 * 
	 */
//	public String checkPassword() {
//		// search database for password
//		if (this.password.equals(new String("raptor"))) {
//			loginAttemptResult = "Valid password";
//			return "valid";
//		} else {
//			loginAttemptResult = "Invalid password.  Try again.";
//
//			return "invalid";
//		}
//	}
	
	public String clear(){
		this.password = "";
		this.username= "";
		return null;
	}
}
