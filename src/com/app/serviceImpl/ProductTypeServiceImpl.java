package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojo.ProductType;
import com.app.service.ProductTypeService;

import com.app.dao.ProductTypeDAO;
@Service("productTypeService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductTypeServiceImpl implements ProductTypeService 
{
	@Autowired
	private ProductTypeDAO productTypeDAO;
	@Override
	public boolean saveProduct1(ProductType pt) 
	{
		return productTypeDAO.saveProduct1(pt);

	}

	@Override
	public List<ProductType> listProduct1() 
	{
		
		return productTypeDAO.listProduct1();
	}

	@Override
	public List<ProductType> getProduct1(int id) 
	{
		
		return productTypeDAO.getProduct1(id);
	}

	@Override
	public void updateProduct1(ProductType pt) 
	{
		
		productTypeDAO.updateProduct1(pt);
	}

	@Override
	public Integer[] ids1() 
	{
		
		return productTypeDAO.ids1();
	}

	@Override
	public Integer getId1()
	{
		
		return productTypeDAO.getId1();
	}

	@Override
	public String[] getIdc1() 
	{
		
		return productTypeDAO.getIdc1();
	}

	@Override
	public List<ProductType> getWholeProduct1()
	{
		
		return productTypeDAO.getWholeProduct1();
	}

	@Override
	public List<ProductType> getWholeNamesValues1(String name) 
	{
		
		return productTypeDAO.getWholeNamesValues1(name);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List getParticularProduct1(ProductType pt)
	{
		
		return productTypeDAO.getParticularProduct1(pt);
	}

	@Override
	public Integer getMaxId() {
		
		return productTypeDAO.getMaxId();
	}

	@Override
	public void deleteProductType(ProductType pt) {
		productTypeDAO.deleteProductType(pt);
		
	}

}
