package edu.wayne.cs.raptor;

public class UserInterface {
	
	  private String username; 
	  private String password;
	  private String loginAttemptResult;
	  
	  public String getUsername() {
	    return username;
	  }
	  public void setUsername(String username) {
	    this.username = username;
	  }
	  public String getPassword() {
	    return password;
	  }
	  
	  public void setPassword(String password) {
		    this.password = password;
	  }
	  public String getloginAttemptResult() {
		    return loginAttemptResult;
		  }
	  public void setloginAttemptResult(String loginAttemptResult) {
		    this.loginAttemptResult = loginAttemptResult;
		  }
	  public String checkPassword() {
		  //search database for password
		  if (this.password.equals(new String("raptor"))) {
			  loginAttemptResult = "Valid password";
		  		return "valid";
		  }
		  else {
			  loginAttemptResult = "Invalid password.  Try again.";
			  
			  return "invalid";
	  }
	  }
}
