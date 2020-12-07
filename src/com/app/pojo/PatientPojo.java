package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "PatientPojo")
public class PatientPojo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	private String tokenId;

	private String doctorName;

	private String patientName;

	private String appointmentDate;

	private String appointmentTime;

	private String treatmentfor;

	private String address;

	private String age;

	private String address2;

	private String city;

	private String state;

	private String pincode;

	private String country;

	private String gender;

	@NotEmpty(message = "Phone should not be blank.")
	@Size(min = 10, max = 10)
	private String mobileNo;

	public int getId() {
		return id;
	}

	public String getAppointmentTime() {
		return appointmentTime;
	}

	public void setAppointmentTime(String appointmentTime) {
		this.appointmentTime = appointmentTime;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTokenId() {
		return tokenId;
	}

	public void setTokenId(String tokenId) {
		this.tokenId = tokenId;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getTreatmentfor() {
		return treatmentfor;
	}

	public void setTreatmentfor(String treatmentfor) {
		this.treatmentfor = treatmentfor;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
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

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return "PatientPojo [id=" + id + ", tokenId=" + tokenId
				+ ", doctorName=" + doctorName + ", patientName=" + patientName
				+ ", appointmentDate=" + appointmentDate + ", appointmentTime="
				+ appointmentTime + ", treatmentfor=" + treatmentfor
				+ ", address=" + address + ", age=" + age + ", address2="
				+ address2 + ", city=" + city + ", state=" + state
				+ ", pincode=" + pincode + ", country=" + country + ", gender="
				+ gender + ", mobileNo=" + mobileNo + ", getId()=" + getId()
				+ ", getAppointmentTime()=" + getAppointmentTime()
				+ ", getTokenId()=" + getTokenId() + ", getDoctorName()="
				+ getDoctorName() + ", getPatientName()=" + getPatientName()
				+ ", getAppointmentDate()=" + getAppointmentDate()
				+ ", getTreatmentfor()=" + getTreatmentfor()
				+ ", getAddress()=" + getAddress() + ", getAge()=" + getAge()
				+ ", getGender()=" + getGender() + ", getMobileNo()="
				+ getMobileNo() + ", getAddress2()=" + getAddress2()
				+ ", getCity()=" + getCity() + ", getState()=" + getState()
				+ ", getPincode()=" + getPincode() + ", getCountry()="
				+ getCountry() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}
