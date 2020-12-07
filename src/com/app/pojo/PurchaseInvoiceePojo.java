package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class PurchaseInvoiceePojo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String supplierName;
	@Transient
	private String SupplierCode;
	private String address;
	private String city;
	private String purchaseType;
	private String grnNo;
	private String invoiceNo;
	private String invoiceDate;
	private String recivedDate;
	@Transient
	private String ricivedby;
	private int noOfitems;
	private double subTotal;
	@Transient
	private String productCode;
	@Transient
	private String productName;
	@Transient
	private String pack;
	@Transient
	private String manufacturingBy;
	private double packQty;
	@Transient
	private String batchNo;
	@Transient
	private String mnfDate;
	@Transient
	private String expDate;
	@Transient
	private double qty;
	@Transient
	private double free;
	@Transient
	private double rate;
	@Transient
	private double amount;
	@Transient
	private double mrp;
	private double vat;
	@Transient
	private double productFinalAmount;
	private double netPayable;
	@Transient
	private double adjustments;
	@Transient
	private double roundedTotalAmount;
	@Transient
	private int purchaseId;
	

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

	public String getPurchaseType() {
		return purchaseType;
	}

	public void setPurchaseType(String purchaseType) {
		this.purchaseType = purchaseType;
	}

	public String getGrnNo() {
		return grnNo;
	}

	public void setGrnNo(String grnNo) {
		this.grnNo = grnNo;
	}

	public String getInvoiceNo() {
		return invoiceNo;
	}

	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}

	public String getInvoiceDate() {
		return invoiceDate;
	}

	public void setInvoiceDate(String invoiceDate) {
		this.invoiceDate = invoiceDate;
	}

	public String getRecivedDate() {
		return recivedDate;
	}

	public void setRecivedDate(String recivedDate) {
		this.recivedDate = recivedDate;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
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

	public int getNoOfitems() {
		return noOfitems;
	}

	public void setNoOfitems(int noOfitems) {
		this.noOfitems = noOfitems;
	}

	public double getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}

	public double getNetPayable() {
		return netPayable;
	}

	public void setNetPayable(double netPayable) {
		this.netPayable = netPayable;
	}

	public double getAdjustments() {
		return adjustments;
	}

	public void setAdjustments(double adjustments) {
		this.adjustments = adjustments;
	}

	public double getRoundedTotalAmount() {
		return roundedTotalAmount;
	}

	public void setRoundedTotalAmount(double roundedTotalAmount) {
		this.roundedTotalAmount = roundedTotalAmount;
	}

	public int getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}

	public String getRicivedby() {
		return ricivedby;
	}

	public void setRicivedby(String ricivedby) {
		this.ricivedby = ricivedby;
	}

	@Override
	public String toString() {
		return "PurchaseInvoiceePojo [id=" + id + ", supplierName=" + supplierName + ", SupplierCode=" + SupplierCode
				+ ", address=" + address + ", city=" + city + ", purchaseType=" + purchaseType + ", grnNo=" + grnNo
				+ ", invoiceNo=" + invoiceNo + ", invoiceDate=" + invoiceDate + ", recivedDate=" + recivedDate
				+ ", productCode=" + productCode + ", productName=" + productName + ", pack=" + pack
				+ ", manufacturingBy=" + manufacturingBy + ", packQty=" + packQty + ", batchNo=" + batchNo
				+ ", mnfDate=" + mnfDate + ", expDate=" + expDate + ", qty=" + qty + ", free=" + free + ", rate=" + rate
				+ ", amount=" + amount + ", mrp=" + mrp + ", vat=" + vat + ", productFinalAmount=" + productFinalAmount
				+ ", noOfitems=" + noOfitems + ", subTotal=" + subTotal + ", netPayable=" + netPayable
				+ ", adjustments=" + adjustments + ", roundedTotalAmount=" + roundedTotalAmount + ", purchaseId="
				+ purchaseId + ", ricivedby=" + ricivedby + "]";
	}

}
