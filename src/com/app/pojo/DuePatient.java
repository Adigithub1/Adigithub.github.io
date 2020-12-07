package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
@Entity
public class DuePatient {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String patname;
	private String custype;
	private String age;
	private String sex;
	private String saledate;
	private double dueamt;
	private double tamnt;
	@Transient
	private double paidamnt;
	private String admitdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPatname() {
		return patname;
	}
	public void setPatname(String patname) {
		this.patname = patname;
	}
	public String getCustype() {
		return custype;
	}
	public void setCustype(String custype) {
		this.custype = custype;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSaledate() {
		return saledate;
	}
	public void setSaledate(String saledate) {
		this.saledate = saledate;
	}
	public double getDueamt() {
		return dueamt;
	}
	public void setDueamt(double dueamt) {
		this.dueamt = dueamt;
	}
	public double getTamnt() {
		return tamnt;
	}
	public void setTamnt(double tamnt) {
		this.tamnt = tamnt;
	}
	public double getPaidamnt() {
		return paidamnt;
	}
	public void setPaidamnt(double paidamnt) {
		this.paidamnt = paidamnt;
	}
	public String getAdmitdate() {
		return admitdate;
	}
	public void setAdmitdate(String admitdate) {
		this.admitdate = admitdate;
	}
	@Override
	public String toString() {
		return "DuePatient [id=" + id + ", patname=" + patname + ", custype="
				+ custype + ", age=" + age + ", sex=" + sex + ", saledate="
				+ saledate + ", dueamt=" + dueamt + ", tamnt=" + tamnt
				+ ", paidamnt=" + paidamnt + ", admitdate=" + admitdate + "]";
	}
	
}
