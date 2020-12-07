package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SupplierInformation")
public class Supplier {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int supCode;
	private String supName;
	private String city;
	private String address;
	
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

	public int getSupCode() {
		return supCode;
	}

	public void setSupCode(int supCode) {
		this.supCode = supCode;
	}

	public String getSupName() {
		return supName;
	}

	public void setSupName(String supName) {
		this.supName = supName;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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
		return "Supplier [supCode=" + supCode + ", supName=" + supName + ", supType=" + supType + ", phNum=" + phNum
				+ ", contactPerson=" + contactPerson + ", contPhNum=" + contPhNum + ", area=" + area + ", city=" + city
				+ ", state=" + state + ", country=" + country + ", pincode=" + pincode + ", fax=" + fax + ", address="
				+ address + ", email=" + email + ", aggtNum=" + aggtNum + ", aggtDate=" + aggtDate + ", cstNum="
				+ cstNum + ", apNum=" + apNum + ", tinNum=" + tinNum + ", remarks=" + remarks + "]";
	}

}
