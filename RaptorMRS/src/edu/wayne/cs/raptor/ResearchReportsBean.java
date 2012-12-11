package edu.wayne.cs.raptor;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

import org.hibernate.Session;

import com.mysql.jdbc.DatabaseMetaData;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSetMetaData;
import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ResearchReportsBean {

	/*
	 * private Integer reportNumber = 0;
	 * 
	 * public Integer getReportNumber() { return reportNumber; }
	 * 
	 * public void setReportNumber(Integer reportNumber) { this.reportNumber =
	 * reportNumber; }
	 * 
	 * public String submit() { if (reportNumber == 2) { return null; } else if(
	 * reportNumber == 1) { generateConditionReport(); } return null;
	 * 
	 * }
	 */

	private List<String> selectedColumns;
	private String result;
	private String sortByColumn;

	public List<String> getSelectedColumns() {
		return selectedColumns;
	}

	public void setSelectedColumns(List<String> selectedColumns) {
		this.selectedColumns = selectedColumns;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	

	public String getSortByColumn() {
		return sortByColumn;
	}

	public void setSortByColumn(String sortByColumn) {
		this.sortByColumn = sortByColumn;
	}

	public String submit() {
		if (this.selectedColumns.isEmpty()) {
			//setResult("Please select at least one column!");
			JOptionPane.showMessageDialog(null, "Please select at least one column!");
			return result;
		} else {
			// result=selectedColumns.get(0);
			generateConditionReport();
			return result;

		}
	}

	// original report
	public void generateBloodSampleReport() {

		String filename = null;
		JFileChooser jFileChooser = new JFileChooser();
		jFileChooser.setSelectedFile(new File(suggestFileName()
				+ "-BloodSample.csv"));
		int returnValue = jFileChooser.showSaveDialog(null);
		if (returnValue == jFileChooser.APPROVE_OPTION) {
			File selectedFile = jFileChooser.getSelectedFile();
			generateBloodSampleCsvFile(selectedFile);
		}
	}
	
	// original report
	private void generateBloodSampleCsvFile(File filehandle) {
		try {
			FileWriter writer = new FileWriter(filehandle);

			// Get Data from raptor

			Session userSession = HibernateUtil.getSessionFactory()
					.openSession();
			userSession.beginTransaction();
			List<Encounter> dbencounter = userSession.createQuery(
					"from Encounter").list();
			// List<Vitals> dbvitals =
			// userSession.createQuery("from Vitals").list();
			List<PharmacyEncounter> dbpharm = userSession.createQuery(
					"from PharmacyEncounter").list();
			userSession.getTransaction().commit();
			userSession.close();

			writer.append("Blood Sample Report");
			writer.append('\n');
			writer.append("Blood Sample ID");
			writer.append(',');
			writer.append("Condition");
			writer.append(',');
			writer.append("Condition 2");
			writer.append(',');
			writer.append("Condition 3");
			writer.append(',');
			writer.append("Condition 4");
			writer.append(',');
			writer.append("Condition 5");
			writer.append(',');
			writer.append("Medical Procedure(s)");
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
			writer.append("RX Dispensed");
			writer.append(',');
			writer.append("RX Dispensed 2");
			writer.append(',');
			writer.append("RX Dispensed 3");
			writer.append(',');
			writer.append("RX Dispensed 4");
			writer.append(',');
			writer.append("RX Dispensed 5");

			writer.append('\n');

			for (int i = 0; i < dbencounter.size(); i++) {
				// writer.append(String.valueOf(dbvitals.get(i).getBloodSampleID()));
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
				writer.append(dbencounter.get(i).getMedicalProcedures());
				writer.append(',');
				// writer.append(dbencounter.get(i).getMedicationPrescribed1());
				writer.append(',');
				// writer.append(dbencounter.get(i).getMedicationPrescribed2());
				writer.append(',');
				// writer.append(dbencounter.get(i).getMedicationPrescribed3());
				writer.append(',');
				// writer.append(dbencounter.get(i).getMedicationPrescribed4());
				writer.append(',');
				// writer.append(dbencounter.get(i).getMedicationPrescribed5());
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
				writer.append(',');
				writer.append('\n');
				// generate whatever data you want

			}
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void generateConditionReport() {
		String filename = null;
		JFileChooser jFileChooser = new JFileChooser();
		jFileChooser.setSelectedFile(new File(suggestFileName()
				+ "-ConditionReport.csv"));
		int returnValue = jFileChooser.showSaveDialog(null);
		if (returnValue == jFileChooser.APPROVE_OPTION) {
			File selectedFile = jFileChooser.getSelectedFile();
			generateConditionFile(selectedFile);
		}
	}

	
	
	private void generateConditionFile(File filehandle) {
		try {
			FileWriter writer = new FileWriter(filehandle);

			// Get Data from raptor

			Session userSession = HibernateUtil.getSessionFactory()
					.openSession();
			userSession.beginTransaction();
		
			List<Encounter> dbencounter = userSession.createQuery(
					"from Encounter order by '"+sortByColumn+"'").list();
			List<PharmacyEncounter> dbpharm = userSession.createQuery(
					"from PharmacyEncounter").list();
			List<Patient> dbPatient = userSession.createQuery("from Patient")
					.list();
			List<Vitals> dbVitals = userSession.createQuery("from Vitals")
					.list();
			userSession.getTransaction().commit();
			userSession.close();

			List<List<String>> csvData = new ArrayList<List<String>>();

			for (int i = 0; i < selectedColumns.size(); i++) {
				writer.append(selectedColumns.get(i));
				writer.append(',');
				csvData.add(new ArrayList<String>());
			}
			writer.append('\n');

			for (int k = 0; k < selectedColumns.size(); k++) {
				
				 if (selectedColumns.get(k).equals("residence")){ 
					  for(int j = 0; j < dbPatient.size(); j++) {
				 csvData.get(k).add(dbPatient.get(j).getResidence()); } }
				 
				if (selectedColumns.get(k).equals("medicationPrescribed1")) {
					for (int j = 0; j < dbencounter.size(); j++) {
						csvData.get(k).add(
								dbencounter.get(j).getMedicationPrescribed1());
						
					}
				}
				if (selectedColumns.get(k).equals("medicationPrescribed2")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(
								dbencounter.get(j).getMedicationPrescribed2());
					}
				}
				if (selectedColumns.get(k).equals("medicationPrescribed3")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(
								dbencounter.get(j).getMedicationPrescribed3());
					}
				}
				if (selectedColumns.get(k).equals("medicationPrescribed4")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(
								dbencounter.get(j).getMedicationPrescribed4());
					}
				}
				if (selectedColumns.get(k).equals("medicationPrescribed5")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(
								dbencounter.get(j).getMedicationPrescribed5());
					}
				}
				
				if (selectedColumns.get(k).equals("medicationDispensed1")) {
					for (int j = 0; j < dbpharm.size(); j++) {
						csvData.get(k).add(
								String.valueOf(dbpharm.get(j).getMedDispensed1()));
						
					}
				}
				if (selectedColumns.get(k).equals("medicationDispensed2")) {
					for (int j = 0; j < dbpharm.size(); j++) {

						csvData.get(k).add(
								String.valueOf(dbpharm.get(j).getMedDispensed2()));
					}
				}
				if (selectedColumns.get(k).equals("medicationDispensed3")) {
					for (int j = 0; j < dbpharm.size(); j++) {

						csvData.get(k).add(
								String.valueOf(dbpharm.get(j).getMedDispensed3()));
					}
				}
				if (selectedColumns.get(k).equals("medicationDispensed4")) {
					for (int j = 0; j < dbpharm.size(); j++) {

						csvData.get(k).add(
								String.valueOf(dbpharm.get(j).getMedDispensed4()));
					}
				}
				if (selectedColumns.get(k).equals("medicationDispensed5")) {
					for (int j = 0; j < dbpharm.size(); j++) {

						csvData.get(k).add(
								String.valueOf(dbpharm.get(j).getMedDispensed5()));
					}
				}
				if (selectedColumns.get(k).equals("malaria")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(String.valueOf(dbVitals.get(j).getMalaria()));		
					}
				}
				if (selectedColumns.get(k).equals("dengue")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(String.valueOf(dbVitals.get(j).getDengue()));		
					}
				}
				if (selectedColumns.get(k).equals("bloodSamepleID")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(String.valueOf(dbVitals.get(j).getBloodSampleID()));		
					}
				}
				
				if (selectedColumns.get(k).equals("otherConditions1")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getCondition1());		
					}
				}
				if (selectedColumns.get(k).equals("otherConditions2")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getCondition2());		
					}
				}
				if (selectedColumns.get(k).equals("otherConditions3")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getCondition3());		
					}
				}
				if (selectedColumns.get(k).equals("otherConditions4")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getCondition4());		
					}
				}
				if (selectedColumns.get(k).equals("otherConditions5")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getCondition5());		
					}
				}
				if (selectedColumns.get(k).equals("radiation")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getRadiation());		
					}
				}
				if (selectedColumns.get(k).equals("quality")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getQuality());	
					}
				}
				if (selectedColumns.get(k).equals("provokes")) {
					for (int j = 0; j < dbencounter.size(); j++) {

						csvData.get(k).add(dbencounter.get(j).getProvokes());	
					}
				}
				
			}
			
			int rows = csvData.isEmpty() ? 0 : csvData.get(0).size();
			for (int j = 0; j < rows; j++) {
				for (int b = 0; b < csvData.size(); b++) {
					writer.append(csvData.get(b).get(j));
					writer.append(',');
				}
				writer.append('\n');
			}

			/* // original report
			 * 
			 * for (int i = 0; i < dbencounter.size(); i++) {
			 * writer.append(String.valueOf(dbencounter.get(i).getPatientID()));
			 * writer.append(',');
			 * writer.append(dbPatient.get(i).getResidence());
			 * writer.append(',');
			 * writer.append(dbPatient.get(i).getBirthDate());
			 * writer.append(','); writer.append(dbPatient.get(i).getGender());
			 * writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getHeight()));
			 * writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getWeight()));
			 * writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getCalculatedBMI
			 * ())); writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get
			 * (i).getSystolicBP()+"/"+String
			 * .valueOf(dbVitals.get(i).getDiastolicBP()))); writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getHeartRate()));
			 * writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getTemperatureC()));
			 * writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getRespRate()));
			 * writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getOximetry()));
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getChiefComplaint());
			 * writer.append(','); writer.append("not there");
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getMedicationPrescribed1());
			 * writer.append(',');
			 * writer.append(dbpharm.get(i).getMedDispensed1());
			 * writer.append(',');
			 * writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed1
			 * ())); writer.append(',');
			 * writer.append(dbencounter.get(i).getMedicationPrescribed2());
			 * writer.append(',');
			 * writer.append(dbpharm.get(i).getMedDispensed2());
			 * writer.append(',');
			 * writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed2
			 * ())); writer.append(',');
			 * writer.append(dbencounter.get(i).getMedicationPrescribed3());
			 * writer.append(',');
			 * writer.append(dbpharm.get(i).getMedDispensed3());
			 * writer.append(',');
			 * writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed3
			 * ())); writer.append(',');
			 * writer.append(dbencounter.get(i).getMedicationPrescribed4());
			 * writer.append(',');
			 * writer.append(dbpharm.get(i).getMedDispensed4());
			 * writer.append(',');
			 * writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed4
			 * ())); writer.append(',');
			 * writer.append(dbencounter.get(i).getMedicationPrescribed5());
			 * writer.append(',');
			 * writer.append(dbpharm.get(i).getMedDispensed5());
			 * writer.append(',');
			 * writer.append(String.valueOf(dbpharm.get(i).getEqualPrescribed5
			 * ())); writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getFingerPoke()));
			 * writer.append(',');
			 * writer.append(String.valueOf(dbVitals.get(i).getBloodSampleID
			 * ())); writer.append(',');
			 * writer.append(dbencounter.get(i).getCondition1());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getCondition2());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getCondition3());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getCondition4());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getCondition5());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getRadiation());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getQuality());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getProvokes());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getTimeOfDay());
			 * writer.append(','); writer.append(dbencounter.get(i).getOther());
			 * writer.append(',');
			 * writer.append(dbencounter.get(i).getOverallImpression());
			 * writer.append(','); writer.append("not there");
			 * 
			 * writer.append('\n'); }
			 */
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void generateRxReport() {
		String filename = null;
		JFileChooser jFileChooser = new JFileChooser();
		jFileChooser.setSelectedFile(new File(suggestFileName()
				+ "-RxReport.csv"));
		int returnValue = jFileChooser.showSaveDialog(null);
		if (returnValue == jFileChooser.APPROVE_OPTION) {
			File selectedFile = jFileChooser.getSelectedFile();
			generateRxFile(selectedFile);
		}
	}
	
	// original report
	private static void generateRxFile(File filehandle) {
		try {
			FileWriter writer = new FileWriter(filehandle);

			// Get Data from raptor
			Session userSession = HibernateUtil.getSessionFactory()
					.openSession();
			userSession.beginTransaction();

			List<PharmacyEncounter> dbpharm = userSession.createQuery(
					"from PharmacyEncounter").list();
			List<Patient> dbpatient = userSession.createQuery("from Patient")
					.list();
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

			for (int i = 0; i < dbpharm.size(); i++) {
				writer.append(dbpharm.get(i).getMedDispensed1());
				writer.append(',');
				writer.append(String.valueOf(dbpharm.get(i)
						.getEqualPrescribed1()));
				writer.append(',');
				writer.append(dbpharm.get(i).getMedDispensed2());
				writer.append(',');
				writer.append(String.valueOf(dbpharm.get(i)
						.getEqualPrescribed2()));
				writer.append(',');
				writer.append(dbpharm.get(i).getMedDispensed3());
				writer.append(',');
				writer.append(String.valueOf(dbpharm.get(i)
						.getEqualPrescribed3()));
				writer.append(',');
				writer.append(dbpharm.get(i).getMedDispensed4());
				writer.append(',');
				writer.append(String.valueOf(dbpharm.get(i)
						.getEqualPrescribed4()));
				writer.append(',');
				writer.append(dbpharm.get(i).getMedDispensed5());
				writer.append(',');
				writer.append(String.valueOf(dbpharm.get(i)
						.getEqualPrescribed5()));
				writer.append('\n');
			}
			// generate whatever data you want

			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static String suggestFileName() {

		String sfilename = "";
		Calendar rightNow = Calendar.getInstance();

		// get the date
		int temp_int = rightNow.get(Calendar.YEAR);
		sfilename = sfilename + temp_int;
		temp_int = rightNow.get(Calendar.MONTH);
		temp_int++;
		if (temp_int < 10)
			sfilename = sfilename + "0";
		sfilename = sfilename + temp_int;
		temp_int = rightNow.get(Calendar.DAY_OF_MONTH);
		if (temp_int < 10)
			sfilename = sfilename + "0";
		sfilename = sfilename + temp_int + "-";
		// Get the time
		temp_int = rightNow.get(Calendar.HOUR);
		if (rightNow.get(Calendar.AM_PM) == 0) {
			if (temp_int < 10)
				sfilename = sfilename + "0";
		} else
			temp_int = temp_int + 12;

		sfilename = sfilename + temp_int;
		temp_int = rightNow.get(Calendar.MINUTE);
		sfilename = sfilename + temp_int;
		temp_int = rightNow.get(Calendar.SECOND);
		if (temp_int < 10)
			sfilename = sfilename + "0" + temp_int;
		else
			sfilename = sfilename + temp_int;

		return sfilename;
	}

}
