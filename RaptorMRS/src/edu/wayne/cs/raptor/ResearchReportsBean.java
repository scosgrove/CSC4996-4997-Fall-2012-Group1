package edu.wayne.cs.raptor;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.Calendar;
import java.util.List;

import javax.swing.JFileChooser;

import org.hibernate.Session;

import com.mysql.jdbc.DatabaseMetaData;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSetMetaData;
import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class ResearchReportsBean {
	
	PharmacyEncounter ec = new PharmacyEncounter();
	
	public static void generateBloodSampleReport(){
		
		
	   
		   String filename = null;
		   JFileChooser jFileChooser = new JFileChooser();
		   jFileChooser.setSelectedFile(new File(suggestFileName() + "-BloodSample.csv"));
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
			   
			   Session userSession = HibernateUtil.getSessionFactory().openSession();
				userSession.beginTransaction();
			
				
				List<PharmacyEncounter> dbUsername = userSession.createQuery( "from PharmacyEncounter").list();
				userSession.getTransaction().commit(); 
				userSession.close();
				
				
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
				
				for (int i = 0; i < dbUsername.size(); i++)
				{
					
					writer.append(dbUsername.get(i).getMedDispensed1());
					writer.append('\n');
			   
			   
			   //generate whatever data you want
		 
			}
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
			   
			   Session userSession = HibernateUtil.getSessionFactory().openSession();
				userSession.beginTransaction();
			
				
				List<Encounter> dbencounter = userSession.createQuery( "from Encounter").list();
				List<PharmacyEncounter> dbpharm = userSession.createQuery( "from PharmacyEncounter").list();
				userSession.getTransaction().commit(); 
				userSession.close();
			   
				
			   writer.append("Conditon Report");
			   writer.append('\n');
			   
			   writer.append("Sample#");
			   writer.append(',');
			   writer.append("Condition1");
			   writer.append(',');
			   writer.append("Condition2");
			   writer.append(',');
			   writer.append("Condition3");
			   writer.append(',');
			   writer.append("Condition4");
			   writer.append(',');
			   writer.append("Condition5");
			   writer.append(',');
			   writer.append("Rx Prescribed1");
			   writer.append(',');
			   writer.append("Rx Prescribed2");
			   writer.append(',');
			   writer.append("Rx Prescribed3");
			   writer.append(',');
			   writer.append("Rx Prescribed4");
			   writer.append(',');
			   writer.append("Rx Prescribed5");
			   writer.append(',');
			 /*
			   writer.append("Rx Given1");
			   writer.append('\n');
			   writer.append("Rx Given2");
			   writer.append(',');
			   writer.append("Rx Given3");
			   writer.append(',');
			   writer.append("Rx Given4");
			   writer.append(',');
			   writer.append("Rx Given5");
			   */
			   writer.append('\n');
			   
			   
			   for (int i = 0; i < dbencounter.size(); i++)
			   {
				    writer.append(String.valueOf(dbencounter.get(i).getEncounterID()));
				    writer.append(',');
				    writer.append(dbencounter.get(i).getCondition1());
				    writer.append(',');
				    writer.append(dbencounter.get(i).getCondition2());
				    writer.append(',');
				    writer.append(dbencounter.get(i).getCondition3());
				    writer.append(',');
				    writer.append(dbencounter.get(i).getCondition4());
				    writer.append(',');
				    writer.append(dbencounter.get(i).getCondition5());
				    writer.append(',');
				    writer.append(dbpharm.get(i).getMedDispensed1());
					writer.append(',');
					writer.append(dbpharm.get(i).getMedDispensed2());
					writer.append(',');
					writer.append(dbpharm.get(i).getMedDispensed3());
					writer.append(',');
					writer.append(dbpharm.get(i).getMedDispensed4());
					writer.append(',');
					writer.append(dbpharm.get(i).getMedDispensed5());
					writer.append('\n');
			   }
			   
			
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
			   	Session userSession = HibernateUtil.getSessionFactory().openSession();
				userSession.beginTransaction();
			
				
				List<PharmacyEncounter> dbpharm = userSession.createQuery( "from PharmacyEncounter").list();
				List<Patient> dbpatient = userSession.createQuery( "from Patient").list();
				userSession.getTransaction().commit(); 
				userSession.close();
			   
			   writer.append("Rx Report");
			   writer.append('\n');
			   
			  
			   
			   writer.append("Med Dispensed1");
			   writer.append(',');
			   writer.append("Equal Dispensed1");
			   writer.append(',');
			   writer.append("Med Dispensed2");
			   writer.append(',');
			   writer.append("Equal Dispensed2");
			   writer.append(',');
			   writer.append("Med Dispensed3");
			   writer.append(',');
			   writer.append("Equal Dispensed3");
			   writer.append(',');
			   writer.append("Med Dispensed4");
			   writer.append(',');
			   writer.append("Equal Dispensed4");
			   writer.append(',');
			   writer.append("Med Dispensed5");
			   writer.append(',');
			   writer.append("Equal Dispensed5");
		       writer.append('\n');
		 
		       
					for (int i = 0; i < dbpharm.size(); i++){
						writer.append(dbpharm.get(i).getMedDispensed1());
						writer.append(',');
						writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed1()));
						writer.append(',');
						writer.append(dbpharm.get(i).getMedDispensed2());
						writer.append(',');
						writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed2()));
						writer.append(',');
						writer.append(dbpharm.get(i).getMedDispensed3());
						writer.append(',');
						writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed3()));
						writer.append(',');
						writer.append(dbpharm.get(i).getMedDispensed4());
						writer.append(',');
						writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed4()));
						writer.append(',');
						writer.append(dbpharm.get(i).getMedDispensed5());
						writer.append(',');
						writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed5()));
						writer.append('\n');
					}
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
