package com.app.dao;

import java.util.List;

import com.app.pojo.Locationpojo1;



public interface LocationDao {
	public void saveUser ( Locationpojo1 user );
	public List<Locationpojo1> getUser();
	List<Locationpojo1> getLocation(String floorName);
	void adduser(Locationpojo1 user);
	List<Locationpojo1> updatepojo(Locationpojo1 user);
	public List getLocation(int id);
	
	
}
