package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.PatientDao1;

import com.app.pojo.AddPatient1;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PatientServiseImpl1 implements com.app.service.PatientServise1 {
	@Autowired
	private PatientDao1 patientDao;

	@Override
	public void adduser(AddPatient1 user) {
		patientDao.adduser(user);

	}

	@Override
	public List<AddPatient1> getpatient(String regno) {

		return patientDao.getpatient(regno);
	}

	@Override
	public void saveUser(AddPatient1 user) {
		patientDao.saveUser(user);

	}

	@Override
	public List getpatientDetails() {
		// TODO Auto-generated method stub
		return patientDao.getpatientDetails();
	}

}
