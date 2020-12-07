package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TotalProductReturns {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int salesReturnsid;
	private String productName;
	private String batNo;
	private double availQuty;
	private String mfgdate;
	private String expdate;
	private double salesQty;
	private double utRate;
	private double value;
	private double discount;
	private double amount;
	
	private String name;

	private int CustomerReturnsId;

	public int getSalesReturnsid() {
		return salesReturnsid;
	}

	
	
	
	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public void setSalesReturnsid(int salesReturnsid) {
		this.salesReturnsid = salesReturnsid;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getBatNo() {
		return batNo;
	}

	public void setBatNo(String batNo) {
		this.batNo = batNo;
	}

	public double getAvailQuty() {
		return availQuty;
	}

	public void setAvailQuty(double availQuty) {
		this.availQuty = availQuty;
	}

	public String getMfgdate() {
		return mfgdate;
	}

	public void setMfgdate(String mfgdate) {
		this.mfgdate = mfgdate;
	}

	public String getExpdate() {
		return expdate;
	}

	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}

	public double getSalesQty() {
		return salesQty;
	}

	public void setSalesQty(double salesQty) {
		this.salesQty = salesQty;
	}

	public double getUtRate() {
		return utRate;
	}

	public void setUtRate(double utRate) {
		this.utRate = utRate;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getCustomerReturnsId() {
		return CustomerReturnsId;
	}

	public void setCustomerReturnsId(int customerReturnsId) {
		CustomerReturnsId = customerReturnsId;
	}

	@Override
	public String toString() {
		return "TotalProductReturns [salesReturnsid=" + salesReturnsid + ", productName=" + productName + ", batNo="
				+ batNo + ", availQuty=" + availQuty + ", mfgdate=" + mfgdate + ", expdate=" + expdate + ", salesQty="
				+ salesQty + ", utRate=" + utRate + ", value=" + value + ", discount=" + discount + ", amount=" + amount
				+ ", CustomerReturnsId=" + CustomerReturnsId + "]";
	}

}
