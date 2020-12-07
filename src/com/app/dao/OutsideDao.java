package com.app.dao;

import java.util.List;

import com.app.pojo.OutsideConultPojo;




public interface OutsideDao {

	List<OutsideConultPojo> getOutsideConsut();

	void saveOutconsultname(OutsideConultPojo document1);

	List<OutsideConultPojo> editConsutdetails(int id1);

	int updateOutConsult(OutsideConultPojo document1);

	void deleteOutConsult(int id1);

	List<OutsideConultPojo> getconsultentbyname(String name);


	
	
	
}
