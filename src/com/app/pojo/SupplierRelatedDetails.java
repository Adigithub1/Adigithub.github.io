package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "SupplierInformation")
public class SupplierRelatedDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "supCode")
	private int supplierId;
	@Column(name = "supName")
	private String supplierName;
	@Column(name = "address")
	private String address;
	@Column(name = "city")
	private String city;
	@Transient
	private String supplierCode;

	private String supType;
	private String phNum;
	private String contactPerson;
	private String contPhNum;
	private String area;
	private String state;
	private String country;
	private String pincode;
	private String fax;
	private String email;
	private String aggtNum;
	private String aggtDate;
	private String cstNum;
	private String apNum;
	private String tinNum;
	private String remarks;

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
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

	public String getSupplierCode() {
		return supplierCode;
	}

	public void setSupplierCode(String supplierCode) {
		this.supplierCode = supplierCode;
	}

	public String getSupType() {
		return supType;
	}

	public void setSupType(String supType) {
		this.supType = supType;
	}

	public String getPhNum() {
		return phNum;
	}

	public void setPhNum(String phNum) {
		this.phNum = phNum;
	}

	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public String getContPhNum() {
		return contPhNum;
	}

	public void setContPhNum(String contPhNum) {
		this.contPhNum = contPhNum;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAggtNum() {
		return aggtNum;
	}

	public void setAggtNum(String aggtNum) {
		this.aggtNum = aggtNum;
	}

	public String getAggtDate() {
		return aggtDate;
	}

	public void setAggtDate(String aggtDate) {
		this.aggtDate = aggtDate;
	}

	public String getCstNum() {
		return cstNum;
	}

	public void setCstNum(String cstNum) {
		this.cstNum = cstNum;
	}

	public String getApNum() {
		return apNum;
	}

	public void setApNum(String apNum) {
		this.apNum = apNum;
	}

	public String getTinNum() {
		return tinNum;
	}

	public void setTinNum(String tinNum) {
		this.tinNum = tinNum;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Override
	public String toString() {
		return "SupplierRelatedDetails [supplierId=" + supplierId + ", supplierName=" + supplierName + ", address="
				+ address + ", city=" + city + ", supplierCode=" + supplierCode + ", supType=" + supType + ", phNum="
				+ phNum + ", contactPerson=" + contactPerson + ", contPhNum=" + contPhNum + ", area=" + area
				+ ", state=" + state + ", country=" + country + ", pincode=" + pincode + ", fax=" + fax + ", email="
				+ email + ", aggtNum=" + aggtNum + ", aggtDate=" + aggtDate + ", cstNum=" + cstNum + ", apNum=" + apNum
				+ ", tinNum=" + tinNum + ", remarks=" + remarks + "]";
	}

}
