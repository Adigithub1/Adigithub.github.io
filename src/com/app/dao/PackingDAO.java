package com.app.dao;

import java.util.List;

import com.app.pojo.Packing;



public interface PackingDAO
{
	
	public boolean savePacking(Packing pac);

	public List<Packing> listPacking();

	public List<Packing> getPacking(int packId);

	public void updatePacking(Packing pac);

	public Integer[] ids4();

	public Integer getId4();

	public String[] getIdc4();

	public List<Packing> getWholePacking();

	public List<Packing> getWholePackingsValues(String packName);

	public List getParticularPackingProduct(Packing pac);
	public Integer getMaxIdOfPacking();
	
/** Packing DELETE *//***/
	
	public void deletePacking(Packing pac);
}
