package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.PatientDaoDetails;
import com.app.pojo.AddPatient1;
import com.app.pojo.DoctotNames;
import com.app.service.PatientServiceDetails;
import com.app.service.PatientServiceDetails;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PatientServiceDetaisImpl implements PatientServiceDetails {

	@Autowired
	private PatientDaoDetails patientDao;

	@Override
	public List getPerson() {
		
		return patientDao.getPerson();
	}

	@Override
	public void adduser(AddPatient1 user) {
		patientDao.adduser(user);

	}

	@Override
	public List<DoctotNames> getdoctors() {
		// TODO Auto-generated method stub
		return patientDao.getdoctors();
	}

	@Override
	public Integer getid() {
		// TODO Auto-generated method stub
		return patientDao.getid();
	}

	@Override
	public List<AddPatient1> getpatient(String regno) {
		
		return patientDao.getpatient(regno);
	}

	@Override
	public List<AddPatient1> getbyname(String username) {
		// TODO Auto-generated method stub
		return patientDao.getbyname(username);
	}

	@Override
	public List<AddPatient1> getbydate(String date) {
		// TODO Auto-generated method stub
		return patientDao.getbydate(date);
	}

	@Override
	public int update(AddPatient1 document) {
		// TODO Auto-generated method stub
		return patientDao.update(document);
	}

	@Override
	public List<AddPatient1> getpatients() {
		// TODO Auto-generated method stub
		return patientDao.getpatients();
	}

	@Override
	public String getrenumber() {
		// TODO Auto-generated method stub
		return patientDao.getrenumber();
	}

	@Override
	public List<DoctotNames> getDoctorfee(String s14) {
		// TODO Auto-generated method stub
		return patientDao.getDoctorfee(s14);
	}

	@Override
	public String gettokenno(String s14, String data1) {
		// TODO Auto-generated method stub
		return patientDao.gettokenno(s14, data1);
	}

}
