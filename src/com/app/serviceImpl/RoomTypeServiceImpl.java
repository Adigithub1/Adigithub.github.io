package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.RoomTypeDao;
import com.app.pojo.RoomTypePojo;
import com.app.service.RoomTypeService;
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class RoomTypeServiceImpl implements RoomTypeService{

	@Autowired
	RoomTypeDao roomypeDao;

	@Override
	public List GetRoomDetails() {
		
		return roomypeDao.GetRoomDetails();
	}

	@Override
	public void saveRoomDetails(RoomTypePojo roomtype) {
	roomypeDao.saveRoomDetails(roomtype);
		
	}

	@Override
	public List<RoomTypePojo> getRoomDetails(int id) {
		
		return roomypeDao.getRoomDetails(id);
	}

	@Override
	public void DeleteRoom(RoomTypePojo roomtype) {
		// TODO Auto-generated method stub
		roomypeDao.DeleteRoom(roomtype);
	}

	@Override
	public void UpdateRooms(RoomTypePojo roomtype) {
		roomypeDao.UpdateRooms(roomtype);
		
	}

	@Override
	public String[] getRoomTypes() {
		
		return roomypeDao.getRoomTypes();
	}

	@Override
	public List<RoomTypePojo> GetParticularRoomDetails(String roomtypename) {
		// TODO Auto-generated method stub
		return roomypeDao.GetParticularRoomDetails(roomtypename);
	}

	


	
	
}
