package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.InPatientDao;

import com.app.pojo.InpatientPojo;
import com.app.service.InPatientService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InPatientServiceImpl implements InPatientService {

	@Autowired
	private InPatientDao patientDao;



	@Override
	public List<InpatientPojo> getpatientbyreno(String regno) {
		// TODO Auto-generated method stub
		return patientDao.getpatientbyreno(regno);
	}

	@Override
	public List<InpatientPojo> getbynamebyname(String username) {
		// TODO Auto-generated method stub
		return patientDao.getbynamebyname(username);
	}

	@Override
	public List<InpatientPojo> getinpatients() {
		// TODO Auto-generated method stub
		return patientDao.getinpatients();
	}

}
