package com.app.service;

import java.util.List;

import com.app.pojo.ProductDetail;

public interface ProductDetailService
{
	public boolean saveProductDetail(ProductDetail pd);

	public List<ProductDetail> listProductDetail();

	public List<ProductDetail> getProductDetail(int proCode);

	public void updateProductDetail(ProductDetail pd);

	public Integer[] idsProductDetail();

	public Integer getIdProductDetail();

	public String[] getIdcProductDetail();

	public List<ProductDetail> getWholeProductDetail();

	public List<ProductDetail> getWholeProductDetailNames(String proName);

	public List getParticularProductDetail(ProductDetail pd);

	public Integer getMaxIdOfProductDetails();
/** PRODUCT DETAIS DELETE *//***/
	
	public void deleteProductDetail(ProductDetail pd);
	public String[] listMyform();
	public String[] listMyform2();
	public String[] listMyform3();
	
}
