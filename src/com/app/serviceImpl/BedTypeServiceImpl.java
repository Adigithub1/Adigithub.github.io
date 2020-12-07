package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.BedTypeDao;
import com.app.pojo.BedTypepojo;
import com.app.service.BedTypeService;


@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class BedTypeServiceImpl implements BedTypeService{

	
	@Autowired
	private BedTypeDao bedTypeDao;

	@Override
	public List GetRoomDetails() {
	
		return bedTypeDao.GetRoomDetails();
	}


	@Override
	public void saveBedDetails(BedTypepojo bedtype) {
		bedTypeDao.saveBedDetails(bedtype);
	}


	@Override
	public List<BedTypepojo> getBedDetails(int bid) {
		
		return bedTypeDao.getBedDetails(bid);
	}


	@Override
	public void UpdateRooms(BedTypepojo bedtype) {
		// TODO Auto-generated method stub
		bedTypeDao.UpdateRooms(bedtype);
	}


	@Override
	public void DeleteRoom(BedTypepojo bedtype) {
		bedTypeDao.DeleteRoom(bedtype);
		
	}


	@Override
	public String[] getBedTypes() {
		
		return bedTypeDao.getBedTypes();
	}


	@Override
	public List<BedTypepojo> GetParticularRoomDetails(String btypename) {
		// TODO Auto-generated method stub
		return bedTypeDao.GetParticularRoomDetails(btypename);
	}
}
