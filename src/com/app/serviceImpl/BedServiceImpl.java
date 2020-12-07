package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.BedDao;
import com.app.pojo.RoomPojo;
import com.app.service.BedService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class BedServiceImpl implements BedService {

	@Autowired
	private BedDao bedDao;

	@Override
	public String[] getFloors() {
		// TODO Auto-generated method stub
		return bedDao.getFloors();
	}

	@Override
	public void saveRoomDetails(RoomPojo room) {
		bedDao.saveRoomDetails(room);

	}

	@Override
	public String[] getRoomNos() {
		// TODO Auto-generated method stub
		return bedDao.getRoomNos();
	}

	@Override
	public String[] getParticularRooms(RoomPojo room) {
		return bedDao.getParticularRooms(room);
	}

	@Override
	public List getRoomDetails(String floorname, String roomno) {
		return bedDao.getRoomDetails(floorname, roomno);
	}

	@Override
	public void savesubtotal(RoomPojo room) {
		bedDao.savesubtotal(room);
	}

	@Override
	public List getProductDetails() {
		// TODO Auto-generated method stub
		return bedDao.getProductDetails();
	}

	@Override
	public void savetotalValues(RoomPojo room) {
		 bedDao.savetotalValues(room);
		
	}

	@Override
	public List getGroundFlourDetails() {
		return bedDao.getGroundFlourDetails();
	}

	@Override
	public List getFirstFlourdetails() {
		return bedDao.getFirstFlourdetails();
	}

	@Override
	public List getThirdFlourDetails() {
		return bedDao.getThirdFlourDetails();
	}

	@Override
	public List getSecondFlourDetails() {
		return bedDao.getSecondFlourDetails();
	}

	@Override
	public List getFourthDetails() {
		return bedDao.getFourthDetails();
	}

	@Override
	public List getFifthFlourDetails() {
		return bedDao.getFifthFlourDetails();	}

	@Override
	public List getSixthFlourDetials() {
		return bedDao.getSixthFlourDetials();
	}

	@Override
	public void bedDetailsCancel() {
		bedDao.bedDetailsCancel();		
	}

}
