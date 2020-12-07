package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojo.NewSupplierInfoPojo;
import com.app.pojo.Supplier;
import com.app.service.SupplierService;

import com.app.dao.SupplierDAO;
@Service("supplierService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class SupplierServiceImpl implements SupplierService {
	@Autowired
	private SupplierDAO supplierDAO;
	@Override
	public boolean  saveSupplier(Supplier s) {
		return supplierDAO.saveSupplier(s);

	}

	@Override
	public List<Supplier> listSupplier() {
		
		return supplierDAO.listSupplier();
	}

	@Override
	public List<Supplier> getSupplier(int supCode) {
		
		return supplierDAO.getSupplier(supCode);
	}

	@Override
	public void updateSupplier(Supplier s) {
		supplierDAO.updateSupplier(s);

	}

	@Override
	public Integer[] ids1() {
		
		return supplierDAO.ids1();
	}

	@Override
	public Integer getId1() {
		
		return supplierDAO.getId1();
	}

	@Override
	public String[] getIdc1() {
		
		return supplierDAO.getIdc1();
	}

	@Override
	public List<Supplier> getWholeSupplier() {
		
		return supplierDAO.getWholeSupplier();
	}

	@Override
	public List<Supplier> getWholeSupplierNames(String supName) {
		
		return supplierDAO.getWholeSupplierNames(supName);
	}

	@Override
	public List getParticularSupplierProduct(Supplier s) {
		
		return supplierDAO.getParticularSupplierProduct(s);
	}

	@Override
	public String getMaxId2() {
		
		return supplierDAO.getMaxId2();
	}

	@Override
	@Transactional
	public void deleteSupplier(Supplier s) 
	{
		supplierDAO.deleteSupplier(s);
		
	}

	@Override
	public List GetDetailsOfSupplierType() {
		// TODO Auto-generated method stub
		return supplierDAO.GetSupplierTypeDetails();
	}

	@Override
	public List GetDetailsOfSupplierByType(String supplierType) {
		// TODO Auto-generated method stub
		return supplierDAO.GetDetailsOfSupplierByType(supplierType);
	}

	@Override
	public boolean SaveSupplierTypeDetAILs(NewSupplierInfoPojo asdf) {
		// TODO Auto-generated method stub
		return  supplierDAO.SaveSupplierTypeDetAILs(asdf);
	}

	@Override
	public boolean editSupplierTypeDetAILs(NewSupplierInfoPojo asdf) {
		// TODO Auto-generated method stub
	return supplierDAO.editSupplierTypeDetAILs(asdf);
	}

	@Override
	public Integer getSupplierId() {
		// TODO Auto-generated method stub
		return supplierDAO.getSupplierIdMax();
	}

	@Override
	public String[] GetSupplierTypes() {
		// TODO Auto-generated method stub
		return supplierDAO.GetSupplierTypes();
	}

	

}
