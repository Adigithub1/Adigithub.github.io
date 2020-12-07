package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.DuePatientDao;
import com.app.pojo.DuePatient;
import com.app.service.DuePatientService;
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class DuePatientServiceImpl implements DuePatientService{
    
	@Autowired
	private DuePatientDao userDao;
	
	
	@Override
	public List<DuePatient> GetDetails() {
		
		return userDao.GetDetails();
	}


	@Override
	public List getPatient(int id) {
		
		return userDao.getPatient(id);
	}


	@Override
	public List<DuePatient> updateUser(DuePatient user) {
		
		return userDao.updateUser(user);
		
		
	}


	@Override
	public List<DuePatient> getUserParticularDayDetails(String admitdate) {
		
		return userDao.getUserParticularDayDetails(admitdate);
	}

}
