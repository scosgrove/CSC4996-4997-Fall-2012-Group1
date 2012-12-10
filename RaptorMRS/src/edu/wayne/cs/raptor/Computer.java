package edu.wayne.cs.raptor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


/* This class defines the unique ID for the computer used for creating encounter IDs
 * Author: Tom Hickman
 */


@Entity
@Table (name = "COMPUTER")
public class Computer {

	private int computerID;
	
	public Computer() {
		
	}
	
	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy = "increment")
	public int getComputerID() {
		return computerID;
	}

	public void setComputerID(int computerID) {
		this.computerID = computerID;
	}
	
}
