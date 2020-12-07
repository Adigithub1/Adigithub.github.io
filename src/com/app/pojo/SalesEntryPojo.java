package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
public class SalesEntryPojo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int CustomerId;
	private String name;
	private String customerType;
	private String billingType;
	private String salesType;
	private String salesDate;
	private String billStatus;
	@Transient
	private String productName;
	@Transient
	private String batNo;
	@Transient
	private double availQuty;
	@Transient
	private String mfgdate;
	@Transient
	private String expdate;
	@Transient
	private double salesQty;
	@Transient
	private double utRate;
	@Transient
	private double value;
	@Transient
	private double discount;
	@Transient
	private double amount;
	private double totalAmount;
	private double avgDiscount;
	private double netTotal;
	private double cashRecived;
	@Column(name = "dueamount")
	private double remainingCharge;
	
	private int salesid;
	@Transient
	private int salesReturnsid;

	@Transient
	private double returnAmount;
	

	public int getSalesReturnsid() {
		return salesReturnsid;
	}

	public void setSalesReturnsid(int salesReturnsid) {
		this.salesReturnsid = salesReturnsid;
	}

	public int getCustomerId() {
		return CustomerId;
	}

	public void setCustomerId(int customerId) {
		CustomerId = customerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getBillStatus() {
		return billStatus;
	}

	public void setBillStatus(String billStatus) {
		this.billStatus = billStatus;
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

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public double getAvgDiscount() {
		return avgDiscount;
	}

	public void setAvgDiscount(double avgDiscount) {
		this.avgDiscount = avgDiscount;
	}

	public double getNetTotal() {
		return netTotal;
	}

	public void setNetTotal(double netTotal) {
		this.netTotal = netTotal;
	}

	public double getCashRecived() {
		return cashRecived;
	}

	public void setCashRecived(double cashRecived) {
		this.cashRecived = cashRecived;
	}

	public double getRemainingCharge() {
		return remainingCharge;
	}

	public void setRemainingCharge(double remainingCharge) {
		this.remainingCharge = remainingCharge;
	}

	public int getSalesid() {
		return salesid;
	}

	public void setSalesid(int salesid) {
		this.salesid = salesid;
	}

	public double getReturnAmount() {
		return returnAmount;
	}

	public void setReturnAmount(double returnAmount) {
		this.returnAmount = returnAmount;
	}

	@Override
	public String toString() {
		return "SalesEntryPojo [CustomerId=" + CustomerId + ", name=" + name + ", customerType=" + customerType
				+ ", billingType=" + billingType + ", salesType=" + salesType + ", salesDate=" + salesDate
				+ ", billStatus=" + billStatus + ", productName=" + productName + ", batNo=" + batNo + ", availQuty="
				+ availQuty + ", mfgdate=" + mfgdate + ", expdate=" + expdate + ", salesQty=" + salesQty + ", utRate="
				+ utRate + ", value=" + value + ", discount=" + discount + ", amount=" + amount + ", totalAmount="
				+ totalAmount + ", avgDiscount=" + avgDiscount + ", netTotal=" + netTotal + ", cashRecived="
				+ cashRecived + ", remainingCharge=" + remainingCharge + ", salesid=" + salesid + ", returnAmount="
				+ returnAmount + "]";
	}

}
