package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.PharmacyDAO;
import com.app.pojo.Pharmacy;
import com.app.service.PharmacyService;
@Service("pharmacyService")
@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
public class PharmacyServiceImpl implements PharmacyService {
@Autowired
private PharmacyDAO pharmacyDAO;
	@Override
	public void savePharmacy(Pharmacy ph) {
		// TODO Auto-generated method stub
		pharmacyDAO.savePharmacy(ph);
	}

	@Override
	public List<Pharmacy> listPharmacy() {
		// TODO Auto-generated method stub
		return pharmacyDAO.listPharmacy();
	}

	@Override
	public List<Pharmacy> getPharmacy(int pharId) {
		// TODO Auto-generated method stub
		return pharmacyDAO.getPharmacy(pharId);
	}

	@Override
	public void updatePharmacy(Pharmacy ph) {
		// TODO Auto-generated method stub
		pharmacyDAO.updatePharmacy(ph);
	}

	@Override
	public Integer[] idsPharmacy() {
		// TODO Auto-generated method stub
		return pharmacyDAO.idsPharmacy();
	}

	@Override
	public Integer getIdPharmacy() {
		// TODO Auto-generated method stub
		return pharmacyDAO.getIdPharmacy();
	}

	@Override
	public String[] getIdcPharmacy() {
		// TODO Auto-generated method stub
		return pharmacyDAO.getIdcPharmacy();
	}

	@Override
	public List<Pharmacy> getWholePharmacy() {
		// TODO Auto-generated method stub
		return pharmacyDAO.getWholePharmacy();
	}

	@Override
	public List<Pharmacy> getWholePharmacyNames(String pharName) {
		// TODO Auto-generated method stub
		return pharmacyDAO.getWholePharmacyNames(pharName);
	}

	@Override
	public List getParticularPharmacy(Pharmacy ph) {
		// TODO Auto-generated method stub
		return pharmacyDAO.getParticularPharmacy(ph);
	}

	@Override
	public Integer getMaxIdOfPharmacy() {
		// TODO Auto-generated method stub
		return pharmacyDAO.getMaxIdOfPharmacy();
	}

}
