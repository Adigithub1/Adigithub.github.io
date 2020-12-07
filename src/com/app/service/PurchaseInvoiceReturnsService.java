package com.app.service;

import java.util.List;

import com.app.pojo.PurchaseInvoiceePojo;
import com.app.pojo.PurchaseInvoiceeReturns;

public interface PurchaseInvoiceReturnsService {

	public String[] getSuppliername();

	public String[] getSupplierCode();

	public String getgrnMaxId();

	public String[] getProductname(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String getsupplierAddress(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String getsupplierCity(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String getsupplierAddress(String supplierName);

	public String getsupplierCity(String supplierName);

	public void saveParticularproducts(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public List getgetProductDetails();

	public void totalSave(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public void delete(int purchaseId);

	public String getsupplierAddressFromTable();

	public String getsupplierCityFromTable();

	public String getSupplierNameFromTable();

	public Double getTotalAmount();

	public Integer getTotalNoOfItems();

	public String purchaseTypegetting(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String invoicenumber(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String invoiceDate(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String purchaseDate(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String getproductmanufacturingBy(String supplierName, String productName);

	public Double getVat(String supplierName, String productName);

	public Double getrate(String supplierName, String productName);

	public String getBatchNo(String supplierName, String productName);

	public List getPurchaseReturnsList();

	public List getListBySupplierName(PurchaseInvoiceeReturns purchaseInvoiceePojo);

	public String[] getSuppliernameDetails();

	public void canswelPurchaseReturns();

	public String supplierNameDetailsOs(int purchaseId);

	public void deleteDetailsOf(int purchaseId);

	public Double getQuantity(String supplierName, String productName);




}
