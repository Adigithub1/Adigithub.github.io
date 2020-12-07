package com.app.dao;

import java.util.List;



import com.app.pojo.StockDetails;

public interface StockAdjustmentDao {
	
	
	public List<StockDetails> GetDetails();
	public List getStockId(int id);
	public void updateUser(StockDetails user);
	public String[] getIdc();
	public List getParticularProductName(StockDetails user);

	
}
