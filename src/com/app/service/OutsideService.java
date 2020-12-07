package com.app.service;

import java.util.List;

import com.app.pojo.OutsideConultPojo;



public interface OutsideService {

public List<OutsideConultPojo> getOutsideConsut();

public void saveOutconsultname(OutsideConultPojo document1);

public List<OutsideConultPojo> editConsutdetails(int id1);

public int updateOutConsult(OutsideConultPojo document1);

public void deleteOutConsult(int id1);

public List<OutsideConultPojo> getconsultentbyname(String name);


	
	


}
