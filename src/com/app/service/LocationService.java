package com.app.service;

import java.util.List;

import com.app.pojo.Locationpojo1;



public interface LocationService  {
	public void addUser(Locationpojo1 user);

	public List<Locationpojo1> getLocation(String floorName);


	public void saveUser ( Locationpojo1 user );

	List<Locationpojo1> getUser();
	List<Locationpojo1> updatepojo(Locationpojo1 user);

	public void updateUser(Locationpojo1 user);

	public List getLocation(int id);
}
