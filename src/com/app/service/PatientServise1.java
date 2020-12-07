package com.app.service;

import java.util.List;

import com.app.pojo.AddPatient1;

public interface PatientServise1 {
	public void adduser(AddPatient1 user);
	public java.util.List<AddPatient1> getpatient(String regno);
	public void saveUser(AddPatient1 user);
	public List getpatientDetails(); 
}
