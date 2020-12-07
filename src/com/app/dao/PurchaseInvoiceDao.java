package com.app.dao;

import java.util.List;

import com.app.pojo.PurchaseInvoiceePojo;

public interface PurchaseInvoiceDao {

	public String[] getSuppliername();

	/*
	 * public String[] getSupplierCode();
	 */
	public String getgrnMaxId();

	public String[] getProductname();

	public String getsupplierAddress(PurchaseInvoiceePojo purchaseInvoiceePojo);

	public String getsupplierCity(PurchaseInvoiceePojo purchaseInvoiceePojo);

	public String getsupplierAddress(String supplierName);

	public String getsupplierCity(String supplierName);

	public void saveParticularproducts(PurchaseInvoiceePojo purchaseInvoiceePojo);

	public List getproductDetails();

	public void totalSave(PurchaseInvoiceePojo purchaseInvoiceePojo);

	public void delete(int purchaseId);

	public String getsupplierAddressFromTable();

	public String getsupplierCityFromTable();

	public String getSupplierNameFromTable();

	public Double getTotalAmount();

	public Integer getTotalNoOfItems();

	public List<PurchaseInvoiceePojo> GetDetails();

	public List getParticularSuppilerName(PurchaseInvoiceePojo purchaseInvoiceePojo);

	public String[] getIdc();

	public void cancelPurchaseInvoicedetilas();

	public List GetDetailsOfSuplierDetails(String supplierName);

	public String invoiceMaxNumber();

}
