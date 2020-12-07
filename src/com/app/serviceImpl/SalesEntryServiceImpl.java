package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.SalesEntryDao;
import com.app.pojo.SalesEntryPojo;
import com.app.service.SalesEntryService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class SalesEntryServiceImpl implements SalesEntryService {

	@Autowired
	SalesEntryDao salesEntryDao;

	@Override
	public String[] getCustomerName() {

		return salesEntryDao.getproductname();
	}

	@Override
	public Integer getCustomerMaxId() {
		return salesEntryDao.getcustomerMaxId();
	}


	@Override
	public List getProductRelateddetails(SalesEntryPojo salesEntryPojo) {
		return salesEntryDao.getProductRelateddetails(salesEntryPojo);
	}

	@Override
	public void addproductDetails(SalesEntryPojo salesEntryPojo) {
		 salesEntryDao.addproductDetails(salesEntryPojo);
		
	}

	@Override
	public List getAddingProductDetails() {
		return salesEntryDao.getAddingProductDetails();
	}

	@Override
	public Double gettotalAmount() {
		return salesEntryDao.gettotalAmount();
	}

	@Override
	public void totalBilling(SalesEntryPojo salesEntryPojo) {
		salesEntryDao.totalBilling(salesEntryPojo);
		
	}

	@Override
	public void deleteSales(int salesid) {
		salesEntryDao.deleteSales(salesid);
		
	}

	@Override
	public List<SalesEntryPojo> getCustomerDetails() {
		
		return salesEntryDao.getCustomerDetails();
	}

	@Override
	public List<SalesEntryPojo> getUserParticularDayDetails(String salesDate) {
		
		return salesEntryDao.getUserParticularDayDetails(salesDate);
	}

	@Override
	public void canceslsalesEntryDetails() {
		 salesEntryDao.canceslsalesEntryDetails();
		
	}

	

	
}
