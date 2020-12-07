package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TotalProductSales {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int salesid;
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

	private int CustomerId;

	public int getSalesid() {
		return salesid;
	}

	public void setSalesid(int salesid) {
		this.salesid = salesid;
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

	public int getCustomerId() {
		return CustomerId;
	}

	public void setCustomerId(int customerId) {
		CustomerId = customerId;
	}

	@Override
	public String toString() {
		return "TotalProductSales [salesid=" + salesid + ", productName=" + productName + ", batNo=" + batNo
				+ ", availQuty=" + availQuty + ", mfgdate=" + mfgdate + ", expdate=" + expdate + ", salesQty="
				+ salesQty + ", utRate=" + utRate + ", value=" + value + ", discount=" + discount + ", amount=" + amount
				+ ", CustomerId=" + CustomerId + "]";
	}

}
