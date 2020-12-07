package com.app.dao;

import java.util.List;

import com.app.pojo.StockPostion;

public interface StockDaoPOsition {

	public List<StockPostion> GetDetails();

	public String[] getProductNames();

	public List getParticularDetails(String prname);

	public List GetParticularTypeDetails();

	public String[] getProductTypes();

	public List GetParticularTypeDetailsOfStockPosition(String productTypeName);

	public List GetDetailsBasedonProductType(String type);
}
