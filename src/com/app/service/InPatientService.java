package com.app.service;

import java.util.List;


import com.app.pojo.InpatientPojo;

public interface InPatientService {
	
	
	
	

	public List<InpatientPojo> getpatientbyreno(String regno);

	public List<InpatientPojo> getbynamebyname(String username);

	public List<InpatientPojo> getinpatients();

}
