package com.app.dao;

import java.util.List;

import com.app.pojo.Dcotcorpojo;
import com.app.pojo.PatientPojo;

public interface Patientdao {
	public List<PatientPojo> getUser(String s1, String s2);

	public void deletepatient(PatientPojo user);

	public PatientPojo getPatient(int id);

	public void addUser(PatientPojo user);

	public List<PatientPojo> updatepojo(PatientPojo user);

	void saveUser(String doctorName, String patientName,
			String appointmentDate, String appointmentTime, String address,
			String treatmentfor, String gender, String mobileNo, String age,
			String address2, String city, String state, String pincode,
			String country);

	public List<PatientPojo> getUser();

	public List<Dcotcorpojo> getdoctors();

	public String getTokenMax();

	public List getUserDetails();

	public String getTokenMaxBasedOnDoctor(PatientPojo user);

}
