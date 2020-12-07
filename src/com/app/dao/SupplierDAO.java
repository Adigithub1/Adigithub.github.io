package com.app.dao;

import java.util.List;

import com.app.pojo.NewSupplierInfoPojo;
import com.app.pojo.Supplier;

public interface SupplierDAO {
	public boolean saveSupplier(Supplier s);

	public List<Supplier> listSupplier();

	public List<Supplier> getSupplier(int supCode);

	public void updateSupplier(Supplier s);

	public Integer[] ids1();

	public Integer getId1();

	public String[] getIdc1();

	public List<Supplier> getWholeSupplier();

	public List<Supplier> getWholeSupplierNames(String supName);

	public List getParticularSupplierProduct(Supplier s);

	public String getMaxId2();

	/** CUSTOMER DELETE */
	/***/

	public void deleteSupplier(Supplier s);

	public List GetSupplierTypeDetails();

	public List GetDetailsOfSupplierByType(String supplierType);

	public boolean SaveSupplierTypeDetAILs(NewSupplierInfoPojo asdf);

	public boolean editSupplierTypeDetAILs(NewSupplierInfoPojo asdf);

	public Integer getSupplierIdMax();

	public String[] GetSupplierTypes();
}
