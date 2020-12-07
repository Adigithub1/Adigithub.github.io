package com.app.dao;

import java.util.List;

import com.app.pojo.Hospital;

public interface HospitalDAO 
{
	public void saveDetail(Hospital h);

	public List<Hospital> listDetail();

	public List<Hospital> getDetail(int labId);

	public void updateDetail(Hospital h);

	public Integer[] idsDetail();

	public Integer getIdDetail();

	public String[] getIdcDetail();

	public List<Hospital> getWholeDetail();

	public List<Hospital> getWholeDetailNames(String labName);

	public List getParticularDetail(Hospital h);

	public Integer getMaxIdOfDetails();
}
