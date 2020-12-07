package com.app.serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



import com.app.service.PatientService;
import com.app.pojo.Dcotcorpojo;
import com.app.pojo.PatientPojo;
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PatientServiceImpl implements PatientService{

	@Autowired
	com.app.dao.Patientdao userDao2;
	@Override
	public List<PatientPojo> getUser(String s1, String s2) {
		
		return userDao2.getUser(s1,s2);
	}


	@Override
	public void addUser(String doctorName, String patientName, String appointmentDate,String appointmentTime, String address,
			String treatmentfor, String gender, String mobileNo, String age, String address2, String city, String state,
			String pincode, String country) {
		
	userDao2.saveUser(doctorName, patientName, appointmentDate,appointmentTime, address, treatmentfor, gender, mobileNo, age, country, state, pincode, address2, city);
		
	}

	@Override
	public void deletepatient(PatientPojo user) {
	userDao2.deletepatient(user);
		
	}

	@Override
	public PatientPojo getPatient(int id) {
		
		return userDao2.getPatient(id);
	}

	@Override
	public List<PatientPojo> updateUser(PatientPojo user) {
		
		return userDao2.updatepojo(user);
	}

	@Override
	public void addUser(PatientPojo user) {
		
		 userDao2.addUser(user);
	}


	@Override
	public void addUser(String tokenno, String doctorName, String patientName, String treatmentfor, String age,
			String gender, String mobileNo, String appointmentDate,String appointmentTime, String address, String address2, String city,
			String state, String pincode, String country) {
		
		
	}


	@Override
	public Object getUser() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Dcotcorpojo> getdoctors() {
		// TODO Auto-generated method stub
		return userDao2.getdoctors();
	}


	@Override
	public String getTokenMax() {
		return userDao2.getTokenMax();
	}


	@Override
	public List getUserDetails() {
		return userDao2.getUserDetails();
	}


	@Override
	public String getTokenMaxBasedOnDoctor(PatientPojo user) {
		return userDao2.getTokenMaxBasedOnDoctor(user);
	}


	
	}


	
		
	

	


