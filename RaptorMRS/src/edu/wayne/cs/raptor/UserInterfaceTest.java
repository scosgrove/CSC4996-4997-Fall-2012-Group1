package edu.wayne.cs.raptor;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class UserInterfaceTest {
	
	@Test
	public void testSetAndGetUsername() {
		String expected = "beercan";
		String actual;
		UserInterface ui = new UserInterface();
		ui.setUsername(expected);
		actual = ui.getUsername();
		assert(expected.equals(actual));
	}

	@Test
	public void testSetandGetPassword() {
		String expected = "hairpiece";
		String actual;
		UserInterface ui = new UserInterface();
		ui.setPassword(expected);
		actual = ui.getPassword();
		assert(expected.equals(actual));
	}

	@Test
	public void testGetValidLoginAttemptResult() 
	{
		String successAttempt = "Valid password";
		String validPw = "raptor";
		UserInterface ui = new UserInterface();
		ui.setPassword(validPw);
		ui.checkPassword();
		assert(ui.getLoginAttemptResult().equals(successAttempt));
	}
	
	@Test
	public void testGetInvalidLoginAttemptResult()
	{
		
		String failAttempt = "Invalid password.  Try again.";
		String invalidPw = "pterodactyl";
		UserInterface ui = new UserInterface();
		ui.setPassword(invalidPw);
		ui.checkPassword();
		assert(ui.getLoginAttemptResult().equals(failAttempt));
	}

	//will this method be used or was it just auto-generated?
//	@Test
//	public void testSetloginAttemptResult() {
//		fail("Not yet implemented");
//	}

	@Test
	public void testCheckValidPassword() 
	{
		String success = "valid";
		String validPw = "raptor";
		UserInterface ui = new UserInterface();
		ui.setPassword(validPw);
		assert(ui.checkPassword().equals(success));
	}
	
	@Test
	public void testCheckInvalidPassword()
	{
		String fail= "invalid";
		String invalidPw = "pterodactyl";
		UserInterface ui = new UserInterface();
		ui.setPassword(invalidPw);
		assert(ui.checkPassword().equals(fail));
	}

}
