package com.app.dao;

import java.util.List;

import com.app.pojo.Beddata;
import com.app.pojo.Doctordetail;
import com.app.pojo.Patientdetail;
import com.app.pojo.entry;

public interface daointerface {

	public void saveinp(entry inp);

	public List<entry> getuser();

	public List<entry> patientservice(String patientname);

	public List<entry> patientmrno1(String patientmrno);

	public void updatepatientupdate(entry inp);

	public List<Patientdetail> getmrno();

	public List<Doctordetail> getdoctors();

	public List<Patientdetail> getnames();

	public List<Patientdetail> getdate();

	public List<Beddata> getbedno();

	public List<Beddata> getroomno();

	public List<Beddata> getroomrent();

	public List<Patientdetail> getallotedby();

	public List<entry> getinpt();

	public List getDetails(int id);

	public List<Patientdetail> getDetailspatient(String patientmrno);

	public List<Beddata> getDetailspatientbed(String bedno);

	public List getEntryDetails(String patientmrno);

	public List getEntryDetailsbeds(String bedno);

	public String getRoomNumber(String bedno);

	public Double getRoomNumberAmount(String roomNo);

	public String[] getBedNos();

}
