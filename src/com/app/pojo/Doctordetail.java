package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Doctordetails1")
public class Doctordetail {
@Id
@GeneratedValue
private int id;
private String specialization;
private String doctorname;
private String designation;
private String qualification;
private String departmentname;
private String doctordutytype;
private String phonenumber1;
private String phonenumber2;
private String consultantfee;
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

public String getDoctorname() {
	return doctorname;
}

public void setDoctorname(String doctorname) {
	this.doctorname = doctorname;
}

public String getDesignation() {
	return designation;
}

public void setDesignation(String designation) {
	this.designation = designation;
}

public String getQualification() {
	return qualification;
}

public void setQualification(String qualification) {
	this.qualification = qualification;
}

public String getDepartmentname() {
	return departmentname;
}

public void setDepartmentname(String departmentname) {
	this.departmentname = departmentname;
}

public String getDoctordutytype() {
	return doctordutytype;
}

public void setDoctordutytype(String doctordutytype) {
	this.doctordutytype = doctordutytype;
}

public String getPhonenumber1() {
	return phonenumber1;
}

public void setPhonenumber1(String phonenumber1) {
	this.phonenumber1 = phonenumber1;
}

public String getPhonenumber2() {
	return phonenumber2;
}

public void setPhonenumber2(String phonenumber2) {
	this.phonenumber2 = phonenumber2;
}

public String getConsultantfee() {
	return consultantfee;
}

public void setConsultantfee(String consultantfee) {
	this.consultantfee = consultantfee;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

@Override
public String toString() {
	return "Doctordetail [id=" + id + ", specialization=" + specialization + ", doctorname=" + doctorname
			+ ", designation=" + designation + ", qualification=" + qualification + ", departmentname=" + departmentname
			+ ", doctordutytype=" + doctordutytype + ", phonenumber1=" + phonenumber1 + ", phonenumber2=" + phonenumber2
			+ ", consultantfee=" + consultantfee + ", address=" + address + "]";
}

}
