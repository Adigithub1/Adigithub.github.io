package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="outsideconsult")
public class OutsideConultPojo {

	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	
	private String specialization;
	private String consultantName;
	private String consultantType;
	private Long phoneNo;
	private Long consultantFee;
	private Long extraFee;
	private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getConsultantName() {
		return consultantName;
	}
	public void setConsultantName(String consultantName) {
		this.consultantName = consultantName;
	}
	public String getConsultantType() {
		return consultantType;
	}
	public void setConsultantType(String consultantType) {
		this.consultantType = consultantType;
	}
	public Long getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(Long phoneNo) {
		this.phoneNo = phoneNo;
	}
	
	public Long getConsultantFee() {
		return consultantFee;
	}
	public void setConsultantFee(Long consultantFee) {
		this.consultantFee = consultantFee;
	}
	public Long getExtraFee() {
		return extraFee;
	}
	public void setExtraFee(Long extraFee) {
		this.extraFee = extraFee;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
	
}
