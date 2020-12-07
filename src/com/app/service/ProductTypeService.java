package com.app.service;

import java.util.List;

import com.app.pojo.ProductType;

public interface ProductTypeService 
{

	public boolean saveProduct1(ProductType pt);

	public List<ProductType> listProduct1();

	public List<ProductType> getProduct1(int id);

	public void updateProduct1(ProductType pt);

	public Integer[] ids1();

	public Integer getId1();

	public String[] getIdc1();

	public List<ProductType> getWholeProduct1();

	public List<ProductType> getWholeNamesValues1(String name);

	@SuppressWarnings("rawtypes")
	public List getParticularProduct1(ProductType pt);

	public Integer getMaxId();
	public void deleteProductType(ProductType pt);
}
