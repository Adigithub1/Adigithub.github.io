package com.app.dao;

import java.util.List;


import com.app.pojo.Mlcpojo;


public interface MLCDao {
	
	


	public List<Mlcpojo> getpatient(String regno);

	public List<Mlcpojo> getbyname(String username);

	public List<Mlcpojo> getbydate(String date);



	public List<Mlcpojo> getpatients();

	public void addmlcpatient(Mlcpojo document);

	public String getmlcpatientsregno();

	public List<Mlcpojo> editMLCpatient(int id1);

	public void updatemlcpatient(Mlcpojo document);

}
