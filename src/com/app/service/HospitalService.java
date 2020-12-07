package com.app.service;

import java.util.List;

import com.app.pojo.Hospital;

public interface HospitalService 
{
	public void saveDetail(Hospital h);

	public List<Hospital> listDetail();

	public List<Hospital> getDetail(int hostId);

	public void updateDetail(Hospital h);

	public Integer[] idsDetail();

	public Integer getIdDetail();

	public String[] getIdcDetail();

	public List<Hospital> getWholeDetail();

	public List<Hospital> getWholeDetailNames(String hosptName);

	public List getParticularDetail(Hospital h);

	public Integer getMaxIdOfDetails();
}
