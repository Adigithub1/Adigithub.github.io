package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "PurchaseInvoiceReturnsdeails1")
public class PurchaseInvoiceReturnsdeails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int purchaseId;
	private String productName;
	private String manufacturingBy;
	private String batchNo;
	@Column(name = "returnQuantity")
	private double qty;
	private double rate;
	private double amount;
	private double vat;
	private double productFinalAmount;
	private int id;
	private String supplierName;
	@Transient
	private String SupplierCode;
	@Transient
	private String address;
	@Transient
	private String city;

	public int getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getManufacturingBy() {
		return manufacturingBy;
	}

	public void setManufacturingBy(String manufacturingBy) {
		this.manufacturingBy = manufacturingBy;
	}

	public String getBatchNo() {
		return batchNo;
	}

	public void setBatchNo(String batchNo) {
		this.batchNo = batchNo;
	}

	public double getQty() {
		return qty;
	}

	public void setQty(double qty) {
		this.qty = qty;
	}

	public double getRate() {
		return rate;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getVat() {
		return vat;
	}

	public void setVat(double vat) {
		this.vat = vat;
	}

	public double getProductFinalAmount() {
		return productFinalAmount;
	}

	public void setProductFinalAmount(double productFinalAmount) {
		this.productFinalAmount = productFinalAmount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierCode() {
		return SupplierCode;
	}

	public void setSupplierCode(String supplierCode) {
		SupplierCode = supplierCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "PurchaseInvoiceReturnsdeails [purchaseId=" + purchaseId + ", productName=" + productName
				+ ", manufacturingBy=" + manufacturingBy + ", batchNo=" + batchNo + ", qty=" + qty + ", rate=" + rate
				+ ", amount=" + amount + ", vat=" + vat + ", productFinalAmount=" + productFinalAmount + ", id=" + id
				+ ", supplierName=" + supplierName + ", SupplierCode=" + SupplierCode + ", address=" + address
				+ ", city=" + city + "]";
	}

}
