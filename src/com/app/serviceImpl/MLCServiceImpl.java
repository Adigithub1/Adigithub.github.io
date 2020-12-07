package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.MLCDao;

import com.app.pojo.Mlcpojo;
import com.app.service.MLCService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class MLCServiceImpl implements MLCService {

	@Autowired
	private MLCDao patientDao;



	@Override
	public List<Mlcpojo> getpatient(String regno) {
		
		return patientDao.getpatient(regno);
	}

	@Override
	public List<Mlcpojo> getbyname(String username) {
		// TODO Auto-generated method stub
		return patientDao.getbyname(username);
	}

	@Override
	public List<Mlcpojo> getbydate(String date) {
		// TODO Auto-generated method stub
		return patientDao.getbydate(date);
	}



	@Override
	public List<Mlcpojo> getpatients() {
		// TODO Auto-generated method stub
		return patientDao.getpatients();
	}

	@Override
	public void addmlcpatient(Mlcpojo document) {
		patientDao.addmlcpatient(document);
		
	}

	@Override
	public String getmlcpatientsregno() {
		// TODO Auto-generated method stub
		return patientDao.getmlcpatientsregno();
	}

	@Override
	public List<Mlcpojo> editMLCpatient(int id1) {
		// TODO Auto-generated method stub
		return patientDao.editMLCpatient(id1);
	}

	@Override
	public void updatemlcpatient(Mlcpojo document) {
	patientDao.updatemlcpatient(document);
		
	}

}
