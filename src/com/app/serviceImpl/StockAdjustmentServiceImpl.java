package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.StockAdjustmentDao;
import com.app.pojo.StockDetails;
import com.app.service.StockAdjustmentService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class StockAdjustmentServiceImpl implements StockAdjustmentService{
     
	@Autowired
	private StockAdjustmentDao stockAdjustmentDao;

	@Override
	public List<StockDetails> GetDetails() {
	
		return stockAdjustmentDao.GetDetails();
	}

	@Override
	public List getStockId(int id) {
		
		return stockAdjustmentDao.getStockId(id);
	}

	@Override
	public void updateUser(StockDetails user) {
		
		 stockAdjustmentDao.updateUser(user);
	}

	@Override
	public String[] getIdc() {
		
		return stockAdjustmentDao.getIdc();
	}

	@Override
	public List getParticularProductName(StockDetails user) {
		
		return stockAdjustmentDao.getParticularProductName(user);
	}
	
	
}
