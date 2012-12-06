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

	public static void generateBloodSampleReport() {

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

	private static void generateBloodSampleCsvFile(File filehandle) {
		try {
			FileWriter writer = new FileWriter(filehandle);

			// Get Data from raptor

			Session userSession = HibernateUtil.getSessionFactory()
					.openSession();
			userSession.beginTransaction();
			List<Encounter> dbencounter = userSession.createQuery("from Encounter").list();
			//List<Vitals> dbvitals = userSession.createQuery("from Vitals").list();
			List<PharmacyEncounter> dbpharm = userSession.createQuery("from PharmacyEncounter").list();
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
				//writer.append(String.valueOf(dbvitals.get(i).getBloodSampleID()));
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
				//writer.append(dbencounter.get(i).getMedicationPrescribed1());
				writer.append(',');
				//writer.append(dbencounter.get(i).getMedicationPrescribed2());
				writer.append(',');
				//writer.append(dbencounter.get(i).getMedicationPrescribed3());
				writer.append(',');
				//writer.append(dbencounter.get(i).getMedicationPrescribed4());
				writer.append(',');
				//writer.append(dbencounter.get(i).getMedicationPrescribed5());
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

	public static void generateConditionReport() {
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

	private static void generateConditionFile(File filehandle) {
		try {
			FileWriter writer = new FileWriter(filehandle);

			// Get Data from raptor

			Session userSession = HibernateUtil.getSessionFactory()
					.openSession();
			userSession.beginTransaction();

			List<Encounter> dbencounter = userSession.createQuery("from Encounter").list();
			List<PharmacyEncounter> dbpharm = userSession.createQuery("from PharmacyEncounter").list();
			List<Patient>dbPatient = userSession.createQuery("from Patient").list();
			List<Vitals>dbVitals = userSession.createQuery("from Vitals").list();
			userSession.getTransaction().commit();
			userSession.close();

			writer.append("Conditon Report");
			writer.append('\n');

			writer.append("PatientID");
			writer.append(',');
			writer.append("Village of Residence");
			writer.append(',');
			writer.append("Birth Date");
			writer.append(',');
			writer.append("Gender");
			writer.append(',');
			writer.append("Height");
			writer.append(',');
			writer.append("Weight");
			writer.append(',');
			writer.append("BMI");
			writer.append(',');
			writer.append("Blood Pressure (mmHg)");
			writer.append(',');
			writer.append("Heart Rate (bpm)");
			writer.append(',');
			writer.append("Temperature (C)");
			writer.append(',');
			writer.append("Respirations (Breaths per Minute)");
			writer.append(',');
			writer.append("Oxygen (%)");
			writer.append(',');
			writer.append("Chief Complaint");
			writer.append(',');
			writer.append("Treatment Given");
			writer.append(',');
			writer.append("Med Dispensed1");
			writer.append(',');
			writer.append("Med Dispensed2");
			writer.append(',');
			writer.append("Med Dispensed3");
			writer.append(',');
			writer.append("Med Dispensed4");
			writer.append(',');
			writer.append("Med Dispensed5");
			writer.append(',');
			writer.append("Blood Drawn");
			writer.append(',');
			writer.append("Sample #");
			writer.append(',');
			writer.append("Other Condition1");
			writer.append(',');
			writer.append("Other Condition2");
			writer.append(',');
			writer.append("Other Condition3");
			writer.append(',');
			writer.append("Other Condition4");
			writer.append(',');
			writer.append("Other Condition5");
			writer.append(',');
			// add HPI
			writer.append("Radiation");
			writer.append(',');
			writer.append("Quality");
			writer.append(',');
			writer.append("Provokes/Palliates");
			writer.append(',');
			writer.append("Time of Day");
			writer.append(',');
			writer.append("Other");
			writer.append(',');
			writer.append("Overall Impression");
			writer.append(',');
			writer.append("Keywords from Previous Encounter");
			
			writer.append('\n');

			for (int i = 0; i < dbencounter.size(); i++) {
				writer.append(String.valueOf(dbencounter.get(i).getPatientID()));
				writer.append(',');
				writer.append(dbPatient.get(i).getResidence());
				writer.append(',');
				writer.append(dbPatient.get(i).getBirthDate());
				writer.append(',');
				writer.append(dbPatient.get(i).getGender());
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getHeight()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getWeight()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getCalculatedBMI()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getSystolicBP()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getHeartRate()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getTemperatureC()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getRespRate()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getOximetry()));
				writer.append(',');
				writer.append(dbencounter.get(i).getChiefComplaint());
				writer.append(',');
				writer.append("not there");
				writer.append(',');
				writer.append(dbencounter.get(i).getMedicationPrescribed1());
				writer.append(',');
				writer.append(dbencounter.get(i).getMedicationPrescribed2());
				writer.append(',');
				writer.append(dbencounter.get(i).getMedicationPrescribed3());
				writer.append(',');
				writer.append(dbencounter.get(i).getMedicationPrescribed4());
				writer.append(',');
				writer.append(dbencounter.get(i).getMedicationPrescribed5());
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getFingerPoke()));
				writer.append(',');
				writer.append(String.valueOf(dbVitals.get(i).getBloodSampleID()));
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
				writer.append(dbencounter.get(i).getRadiation());
				writer.append(',');
				writer.append(dbencounter.get(i).getQuality());
				writer.append(',');
				writer.append(dbencounter.get(i).getProvokes());
				writer.append(',');
				writer.append(dbencounter.get(i).getTimeOfDay());
				writer.append(',');
				writer.append(dbencounter.get(i).getOther());
				writer.append(',');
				writer.append(dbencounter.get(i).getOverallImpression());
				writer.append(',');
				writer.append("not there");
				
				writer.append('\n');
			}

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
