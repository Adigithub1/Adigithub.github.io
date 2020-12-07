package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.OutsideDao;
import com.app.pojo.OutsideConultPojo;
import com.app.service.OutsideService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class OutsideServiceImpl implements OutsideService {

	@Autowired
	private OutsideDao outsideDao1;

	@Override
	public List<OutsideConultPojo> getOutsideConsut() {
		// TODO Auto-generated method stub
		return outsideDao1.getOutsideConsut();
	}

	@Override
	public void saveOutconsultname(OutsideConultPojo document1) {
		outsideDao1.saveOutconsultname(document1);
		
	}

	@Override
	public List<OutsideConultPojo> editConsutdetails(int id1) {
		// TODO Auto-generated method stub
		return outsideDao1.editConsutdetails(id1);
	}

	@Override
	public int updateOutConsult(OutsideConultPojo document1) {
		// TODO Auto-generated method stub
		return outsideDao1.updateOutConsult(document1);
	}

	@Override
	public void deleteOutConsult(int id1) {
		outsideDao1.deleteOutConsult(id1);
		
	}

	@Override
	public List<OutsideConultPojo> getconsultentbyname(String name) {
		// TODO Auto-generated method stub
		return outsideDao1.getconsultentbyname(name);
	}




}
