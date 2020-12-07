package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.LaboratoryDAO;
import com.app.pojo.Laboratory;
import com.app.service.LaboratoryService;
@Service("laboratoryService")
@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
public class LaboratoryServiceImpl implements LaboratoryService 
{
@Autowired
private LaboratoryDAO laboratoryDAO;
	@Override
	public void saveLaboratory(Laboratory lab) {
		// TODO Auto-generated method stub
		laboratoryDAO.saveLaboratory(lab);
	}

	@Override
	public List<Laboratory> listLaboratory() {
		// TODO Auto-generated method stub
		return laboratoryDAO.listLaboratory();
	}

	@Override
	public List<Laboratory> getLaboratory(int labId) {
		// TODO Auto-generated method stub
		return laboratoryDAO.getLaboratory(labId);
	}

	@Override
	public void updateLaboratory(Laboratory lab) {
		// TODO Auto-generated method stub
		laboratoryDAO.updateLaboratory(lab);
	}

	@Override
	public Integer[] idsLaboratory() {
		// TODO Auto-generated method stub
		return laboratoryDAO.idsLaboratory();
	}

	@Override
	public Integer getIdLaboratory() {
		// TODO Auto-generated method stub
		return laboratoryDAO.getIdLaboratory();
	}

	@Override
	public String[] getIdcLaboratory() {
		// TODO Auto-generated method stub
		return laboratoryDAO.getIdcLaboratory();
	}

	@Override
	public List<Laboratory> getWholeLaboratory() {
		// TODO Auto-generated method stub
		return laboratoryDAO.getWholeLaboratory();
	}

	@Override
	public List<Laboratory> getWholeLaboratoryNames(String labName) {
		// TODO Auto-generated method stub
		return laboratoryDAO.getWholeLaboratoryNames(labName);
	}

	@Override
	public List getParticularLaboratory(Laboratory lab) {
		// TODO Auto-generated method stub
		return laboratoryDAO.getParticularLaboratory(lab);
	}

	@Override
	public Integer getMaxIdOfLaboratory() {
		// TODO Auto-generated method stub
		return laboratoryDAO.getMaxIdOfLaboratory();
	}

}
