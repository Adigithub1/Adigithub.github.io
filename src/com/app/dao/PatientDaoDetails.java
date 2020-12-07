package com.app.dao;

import java.util.List;

import com.app.pojo.AddPatient1;
import com.app.pojo.DoctotNames;


public interface PatientDaoDetails {
	
	
	public List getPerson();

	public void adduser(AddPatient1 user);

	public List<DoctotNames> getdoctors();

	public Integer getid();

	public List<AddPatient1> getpatient(String regno);

	public List<AddPatient1> getbyname(String username);

	public List<AddPatient1> getbydate(String date);

	public int update(AddPatient1 document);

	public List<AddPatient1> getpatients();

	public String getrenumber();

	public List<DoctotNames> getDoctorfee(String s14);

	public String gettokenno(String s14, String data1);

}
