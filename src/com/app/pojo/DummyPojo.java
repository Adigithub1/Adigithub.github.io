package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DummyPojo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int DummyPojoId;
	private int CustomerId;
	private String customerType;
	private String billingType;
	private String salesType;
	private String salesDate;

	public int getDummyPojoId() {
		return DummyPojoId;
	}

	public void setDummyPojoId(int dummyPojoId) {
		DummyPojoId = dummyPojoId;
	}

	public int getCustomerId() {
		return CustomerId;
	}

	public void setCustomerId(int customerId) {
		CustomerId = customerId;
	}

	public String getCustomerType() {
		return customerType;
	}

	public void setCustomerType(String customerType) {
		this.customerType = customerType;
	}

	public String getBillingType() {
		return billingType;
	}

	public void setBillingType(String billingType) {
		this.billingType = billingType;
	}

	public String getSalesType() {
		return salesType;
	}

	public void setSalesType(String salesType) {
		this.salesType = salesType;
	}

	public String getSalesDate() {
		return salesDate;
	}

	public void setSalesDate(String salesDate) {
		this.salesDate = salesDate;
	}

	@Override
	public String toString() {
		return "DummyPojo [DummyPojoId=" + DummyPojoId + ", CustomerId=" + CustomerId + ", customerType=" + customerType
				+ ", billingType=" + billingType + ", salesType=" + salesType + ", salesDate=" + salesDate + "]";
	}

}
