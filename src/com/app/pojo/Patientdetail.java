package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "PatientDetails")
public class Patientdetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="registNo")
	private String patientmrno;
	@Column(name="patientName")
	private String patientname;
	@Column(name="registDate")
	private String regdate;
	@Transient
	private String allotedby;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPatientmrno() {
		return patientmrno;
	}

	public void setPatientmrno(String patientmrno) {
		this.patientmrno = patientmrno;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getAllotedby() {
		return allotedby;
	}

	public void setAllotedby(String allotedby) {
		this.allotedby = allotedby;
	}

	@Override
	public String toString() {
		return "Patientdetail [id=" + id + ", patientmrno=" + patientmrno + ", patientname=" + patientname
				+ ", regdate=" + regdate + ", allotedby=" + allotedby + "]";
	}

}
