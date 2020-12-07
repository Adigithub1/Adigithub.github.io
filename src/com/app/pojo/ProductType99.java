package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "ProductDetailAVINASH")
public class ProductType99 {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "proCode")
	private int id;
	@Column(name = "proName")
	private String productTypeName;
	@Transient
	private String reprasantation;
	@Column(name = "proType")
	private String type;
	@Column(name = "availQuty")
	private double avilQty;
	private double utRate;
	private String proUnit;
	private String packingType;
	private int vatTax;
	private String manufacBy;

	private String batNo;
	private String mfgdate;
	private String expdate;
	private double mrp;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductTypeName() {
		return productTypeName;
	}

	public void setProductTypeName(String productTypeName) {
		this.productTypeName = productTypeName;
	}

	public String getReprasantation() {
		return reprasantation;
	}

	public void setReprasantation(String reprasantation) {
		this.reprasantation = reprasantation;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getAvilQty() {
		return avilQty;
	}

	public void setAvilQty(double avilQty) {
		this.avilQty = avilQty;
	}

	public double getUtRate() {
		return utRate;
	}

	public void setUtRate(double utRate) {
		this.utRate = utRate;
	}

	public String getProUnit() {
		return proUnit;
	}

	public void setProUnit(String proUnit) {
		this.proUnit = proUnit;
	}

	public String getPackingType() {
		return packingType;
	}

	public void setPackingType(String packingType) {
		this.packingType = packingType;
	}

	public int getVatTax() {
		return vatTax;
	}

	public void setVatTax(int vatTax) {
		this.vatTax = vatTax;
	}

	public String getManufacBy() {
		return manufacBy;
	}

	public void setManufacBy(String manufacBy) {
		this.manufacBy = manufacBy;
	}

	public String getBatNo() {
		return batNo;
	}

	public void setBatNo(String batNo) {
		this.batNo = batNo;
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

	public double getMrp() {
		return mrp;
	}

	public void setMrp(double mrp) {
		this.mrp = mrp;
	}

	@Override
	public String toString() {
		return "ProductType99 [id=" + id + ", productTypeName=" + productTypeName + ", reprasantation=" + reprasantation
				+ ", type=" + type + ", avilQty=" + avilQty + ", utRate=" + utRate + ", proUnit=" + proUnit
				+ ", packingType=" + packingType + ", vatTax=" + vatTax + ", manufacBy=" + manufacBy + ", batNo="
				+ batNo + ", mfgdate=" + mfgdate + ", expdate=" + expdate + ", mrp=" + mrp + "]";
	}
	

}
