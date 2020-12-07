package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class NewSupplierInfoPojo {

	@Id
	@GeneratedValue
	private int id;
	private String supplierType;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSupplierType() {
		return supplierType;
	}
	public void setSupplierType(String supplierType) {
		this.supplierType = supplierType;
	}
	@Override
	public String toString() {
		return "NewSupplierInfoPojo [id=" + id + ", supplierType=" + supplierType + "]";
	}

	

}
