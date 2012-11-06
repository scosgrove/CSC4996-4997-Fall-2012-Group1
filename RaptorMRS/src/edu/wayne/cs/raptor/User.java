package edu.wayne.cs.raptor;

/**
 * Defines a User entity in the system.
 * 
 * @author Sarah Cosgrove
 * @version 1.0
 * @since 2012-10-23
 */

public class User {

	/** A unique user identification number */
	private int userID;

	/** TODO:User's first name */
	/** User's last name */

	/** Name of user */
	private String username;

	/** Password phrase */
	private String password;

	/** Result of login attempt */
	private String loginAttemptResult;

	/** Default empty constructor */
	public User() {
		super();
	}

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

	/**
	 * Retrieves the login result
	 * 
	 * This function returns a String message describing the result of the login
	 * attempt.
	 * 
	 */
	public String getLoginAttemptResult() {
		return loginAttemptResult;
	}

	/**
	 * Sets the login result string
	 * 
	 * This method sets the login result string
	 * 
	 */
	// currently no use cases for method. marked for removal.
	public void setLoginAttemptResult(String loginAttemptResult) {
		this.loginAttemptResult = loginAttemptResult;
	}

	/**
	 * Checks password
	 * 
	 * This method checks the password to see if it matches the string "raptor"
	 * and sets the login attempt result string based on the comparison.
	 * 
	 */
	public String checkPassword() {
		// search database for password
		if (this.password.equals(new String("raptor"))) {
			loginAttemptResult = "Valid password";
			return "valid";
		} else {
			loginAttemptResult = "Invalid password.  Try again.";

			return "invalid";
		}
	}
}
