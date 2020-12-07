package com.app.service;

import java.util.List;

import com.app.pojo.Dcotcorpojo;
import com.app.pojo.PatientPojo;

public interface PatientService {
	public List<PatientPojo> getUser(String s1, String s2);

	public void deletepatient(PatientPojo user);

	public PatientPojo getPatient(int id);

	public List<PatientPojo> updateUser(PatientPojo user);

	public void addUser(String doctorName, String patientName, String appointmentDate,String appointmentTime, String address,
			String treatmentfor, String gender, String mobileNo, String age, String address2, String city, String state,
			String pincode, String country);

	public void addUser(PatientPojo user);

	void addUser(String tokenno, String doctorName, String patientName, String treatmentfor, String age, String gender,
			String mobileNo, String appointmentDate,String appointmentTime, String address, String address2, String city, String state,
			String pincode, String country);

	public Object getUser();

	public List<Dcotcorpojo> getdoctors();
	public String getTokenMax();

	public List getUserDetails();

	public String getTokenMaxBasedOnDoctor(PatientPojo user);
}
