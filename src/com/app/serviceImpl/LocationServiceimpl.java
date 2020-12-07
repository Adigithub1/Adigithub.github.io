package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.LocationDao;
import com.app.service.LocationService;
import com.app.pojo.Locationpojo1;
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class LocationServiceimpl implements LocationService{
	@Autowired
	LocationDao locationDao;

	@Override
	public void addUser(Locationpojo1 user) {
		locationDao.saveUser(user);
		
	}

	public List<Locationpojo1> getUser() {
		
		return locationDao.getUser();
	}

	

	@Override
	public List<Locationpojo1> getLocation(String floorName) {
		
		return locationDao.getLocation(floorName);
	}

	@Override
	public void saveUser(Locationpojo1 user) {
		locationDao.saveUser(user);
		
	}

	@Override
	public List<Locationpojo1> updatepojo(Locationpojo1 user) {
		
		return locationDao.updatepojo(user);
	}

	@Override
	public void updateUser(Locationpojo1 user) {
	locationDao.updatepojo(user);
		
	}

	@Override
	public List getLocation(int id) {
		// TODO Auto-generated method stub
		return locationDao.getLocation( id) ;
	}

	
	

}
