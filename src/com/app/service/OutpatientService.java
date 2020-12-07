package com.app.service;

import java.util.List;

import com.app.pojo.AddPatient1;
import com.app.pojo.DoctotNames;
import com.app.pojo.InpatientPojo;

public interface OutpatientService {

	public List<AddPatient1> getpatientbyreno(String regno);

	public List<AddPatient1> getbynamebyname(String username);

	public List<AddPatient1> getinpatients();

	public List getOutPatientDetails();

}
