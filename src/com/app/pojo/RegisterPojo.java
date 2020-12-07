package com.app.pojo;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "Employeetable")
public class RegisterPojo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String employeeId;
	@Column(name = "username")
	private String username;
	@Column(name = "pwd")
	private String password;
	private String name;
	private String gender;
	private String dob;
	private String mobnum;
	private String mobnum2;
	private String email;
	private String edu;
	private String desig;
	private String addr;
	private String state;
	private String country;
	private String nation;
	private String adrees2;
	private String idproof;
	private String idnum;
	private String salary;

	@Transient
	private String repwd;
	@Column(name = "filename")
	private String filename;
	@Column(name = "content")
	@Lob
	private Blob content;
	@Column(name = "content_type")
	private String contentType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getMobnum() {
		return mobnum;
	}

	public void setMobnum(String mobnum) {
		this.mobnum = mobnum;
	}

	public String getMobnum2() {
		return mobnum2;
	}

	public void setMobnum2(String mobnum2) {
		this.mobnum2 = mobnum2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEdu() {
		return edu;
	}

	public void setEdu(String edu) {
		this.edu = edu;
	}

	public String getDesig() {
		return desig;
	}

	public void setDesig(String desig) {
		this.desig = desig;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
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

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getAdrees2() {
		return adrees2;
	}

	public void setAdrees2(String adrees2) {
		this.adrees2 = adrees2;
	}

	public String getIdproof() {
		return idproof;
	}

	public void setIdproof(String idproof) {
		this.idproof = idproof;
	}

	public String getIdnum() {
		return idnum;
	}

	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getRepwd() {
		return repwd;
	}

	public void setRepwd(String repwd) {
		this.repwd = repwd;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Blob getContent() {
		return content;
	}

	public void setContent(Blob content) {
		this.content = content;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	@Override
	public String toString() {
		return "RegisterPojo [id=" + id + ", employeeId=" + employeeId + ", username=" + username + ", password="
				+ password + ", name=" + name + ", gender=" + gender + ", dob=" + dob + ", mobnum=" + mobnum
				+ ", mobnum2=" + mobnum2 + ", email=" + email + ", edu=" + edu + ", desig=" + desig + ", addr=" + addr
				+ ", state=" + state + ", country=" + country + ", nation=" + nation + ", adrees2=" + adrees2
				+ ", idproof=" + idproof + ", idnum=" + idnum + ", salary=" + salary + ", repwd=" + repwd
				+ ", filename=" + filename + ", content=" + content + ", contentType=" + contentType + "]";
	}

}
