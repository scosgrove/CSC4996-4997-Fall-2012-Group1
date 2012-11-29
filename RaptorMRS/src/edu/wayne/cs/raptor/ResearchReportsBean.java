package edu.wayne.cs.raptor;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;

import javax.swing.JFileChooser;

public class ResearchReportsBean {
	
	
		public static void generateBloodSampleReport()
	   {
		   
		   String filename = null;
		   JFileChooser jFileChooser = new JFileChooser();
		   jFileChooser.setSelectedFile(new File(suggestFileName() + "-BloodSampleReport.csv"));
		   int returnValue = jFileChooser.showSaveDialog(null);
		   if ( returnValue == jFileChooser.APPROVE_OPTION )
		   {
			   File selectedFile = jFileChooser.getSelectedFile();
			   generateBloodSampleCsvFile(selectedFile);
		   }
	   }
	 
	   private static void generateBloodSampleCsvFile(File filehandle)
	   {
		   try
		   {
			   FileWriter writer = new FileWriter(filehandle);

			   //Get Data from raptor
			   
			   
			   writer.append("Blood Sample Report");
			   writer.append('\n');
			   writer.append("SAMPLE NO.");
			   writer.append(',');
			   writer.append("CONDITIONS");
			   writer.append(',');
			   writer.append("TREATMENT GIVEN");
			   writer.append(',');
			   writer.append("RX WRITTEN");
			   writer.append(',');
			   writer.append("RX GIVEN");
			   writer.append('\n');
			   
			   writer.append("123");
			   writer.append(',');
			   writer.append("Sickle Cell Anemia");
			   writer.append(',');
			   writer.append("<none>");
			   writer.append(',');
			   writer.append("Iron Suppliment");
			   writer.append(',');
			   writer.append("Iron Suppliment");
			   writer.append('\n');
		 
			   //generate whatever data you want
		 
			   writer.flush();
			   writer.close();
			}
			catch(IOException e)
			{
				e.printStackTrace();
			}
	   }
	   
	   public static void generateConditionReport()
	   {
		   String filename = null;
		   JFileChooser jFileChooser = new JFileChooser();
		   jFileChooser.setSelectedFile(new File(suggestFileName() + "-ConditionReport.csv"));
		   int returnValue = jFileChooser.showSaveDialog(null);
		   if ( returnValue == jFileChooser.APPROVE_OPTION )
		   {
			   File selectedFile = jFileChooser.getSelectedFile();
			   generateConditionFile(selectedFile);
		   }
	   }
	 
	   private static void generateConditionFile(File filehandle)
	   {
		   try
		   {
			   FileWriter writer = new FileWriter(filehandle);

			   //Get Data from raptor
			   
			   
			   writer.append("Conditon Report");
			   writer.append('\n');
			   
			   writer.append("Test");
			    writer.append(',');
			    writer.append("Age");
			    writer.append('\n');
		 
			    writer.append("Marek");
			    writer.append(',');
			    writer.append("Raptor");
		            writer.append('\n');
		 
			    writer.append("YOUR NAME");
			    writer.append(',');
			    writer.append("29");
			    writer.append('\n');
		 
			    //generate whatever data you want
		 
			    writer.flush();
			    writer.close();
			}
			catch(IOException e)
			{
				e.printStackTrace();
			}
	   }
	   
	   public static void generateRxReport()
	   {
		   String filename = null;
		   JFileChooser jFileChooser = new JFileChooser();
		   jFileChooser.setSelectedFile(new File(suggestFileName() + "-RxReport.csv"));
		   int returnValue = jFileChooser.showSaveDialog(null);
		   if ( returnValue == jFileChooser.APPROVE_OPTION )
		   {
			   File selectedFile = jFileChooser.getSelectedFile();
			   generateRxFile(selectedFile);
		   }
	   }
	 
	   private static void generateRxFile(File filehandle)
	   {
		   try
		   {
			   FileWriter writer = new FileWriter(filehandle);

			   //Get Data from raptor
			   
			   
			   writer.append("Rx Report");
			   writer.append('\n');
			   
			   writer.append("Test");
			   writer.append(',');
			   writer.append("Age");
			   writer.append('\n');
		 
			   writer.append("Marek");
			   writer.append(',');
			   writer.append("Raptor");
		           writer.append('\n');
		 
			   writer.append("YOUR NAME");
			   writer.append(',');
			   writer.append("29");
			   writer.append('\n');
		 
			   //generate whatever data you want
		 
			   writer.flush();
			   writer.close();
			}
			catch(IOException e)
			{
				e.printStackTrace();
			}
	   }
	   
	   private static String suggestFileName() {
	   		
		   String sfilename = "";
		   Calendar rightNow = Calendar.getInstance();
		   		
		   //get the date
		   int temp_int = rightNow.get(Calendar.YEAR);
		   sfilename = sfilename + temp_int;
		   temp_int = rightNow.get(Calendar.MONTH);
		   temp_int++;
		   if ( temp_int < 10 )
			   sfilename = sfilename + "0";
		   sfilename = sfilename + temp_int;
		   temp_int = rightNow.get(Calendar.DAY_OF_MONTH);
		   if ( temp_int < 10 )
			   sfilename = sfilename + "0";
		   sfilename = sfilename + temp_int + "-";
		   //Get the time
		   temp_int = rightNow.get(Calendar.HOUR);
		   if ( rightNow.get(Calendar.AM_PM) == 0 )
		   {
			   if ( temp_int < 10 )
				   sfilename = sfilename + "0";
		   }
		   else
			   temp_int = temp_int + 12;
		   
		   sfilename = sfilename + temp_int;
		   temp_int = rightNow.get(Calendar.MINUTE);
		   sfilename = sfilename + temp_int;
		   temp_int = rightNow.get(Calendar.SECOND);
		   if ( temp_int < 10 )
			   sfilename = sfilename + "0" + temp_int;
		   else
			   sfilename = sfilename + temp_int;
	
		   return sfilename;
	   }
	   

}
