package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.TarrifDao;
import com.app.pojo.RoomTarrif;
import com.app.service.TarrifService;

@Service("tarrifService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class TarrifServiceImpl implements TarrifService{
    @Autowired
	private TarrifDao tarrifDao;

	@Override
	public List GetDetails() {
		
		return tarrifDao.GetDetails();
	}

	@Override
	public void SaveTarrifDetails(RoomTarrif tarrif) {
		tarrifDao.SaveTarrifDetails(tarrif);
		
	}

	@Override
	public List<RoomTarrif> GetTarrifDetails(int tno) {
		// TODO Auto-generated method stub
		return tarrifDao.GetTarrifDetails(tno);
	}

	@Override
	public void DeleteRoom(RoomTarrif tarrif) {
		tarrifDao.DeleteRoom(tarrif);
		
	}

	@Override
	public void UpdateRooms(RoomTarrif tarrif) {
		// TODO Auto-generated method stub
		tarrifDao.UpdateRooms(tarrif);
	}

	@Override
	public String[] getFloors() {
		// TODO Auto-generated method stub
		return tarrifDao.getFloors();
	}

	@Override
	public String[] getRoomnosList() {
		// TODO Auto-generated method stub
		return tarrifDao.getRoomnosList();
	}

	@Override
	public List<RoomTarrif> getParticularRoomDetail(RoomTarrif tarrif) {
		// TODO Auto-generated method stub
		return tarrifDao.getParticularRoomDetail(tarrif);
	}

	@Override
	public String[] getRoomTypedetails() {
		// TODO Auto-generated method stub
		return tarrifDao.getRoomTypedetails();
	}
    
    
    
    
}
