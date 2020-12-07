package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.Outpatientdao;
import com.app.pojo.AddPatient1;
import com.app.pojo.DoctotNames;
import com.app.pojo.InpatientPojo;
import com.app.service.OutpatientService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class OutPatientDaoImp implements OutpatientService {

	@Autowired
	private Outpatientdao patientDao;


	@Override
	public List<AddPatient1> getpatientbyreno(String regno) {
		// TODO Auto-generated method stub
		return patientDao.getpatientbyreno(regno);
	}

	@Override
	public List<AddPatient1> getbynamebyname(String username) {
		// TODO Auto-generated method stub
		return patientDao.getbynamebyname(username);
	}

	@Override
	public List<AddPatient1> getinpatients() {
		// TODO Auto-generated method stub
		return patientDao.getinpatients();
	}

	@Override
	public List getOutPatientDetails() {
		// TODO Auto-generated method stub
		return patientDao.getOutPatientDetails();
	}

}
