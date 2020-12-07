package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class PurchaseInvoicedeails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int purchaseId;
	
	
	private String productName;
	private String pack;
	private String manufacturingBy;
	private double packQty;
	private String batchNo;
	private String mnfDate;
	private String expDate;
	private double rate;
	private double amount;
	private double mrp;
	private double qty;
	private String address;
	private String city;
	private int id;
	
	
	@Transient
	private double free;
	@Transient
	private double vat;
	@Transient
	private double productFinalAmount;
	private String supplierName;
	@Transient
	private String SupplierCode;
	

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

	public String getPack() {
		return pack;
	}

	public void setPack(String pack) {
		this.pack = pack;
	}

	public String getManufacturingBy() {
		return manufacturingBy;
	}

	public void setManufacturingBy(String manufacturingBy) {
		this.manufacturingBy = manufacturingBy;
	}

	public double getPackQty() {
		return packQty;
	}

	public void setPackQty(double packQty) {
		this.packQty = packQty;
	}

	public String getBatchNo() {
		return batchNo;
	}

	public void setBatchNo(String batchNo) {
		this.batchNo = batchNo;
	}

	public String getMnfDate() {
		return mnfDate;
	}

	public void setMnfDate(String mnfDate) {
		this.mnfDate = mnfDate;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public double getQty() {
		return qty;
	}

	public void setQty(double qty) {
		this.qty = qty;
	}

	public double getFree() {
		return free;
	}

	public void setFree(double free) {
		this.free = free;
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

	public double getMrp() {
		return mrp;
	}

	public void setMrp(double mrp) {
		this.mrp = mrp;
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
		return "PurchaseInvoicedeails [purchaseId=" + purchaseId + ", productName=" + productName + ", pack=" + pack
				+ ", manufacturingBy=" + manufacturingBy + ", packQty=" + packQty + ", batchNo=" + batchNo
				+ ", mnfDate=" + mnfDate + ", expDate=" + expDate + ", qty=" + qty + ", free=" + free + ", rate=" + rate
				+ ", amount=" + amount + ", mrp=" + mrp + ", vat=" + vat + ", productFinalAmount=" + productFinalAmount
				+ ", id=" + id + ", supplierName=" + supplierName + ", SupplierCode=" + SupplierCode + ", address="
				+ address + ", city=" + city + "]";
	}

}
