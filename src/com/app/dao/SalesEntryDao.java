package com.app.dao;

import java.util.List;

import com.app.pojo.SalesEntryPojo;

public interface SalesEntryDao {

	public String[] getproductname();

	public Integer getcustomerMaxId();

	public List getProductRelateddetails(SalesEntryPojo salesEntryPojo);

	public void addproductDetails(SalesEntryPojo salesEntryPojo);

	public List getAddingProductDetails();

	public Double gettotalAmount();

	public void totalBilling(SalesEntryPojo salesEntryPojo);

	public void deleteSales(int salesid);
	public List<SalesEntryPojo> getCustomerDetails();
	public List<SalesEntryPojo> getUserParticularDayDetails(String salesDate);

	public void canceslsalesEntryDetails();

}
