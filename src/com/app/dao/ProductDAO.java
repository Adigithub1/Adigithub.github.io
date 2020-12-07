package com.app.dao;

import java.util.List;

import com.app.pojo.Product;
import com.app.pojo.RegisterPojo;

public interface ProductDAO {

	public boolean saveProduct(Product p);

	public List<Product> listProduct();

	public List<Product> getProduct(int unitId);

	public void updateProduct(Product p);

	public Integer[] ids();

	public Integer getId();

	public String[] getIdc();

	public List<Product> getWholeProduct();

	public List<Product> getWholeNamesValues(String unitName);

	public List getParticularProduct(Product p);

	public void deleteUoM(Product p);

	public Integer getMaxIdOfUOM();

	public boolean checkBoolean(RegisterPojo register);
}
