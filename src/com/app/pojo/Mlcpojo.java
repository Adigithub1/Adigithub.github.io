package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MlcPatient")
public class Mlcpojo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String registrationNumber;
	private String patientName;
	private String occupation;
	private String guardiansName;
	private Long age;
	private Long phoneNumber;
	private String sex;
	private String remarks;
	private String identification1;
	private String identification2;
	private String addressLine1;
	private String addressLine2;
	private String city;
	private String state;
	private String country;
	private Long pincode1;
     private String regdate;
	private byte[] patientPhoto;
	private String patientPhotoName;
	private byte[] xRayreports;
	private String xRayreportsName;
	private byte[] scanReports;
	private String scanReportsName;
	private byte[] otherReports;
	private String otherReportsName;
	public Integer getId() {
		return id;
	}
	
	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getGuardiansName() {
		return guardiansName;
	}
	public void setGuardiansName(String guardiansName) {
		this.guardiansName = guardiansName;
	}

	public Long getAge() {
		return age;
	}

	public void setAge(Long age) {
		this.age = age;
	}

	public Long getPincode1() {
		return pincode1;
	}

	public void setPincode1(Long pincode1) {
		this.pincode1 = pincode1;
	}

	public Long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getIdentification1() {
		return identification1;
	}
	public void setIdentification1(String identification1) {
		this.identification1 = identification1;
	}
	public String getIdentification2() {
		return identification2;
	}
	public void setIdentification2(String identification2) {
		this.identification2 = identification2;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
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

	public byte[] getPatientPhoto() {
		return patientPhoto;
	}
	public void setPatientPhoto(byte[] patientPhoto) {
		this.patientPhoto = patientPhoto;
	}
	public byte[] getxRayreports() {
		return xRayreports;
	}
	public void setxRayreports(byte[] xRayreports) {
		this.xRayreports = xRayreports;
	}
	public byte[] getScanReports() {
		return scanReports;
	}
	public void setScanReports(byte[] scanReports) {
		this.scanReports = scanReports;
	}
	public byte[] getOtherReports() {
		return otherReports;
	}
	public void setOtherReports(byte[] otherReports) {
		this.otherReports = otherReports;
	}

	public String getPatientPhotoName() {
		return patientPhotoName;
	}

	public void setPatientPhotoName(String patientPhotoName) {
		this.patientPhotoName = patientPhotoName;
	}

	public String getxRayreportsName() {
		return xRayreportsName;
	}

	public void setxRayreportsName(String xRayreportsName) {
		this.xRayreportsName = xRayreportsName;
	}

	public String getScanReportsName() {
		return scanReportsName;
	}

	public void setScanReportsName(String scanReportsName) {
		this.scanReportsName = scanReportsName;
	}

	public String getOtherReportsName() {
		return otherReportsName;
	}

	public void setOtherReportsName(String otherReportsName) {
		this.otherReportsName = otherReportsName;
	}
	
	
	
	
	

}
