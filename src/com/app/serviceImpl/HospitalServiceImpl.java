package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.HospitalDAO;
import com.app.pojo.Hospital;
import com.app.service.HospitalService;
@Service("hospitalService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class HospitalServiceImpl implements HospitalService
{
@Autowired
private HospitalDAO hospitalDAO;
	@Override
	public void saveDetail(Hospital h) 
	{
		hospitalDAO.saveDetail(h);

	}

	@Override
	public List<Hospital> listDetail() {
		
		return hospitalDAO.listDetail();
	}

	@Override
	public List<Hospital> getDetail(int hostId) {
		
		return hospitalDAO.getDetail(hostId);
	}

	@Override
	public void updateDetail(Hospital h) {
		hospitalDAO.updateDetail(h);

	}

	@Override
	public Integer[] idsDetail() {
		
		return hospitalDAO.idsDetail();
	}

	@Override
	public Integer getIdDetail() {
		
		return hospitalDAO.getIdDetail();
	}

	@Override
	public String[] getIdcDetail() {
		
		return hospitalDAO.getIdcDetail();
	}

	@Override
	public List<Hospital> getWholeDetail() {
		
		return hospitalDAO.getWholeDetail();
	}

	@Override
	public List<Hospital> getWholeDetailNames(String hosptName) {
		
		return hospitalDAO.getWholeDetailNames(hosptName);
	}

	@Override
	public List getParticularDetail(Hospital h) {
		
		return hospitalDAO.getParticularDetail(h);
	}

	@Override
	public Integer getMaxIdOfDetails() {
		// TODO Auto-generated method stub
		return hospitalDAO.getMaxIdOfDetails();
	}

}
