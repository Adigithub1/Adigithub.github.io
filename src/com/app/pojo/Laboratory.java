package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LabDetails")
public class Laboratory 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int labId;
	private String labName;
	private String labNum;
	private String establish;
	private String state;
	private String email;
	private String city;
	private String phNum1;
	private String phNum2;
	private String phNum3;
	private String phNum4;
	private String director;
	private String address1;
	private String address2;
	private String pincode;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	private String country;
	private String fax;
	

	// Contact 
	private String contactPerson;
	private String contactPhNum;
	private String promoter;
	public int getLabId() {
		return labId;
	}
	public void setLabId(int labId) {
		this.labId = labId;
	}
	public String getLabName() {
		return labName;
	}
	public void setLabName(String labName) {
		this.labName = labName;
	}
	public String getLabNum() {
		return labNum;
	}
	public void setLabNum(String labNum) {
		this.labNum = labNum;
	}
	public String getEstablish() {
		return establish;
	}
	public void setEstablish(String establish) {
		this.establish = establish;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhNum1() {
		return phNum1;
	}
	public void setPhNum1(String phNum1) {
		this.phNum1 = phNum1;
	}
	public String getPhNum2() {
		return phNum2;
	}
	public void setPhNum2(String phNum2) {
		this.phNum2 = phNum2;
	}
	public String getPhNum3() {
		return phNum3;
	}
	public void setPhNum3(String phNum3) {
		this.phNum3 = phNum3;
	}
	public String getPhNum4() {
		return phNum4;
	}
	public void setPhNum4(String phNum4) {
		this.phNum4 = phNum4;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}

	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	
	public String getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}
	public String getContactPhNum() {
		return contactPhNum;
	}
	public void setContactPhNum(String contactPhNum) {
		this.contactPhNum = contactPhNum;
	}
	public String getPromoter() {
		return promoter;
	}
	public void setPromoter(String promoter) {
		this.promoter = promoter;
	}
	@Override
	public String toString() {
		return "Laboratory [labId=" + labId + ", labName=" + labName + ", labNum=" + labNum + ", establish=" + establish
				+ ", state=" + state + ", email=" + email + ", city=" + city + ", phNum1=" + phNum1 + ", phNum2="
				+ phNum2 + ", phNum3=" + phNum3 + ", phNum4=" + phNum4 + ", director=" + director + ", address1="
				+ address1 + ", address2=" + address2 + ", pincode=" + pincode + ", country=" + country + ", fax=" + fax
				+ ", contactPerson=" + contactPerson + ", contactPhNum=" + contactPhNum + ", promoter=" + promoter
				+ "]";
	}
	
}
