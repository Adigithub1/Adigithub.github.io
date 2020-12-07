package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ProductDetailsDAO;
import com.app.pojo.ProductDetail;
import com.app.service.ProductDetailService;
@Service("productDetailService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductDetailServiceImpl implements ProductDetailService 
{
@Autowired
   private ProductDetailsDAO productDetailsDAO;
	@Override
	public boolean saveProductDetail(ProductDetail pd) {
		return productDetailsDAO.saveProductDetail(pd);
		
	}

	@Override
	public List<ProductDetail> listProductDetail() {
		
		return productDetailsDAO.listProductDetail();
	}

	@Override
	public List<ProductDetail> getProductDetail(int proCode) {
		
		return productDetailsDAO.getProductDetail(proCode);
	}

	@Override
	public void updateProductDetail(ProductDetail pd) {
		productDetailsDAO.updateProductDetail(pd);
		
	}

	@Override
	public Integer[] idsProductDetail() {
		
		return productDetailsDAO.idsProductDetail();
	}

	@Override
	public Integer getIdProductDetail() {
		
		return productDetailsDAO.getIdProductDetail();
	}

	@Override
	public String[] getIdcProductDetail() {
		
		return productDetailsDAO.getIdcProductDetail();
	}

	@Override
	public List<ProductDetail> getWholeProductDetail() {
		
		return productDetailsDAO.getWholeProductDetail();
	}

	@Override
	public List<ProductDetail> getWholeProductDetailNames(String proName) {
	
		return productDetailsDAO.getWholeProductDetailNames(proName);
	}

	@Override
	public List getParticularProductDetail(ProductDetail pd) {
		
		return productDetailsDAO.getParticularProductDetail(pd);
	}

	@Override
	public Integer getMaxIdOfProductDetails() {
	
		return productDetailsDAO.getMaxIdOfProductDetails();
	}

	@Override
	public void deleteProductDetail(ProductDetail pd) {
		productDetailsDAO.deleteProductDetail(pd);
	}

	@Override
	public String[] listMyform() {
		
		return productDetailsDAO.listMyform();
	}

	@Override
	public String[] listMyform2() {
		
		return productDetailsDAO.listMyform2();
	}

	@Override
	public String[] listMyform3() {
		
		return productDetailsDAO.listMyform3();
	}

	

}
