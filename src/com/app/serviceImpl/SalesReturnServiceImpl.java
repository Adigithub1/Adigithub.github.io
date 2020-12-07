package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.SalesReturnDao;
import com.app.pojo.SalesEntryPojo;
import com.app.service.SalesReturnsService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class SalesReturnServiceImpl implements SalesReturnsService {

	@Autowired
	SalesReturnDao salesReturnDao;

	@Override
	public String[] getCustomerName() {

		return salesReturnDao.getproductname();
	}

	@Override
	public List getProductRelateddetails(SalesEntryPojo salesEntryPojo) {
		return salesReturnDao.getProductRelateddetails(salesEntryPojo);
	}

	@Override
	public void addproductDetails(SalesEntryPojo salesEntryPojo) {
		salesReturnDao.addproductDetails(salesEntryPojo);

	}

	@Override
	public List getAddingProductDetails() {
		return salesReturnDao.getAddingProductDetails();
	}

	@Override
	public Double gettotalAmount() {
		return salesReturnDao.gettotalAmount();
	}

	@Override
	public void totalBilling(SalesEntryPojo salesEntryPojo) {
		salesReturnDao.totalBilling(salesEntryPojo);

	}

	@Override
	public void deleteSales(int salesReturnsid) {
		salesReturnDao.deleteSales(salesReturnsid);

	}

	@Override
	public String[] getCustomerNameOnDb() {
		// TODO Auto-generated method stub
		return salesReturnDao.getCustomerNameOnDb();
	}

	@Override
	public List getsalesPersonNames(String name) {
		// TODO Auto-generated method stub
		return salesReturnDao.getsalesPersonNames(name);
	}

	@Override
	public List getdetailsOfsalesReturns() {
		// TODO Auto-generated method stub
		return salesReturnDao.getdetailsOfsalesReturns();
	}

	@Override
	public List getdetailsOfsalesReturnsName(SalesEntryPojo salesEntryPojo) {
		return salesReturnDao.getdetailsOfsalesReturnsName(salesEntryPojo);
	}

	@Override
	public String[] getSalesReturnsNames() {
		return salesReturnDao.getSalesReturnsNames();
	}

	@Override
	public void cancessalesReturns() {
		salesReturnDao.cancessalesReturns();
		
	}

	@Override
	public Double getQty(String productName, String name) {
		// TODO Auto-generated method stub
		return salesReturnDao.getQty(productName,name);
	}
}
