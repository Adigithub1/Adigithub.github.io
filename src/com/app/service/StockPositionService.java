package com.app.service;

import java.util.List;

import com.app.pojo.StockPostion;

public interface StockPositionService {

	public List<StockPostion> GetDetails();

	public String[] getProductNames();

	public List GetParticularDetails(String prname);

	public List GetParticularTypeDetails();

	public String[] getProductTypes();

	public List GetParticularTypeDetailsOfStockPosition(String productTypeName);

	public List GetDetailsBasedonProductType(String type);

}
