package com.app.service;

import java.util.List;

import com.app.pojo.SalesEntryPojo;

public interface SalesReturnsService {

	public String[] getCustomerName();

	public List getProductRelateddetails(SalesEntryPojo salesEntryPojo);

	public void addproductDetails(SalesEntryPojo salesEntryPojo);

	public List getAddingProductDetails();

	public Double gettotalAmount();

	public void totalBilling(SalesEntryPojo salesEntryPojo);

	public void deleteSales(int salesid);

	public String[] getCustomerNameOnDb();

	public List getsalesPersonNames(String name);

	public List getdetailsOfsalesReturns();

	public List getdetailsOfsalesReturnsName(SalesEntryPojo salesEntryPojo);

	public String[] getSalesReturnsNames();

	public void cancessalesReturns();

	public Double getQty(String productName, String name);

}
