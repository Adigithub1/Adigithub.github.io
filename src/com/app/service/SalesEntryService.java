package com.app.service;

import java.util.List;

import com.app.pojo.SalesEntryPojo;

public interface SalesEntryService {

	public String[] getCustomerName();

	public Integer getCustomerMaxId();

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
