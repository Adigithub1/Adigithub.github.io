package com.app.dao;

import java.util.List;

import com.app.pojo.AddPatient1;


public interface PatientDao1 {
	
	public void adduser(AddPatient1 user);
	public Integer getid();
	public List<AddPatient1> getpatient(String regno);
	public void saveUser(AddPatient1 user); 
	public List getpatientDetails(); 
}
