package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojo.Packing;
import com.app.service.PackingService;

import com.app.dao.PackingDAO;
@Service("packingService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PackingServiceImpl implements PackingService 
{
@Autowired
private PackingDAO packingDAO;
	@Override
	public boolean savePacking(Packing pac) 
	{
		return packingDAO.savePacking(pac);

	}

	@Override
	public List<Packing> listPacking() {
		
		return packingDAO.listPacking();
	}

	@Override
	public List<Packing> getPacking(int packId) {
		
		return packingDAO.getPacking(packId);
	}

	@Override
	public void updatePacking(Packing pac) {
		packingDAO.updatePacking(pac);

	}

	@Override
	public Integer[] ids4() {
		
		return packingDAO.ids4();
	}

	@Override
	public Integer getId4() {
		
		return packingDAO.getId4();
	}

	@Override
	public String[] getIdc4() {
		
		return packingDAO.getIdc4();
	}

	@Override
	public List<Packing> getWholePacking() {
		
		return packingDAO.getWholePacking();
	}

	@Override
	public List<Packing> getWholePackingsValues(String packName) {
		
		return packingDAO.getWholePackingsValues(packName);
	}

	@Override
	public List getParticularPackingProduct(Packing pac) {
		
		return packingDAO.getParticularPackingProduct(pac);
	}

	@Override
	public Integer getMaxIdOfPacking() {
		
		return packingDAO.getMaxIdOfPacking();
	}

	@Override
	public void deletePacking(Packing pac) {
		
		packingDAO.deletePacking(pac);
	}

}
