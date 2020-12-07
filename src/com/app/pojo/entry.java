package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "inpatient")
public class entry {
	@Id
	@GeneratedValue
	private int id;
	private String patientname;
	private String patientmrno;
	private String regdate;
	private String admitdateortime;
	private String doctorname;
	private String diet;
	private String modeofpayment;
	private String bedno;
	private String roomno;
	private String roomrent;
	private String admisssioncharge;
	private String concession;
	private String medicalrecordscharge;
	private String dateofadvance;
	private String modeofpayment1;
	private String advancepaid;
	private String advanceinwords;
	private String allotedby;

	public String getModeofpayment1() {
		return modeofpayment1;
	}

	public void setModeofpayment1(String modeofpayment1) {
		this.modeofpayment1 = modeofpayment1;
	}

	public String getAdvancepaid() {
		return advancepaid;
	}

	public void setAdvancepaid(String advancepaid) {
		this.advancepaid = advancepaid;
	}

	public String getAdvanceinwords() {
		return advanceinwords;
	}

	public void setAdvanceinwords(String advanceinwords) {
		this.advanceinwords = advanceinwords;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

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

	

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	

	public String getDiet() {
		return diet;
	}

	public void setDiet(String diet) {
		this.diet = diet;
	}

	public String getModeofpayment() {
		return modeofpayment;
	}

	public void setModeofpayment(String modeofpayment) {
		this.modeofpayment = modeofpayment;
	}

	public String getBedno() {
		return bedno;
	}

	public void setBedno(String bedno) {
		this.bedno = bedno;
	}

	public String getAdmisssioncharge() {
		return admisssioncharge;
	}

	public void setAdmisssioncharge(String admisssioncharge) {
		this.admisssioncharge = admisssioncharge;
	}

	public String getConcession() {
		return concession;
	}

	public void setConcession(String concession) {
		this.concession = concession;
	}

	public String getMedicalrecordscharge() {
		return medicalrecordscharge;
	}

	public void setMedicalrecordscharge(String medicalrecordscharge) {
		this.medicalrecordscharge = medicalrecordscharge;
	}

	@Override
	public String toString() {
		return "entry [id=" + id + ", patientname=" + patientname + ", patientmrno=" + patientmrno + ", regdate="
				+ regdate + ", admitdateortime=" + admitdateortime + ", doctorname=" + doctorname + ", diet=" + diet
				+ ", modeofpayment=" + modeofpayment + ", bedno=" + bedno + ", roomno=" + roomno + ", roomrent="
				+ roomrent + ", admisssioncharge=" + admisssioncharge + ", concession=" + concession
				+ ", medicalrecordscharge=" + medicalrecordscharge + ", dateofadvance=" + dateofadvance
				+ ", modeofpayment1=" + modeofpayment1 + ", advancepaid=" + advancepaid + ", advanceinwords="
				+ advanceinwords + ", allotedby=" + allotedby + "]";
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getAdmitdateortime() {
		return admitdateortime;
	}

	public void setAdmitdateortime(String admitdateortime) {
		this.admitdateortime = admitdateortime;
	}

	public String getDateofadvance() {
		return dateofadvance;
	}

	public void setDateofadvance(String dateofadvance) {
		this.dateofadvance = dateofadvance;
	}

	public String getAllotedby() {
		return allotedby;
	}

	public void setAllotedby(String allotedby) {
		this.allotedby = allotedby;
	}

	public String getRoomno() {
		return roomno;
	}

	public void setRoomno(String roomno) {
		this.roomno = roomno;
	}

	public String getRoomrent() {
		return roomrent;
	}

	public void setRoomrent(String roomrent) {
		this.roomrent = roomrent;
	}

}
