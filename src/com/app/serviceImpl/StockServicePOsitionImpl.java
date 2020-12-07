package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.StockDaoPOsition;
import com.app.pojo.StockPostion;
import com.app.service.StockPositionService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class StockServicePOsitionImpl implements StockPositionService {

	@Autowired
	private StockDaoPOsition stockDao;

	@Override
	public List<StockPostion> GetDetails() {

		return stockDao.GetDetails();
	}

	@Override
	public String[] getProductNames() {

		return stockDao.getProductNames();
	}

	@Override
	public List GetParticularDetails(String prname) {
		return stockDao.getParticularDetails(prname);
	}

	@Override
	public List GetParticularTypeDetails() {
		return stockDao.GetParticularTypeDetails();
	}

	@Override
	public String[] getProductTypes() {
		return stockDao.getProductTypes();
	}

	@Override
	public List GetParticularTypeDetailsOfStockPosition(String productTypeName) {
		return stockDao.GetParticularTypeDetailsOfStockPosition(productTypeName);
	}

	@Override
	public List GetDetailsBasedonProductType(String type) {
		return stockDao.GetDetailsBasedonProductType(type);
	}

}
