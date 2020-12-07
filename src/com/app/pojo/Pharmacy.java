package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PharmacyDetail")
public class Pharmacy 
{
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int pharId;
private String pharName;
private String pharNum;
private String establish;
private String state;
private String email;
private String phNum1;
private String phNum2;
private String dlNum;
private String city;
private String pincode;
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
private String address1;
private String address2;
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
private String tinNum;
private String director;

// Contact 
private String contactPerson;
private String contactPhNum;
private String promoter;
public int getPharId() {
	return pharId;
}
public void setPharId(int pharId) {
	this.pharId = pharId;
}
public String getPharName() {
	return pharName;
}
public void setPharName(String pharName) {
	this.pharName = pharName;
}
public String getPharNum() {
	return pharNum;
}
public void setPharNum(String pharNum) {
	this.pharNum = pharNum;
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
public String getDlNum() {
	return dlNum;
}
public void setDlNum(String dlNum) {
	this.dlNum = dlNum;
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
public String getTinNum() {
	return tinNum;
}
public void setTinNum(String tinNum) {
	this.tinNum = tinNum;
}
public String getDirector() {
	return director;
}
public void setDirector(String director) {
	this.director = director;
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
	return "Pharmacy [pharId=" + pharId + ", pharName=" + pharName + ", pharNum=" + pharNum + ", establish=" + establish
			+ ", state=" + state + ", email=" + email + ", phNum1=" + phNum1 + ", phNum2=" + phNum2 + ", dlNum=" + dlNum
			+ ", city=" + city + ", pincode=" + pincode + ", address1=" + address1 + ", address2=" + address2
			+ ", country=" + country + ", fax=" + fax + ", tinNum=" + tinNum + ", director=" + director
			+ ", contactPerson=" + contactPerson + ", contactPhNum=" + contactPhNum + ", promoter=" + promoter + "]";
}

}
