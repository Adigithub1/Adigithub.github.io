package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.PurchaseInvoiceReturnsDao;
import com.app.pojo.PurchaseInvoiceePojo;
import com.app.pojo.PurchaseInvoiceeReturns;
import com.app.service.PurchaseInvoiceReturnsService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PurchaseInvoiceReturnsServiceImpl implements PurchaseInvoiceReturnsService {

	@Autowired
	PurchaseInvoiceReturnsDao purchaseInvoiceReturnsDao;

	@Override
	public String[] getSuppliername() {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getSuppliername();
	}

	@Override
	public String[] getSupplierCode() {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getSupplierCode();
	}

	@Override
	public String getgrnMaxId() {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getgrnMaxId();
	}

	@Override
	public String[] getProductname(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getProductname(purchaseInvoiceePojo);
	}

	@Override
	public String getsupplierAddress(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getsupplierAddress(purchaseInvoiceePojo);
	}

	@Override
	public String getsupplierCity(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getsupplierCity(purchaseInvoiceePojo);
	}

	@Override
	public String getsupplierAddress(String supplierName) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getsupplierAddress(supplierName);
	}

	@Override
	public String getsupplierCity(String supplierName) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getsupplierCity(supplierName);
	}

	@Override
	public void saveParticularproducts(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		purchaseInvoiceReturnsDao.saveParticularproducts(purchaseInvoiceePojo);
	}

	@Override
	public List getgetProductDetails() {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getproductDetails();
	}

	@Override
	public void totalSave(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		purchaseInvoiceReturnsDao.totalSave(purchaseInvoiceePojo);
		
	}

	@Override
	public void delete(int purchaseId) {
		purchaseInvoiceReturnsDao.delete(purchaseId);
		
	}

	@Override
	public String getsupplierAddressFromTable() {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getsupplierAddressFromTable();
	}

	@Override
	public String getsupplierCityFromTable() {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getsupplierCityFromTable();
	}

	@Override
	public String getSupplierNameFromTable() {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.getSupplierNameFromTable();
	}

	@Override
	public Double getTotalAmount() {
		return purchaseInvoiceReturnsDao.getTotalAmount();
	}

	@Override
	public Integer getTotalNoOfItems() {
		return purchaseInvoiceReturnsDao.getTotalNoOfItems();
	}

	@Override
	public String purchaseTypegetting(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.purchaseTypegetting(purchaseInvoiceePojo);
	}

	@Override
	public String invoicenumber(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.invoicenumber(purchaseInvoiceePojo);
	}

	@Override
	public String invoiceDate(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.invoiceDates(purchaseInvoiceePojo);
	}

	@Override
	public String purchaseDate(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceReturnsDao.purchaseDate(purchaseInvoiceePojo);
	}

	@Override
	public String getproductmanufacturingBy(String supplierName, String productName) {
		return purchaseInvoiceReturnsDao.getproductmanufacturingBy(supplierName,productName);
	}

	@Override
	public Double getVat(String supplierName, String productName) {
		return purchaseInvoiceReturnsDao.getVat(supplierName,productName);
	}

	@Override
	public Double getrate(String supplierName, String productName) {
		return purchaseInvoiceReturnsDao.getrate(supplierName,productName);
	}

	@Override
	public String getBatchNo(String supplierName, String productName) {
		return purchaseInvoiceReturnsDao.getBatchNo(supplierName,productName);
	}

	@Override
	public List getPurchaseReturnsList() {
		return purchaseInvoiceReturnsDao.getPurchaseReturnsList();
	}

	@Override
	public List getListBySupplierName(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		return purchaseInvoiceReturnsDao.getListBySupplierName(purchaseInvoiceePojo);
	}

	@Override
	public String[] getSuppliernameDetails() {
		return purchaseInvoiceReturnsDao.getSuppliernameDetails();
	}

	@Override
	public void canswelPurchaseReturns() {
		 purchaseInvoiceReturnsDao.canswelPurchaseReturns();
		
	}

	@Override
	public String supplierNameDetailsOs(int purchaseId) {
		// TODO Auto-generated method stub
		return  purchaseInvoiceReturnsDao.supplierNameDetailsOs(purchaseId);
	}

	@Override
	public void deleteDetailsOf(int purchaseId) {
		 purchaseInvoiceReturnsDao.deleteDetailsOf(purchaseId);
	}

	@Override
	public Double getQuantity(String supplierName, String productName) {
		// TODO Auto-generated method stub
		return  purchaseInvoiceReturnsDao.getQty(supplierName,productName);
	}

}
