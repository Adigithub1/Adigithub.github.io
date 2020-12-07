package com.app.dao;

import java.util.List;

import com.app.pojo.DuePatient;

public interface DuePatientDao {

	
	public List<DuePatient> GetDetails();
	public List getPatient(int id);
	public List<DuePatient> updateUser(DuePatient user);
	public List<DuePatient> getUserParticularDayDetails(String admitdate);
	
	
}
