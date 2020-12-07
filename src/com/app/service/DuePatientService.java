package com.app.service;

import java.util.List;

import com.app.pojo.DuePatient;

public interface DuePatientService {

	public List<DuePatient> GetDetails();

	public List getPatient(int id);

	public List<DuePatient> updateUser(DuePatient user);

	public List<DuePatient> getUserParticularDayDetails(String admitdate);

}
