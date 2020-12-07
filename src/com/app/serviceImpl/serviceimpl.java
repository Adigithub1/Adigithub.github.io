package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.daointerface;
import com.app.pojo.Beddata;
import com.app.pojo.Doctordetail;
import com.app.pojo.Patientdetail;
import com.app.pojo.entry;
import com.app.service.serviceinterface;


@Service
@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
public class serviceimpl implements serviceinterface {
@Autowired
daointerface di;
public void adddetail(entry inp) {
	// TODO Auto-generated method stub
	di.saveinp(inp);
}

	@Override
	public List<entry> getuser() {
		// TODO Auto-generated method stub
		return di.getuser();
	}

	

	@Override
	public List<entry> patientservice(String patientname) {
		// TODO Auto-generated method stub
		return di.patientservice(patientname);
	}

	
	@Override
	public void addUserUpdate(entry inp) {
		// TODO Auto-generated method stub
		di.updatepatientupdate(inp);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<entry> patientmrno1(String patientmrno) {
		// TODO Auto-generated method stub
		return di.patientmrno1(patientmrno);
	}

	
	@Override
	public List<Patientdetail> getmrno() {
		// TODO Auto-generated method stub
		return di.getmrno();
	}

	@Override
	public List<Doctordetail> getdoctors() {
		// TODO Auto-generated method stub
		return di.getdoctors();
	}

	@Override
	public List<Patientdetail> getnames() {
		// TODO Auto-generated method stub
		return di.getnames();
	}

	@Override
	public List<Patientdetail> getdate() {
		// TODO Auto-generated method stub
		return di.getdate();
	}

	@Override
	public List<Beddata> getbedno() {
		// TODO Auto-generated method stub
		return di.getbedno();
	}

	@Override
	public List<Beddata> getroomno() {
		// TODO Auto-generated method stub
		return di.getroomno();
	}

	@Override
	public List<Beddata> getroomrent() {
		// TODO Auto-generated method stub
		return di.getroomrent();
	}

	@Override
	public List<entry> getinpt() {
		// TODO Auto-generated method stub
		return di.getinpt();
	}

	
	@Override
	public List<Patientdetail> getallotedby() {
		// TODO Auto-generated method stub
		return di.getallotedby();
	}

	@Override
	public List getDetails(int id) {
		return di.getDetails(id);
		
	}

	@Override
	public List<Patientdetail> getDetailspatient(String patientmrno) {
		// TODO Auto-generated method stub
		return di.getDetailspatient(patientmrno);
	}

	@Override
	public List<Beddata> getDetailspatientbed(String bedno) {
		// TODO Auto-generated method stub
		return di.getDetailspatientbed(bedno);
	}

	@Override
	public List getEntryDetails(String patientmrno) {
		// TODO Auto-generated method stub
		return di.getEntryDetails(patientmrno);
	}

	@Override
	public List getEntryDetailsbeds(String bedno) {
		// TODO Auto-generated method stub
		return di.getEntryDetailsbeds(bedno);
	}

	@Override
	public String getRoomNumber(String bedno) {
		// TODO Auto-generated method stub
		return di.getRoomNumber(bedno);
	}

	@Override
	public Double getRoomNumberAmount(String roomNo) {
		// TODO Auto-generated method stub
		return di.getRoomNumberAmount(roomNo);
	}

	@Override
	public String[] getBedNos() {
		return di.getBedNos();
	}

	
	
	

	

	
}
