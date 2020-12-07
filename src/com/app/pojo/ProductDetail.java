package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ProductDetailAVINASH")
public class ProductDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int proCode;
	private String proName;
	private String proType;
	private String proUnit;
	private String packingType;
	private int vatTax;
	private String manufacBy;

	private double availQuty;
	private double utRate;
	private double mrp;
	public int getProCode() {
		return proCode;
	}

	public void setProCode(int proCode) {
		this.proCode = proCode;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProType() {
		return proType;
	}

	public void setProType(String proType) {
		this.proType = proType;
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

	public double getAvailQuty() {
		return availQuty;
	}

	public void setAvailQuty(double availQuty) {
		this.availQuty = availQuty;
	}

	public double getUtRate() {
		return utRate;
	}

	public void setUtRate(double utRate) {
		this.utRate = utRate;
	}

	public double getMrp() {
		return mrp;
	}

	public void setMrp(double mrp) {
		this.mrp = mrp;
	}

	@Override
	public String toString() {
		return "ProductDetail [proCode=" + proCode + ", proName=" + proName + ", proType=" + proType + ", proUnit="
				+ proUnit + ", packingType=" + packingType + ", vatTax=" + vatTax + ", manufacBy=" + manufacBy
				+ ", availQuty=" + availQuty + ", utRate=" + utRate + ", mrp=" + mrp + "]";
	}
	

}
