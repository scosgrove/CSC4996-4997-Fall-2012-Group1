package edu.wayne.cs.raptor;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class currentTimeAndDate {

	public static String getDate(){
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		//get current date time with Date()
		Date date = new Date();
		String s1 = dateFormat.format(date);
		return s1;
	}
	
	public static String getTime(){
		DateFormat dateFormat = new SimpleDateFormat("HH:mm");
		//get current date time with Date()
		Date date = new Date();
		String s1 = dateFormat.format(date);
		return s1;
	}
}
