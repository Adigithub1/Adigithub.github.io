package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.PurchaseInvoiceDao;
import com.app.pojo.PurchaseInvoiceePojo;
import com.app.service.PurchaseInvoiceService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PurchaseInvoiceServiceImpl implements PurchaseInvoiceService {

	@Autowired
	PurchaseInvoiceDao purchaseInvoiceDao;

	@Override
	public String[] getSuppliername() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getSuppliername();
	}

	/*@Override
	public String[] getSupplierCode() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getSupplierCode();
	}*/

	@Override
	public String getgrnMaxId() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getgrnMaxId();
	}

	@Override
	public String[] getProductname() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getProductname();
	}

	@Override
	public String getsupplierAddress(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getsupplierAddress(purchaseInvoiceePojo);
	}

	@Override
	public String getsupplierCity(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getsupplierCity(purchaseInvoiceePojo);
	}

	@Override
	public String getsupplierAddress(String supplierName) {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getsupplierAddress(supplierName);
	}

	@Override
	public String getsupplierCity(String supplierName) {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getsupplierCity(supplierName);
	}

	@Override
	public void saveParticularproducts(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		// TODO Auto-generated method stub
		purchaseInvoiceDao.saveParticularproducts(purchaseInvoiceePojo);
	}

	@Override
	public List getgetProductDetails() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getproductDetails();
	}

	@Override
	public void totalSave(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		purchaseInvoiceDao.totalSave(purchaseInvoiceePojo);
		
	}

	@Override
	public void delete(int purchaseId) {
		purchaseInvoiceDao.delete(purchaseId);
		
	}

	@Override
	public String getsupplierAddressFromTable() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getsupplierAddressFromTable();
	}

	@Override
	public String getsupplierCityFromTable() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getsupplierCityFromTable();
	}

	@Override
	public String getSupplierNameFromTable() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.getSupplierNameFromTable();
	}

	@Override
	public Double getTotalAmount() {
		return purchaseInvoiceDao.getTotalAmount();
	}

	@Override
	public Integer getTotalNoOfItems() {
		return purchaseInvoiceDao.getTotalNoOfItems();
	}

	@Override
	public List<PurchaseInvoiceePojo> GetDetails() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.GetDetails();
	}

	@Override
	public String[] getIdc() {
		
		return purchaseInvoiceDao.getIdc();
	}

	@Override
	public List getParticularSuppilerName(
			PurchaseInvoiceePojo purchaseInvoiceePojo) {
		
		return purchaseInvoiceDao.getParticularSuppilerName(purchaseInvoiceePojo);
	}

	@Override
	public void cancelPurchaseInvoicedetilas() {
		purchaseInvoiceDao.cancelPurchaseInvoicedetilas();
		
	}

	@Override
	public List GetDetailsOfSuplierDetails(String supplierName) {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.GetDetailsOfSuplierDetails(supplierName);
	}

	@Override
	public String invoiceMaxNumber() {
		// TODO Auto-generated method stub
		return purchaseInvoiceDao.invoiceMaxNumber();
	}

}
