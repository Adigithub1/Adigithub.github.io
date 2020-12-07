package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ProductDAO;
import com.app.pojo.Product;
import com.app.pojo.RegisterPojo;
import com.app.service.ProductService;



@Service("productService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;

	@Override
	public boolean saveProduct(Product p) {
		return productDAO.saveProduct(p);
		
	}

	@Override
	public List<Product> listProduct() {

		return productDAO.listProduct();
	}

	public List<Product> getProduct(int unitId) {
		return productDAO.getProduct(unitId);
	}

	public void updateProduct(Product p) {
		productDAO.updateProduct(p);
	}

	public Integer[] ids() {
		return productDAO.ids();
	}

	@Override
	public Integer getId() {

		return productDAO.getId();
	}

	public String[] getIdc() {
		return productDAO.getIdc();
	}

	public List<Product> getWholeProduct() {
		return productDAO.getWholeProduct();
	}

	public List<Product> getWholeNamesValues(String unitName) {
		return productDAO.getWholeNamesValues(unitName);
	}

	@Override
	public List getParticularProduct(Product p) {
		// TODO Auto-generated method stub
		return productDAO.getParticularProduct(p);
	}

	@Override
	public void deleteUoM(Product p) {
		
		productDAO.deleteUoM(p);
	}

	@Override
	public Integer getMaxIdOfUOM() {
		
		return productDAO.getMaxIdOfUOM();
	}

	@Override
	public boolean checkBoolean(RegisterPojo register) {
		// TODO Auto-generated method stub
		return productDAO.checkBoolean(register);
	}

}
