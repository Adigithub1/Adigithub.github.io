package com.app.service;

import java.util.List;

import com.app.pojo.RoomPojo;

public interface BedService {

	public String[] getFloors();

	public void saveRoomDetails(RoomPojo room);

	public String[] getRoomNos();

	public String[] getParticularRooms(RoomPojo room);

	public List getRoomDetails(String floorname, String roomno);

	public void savesubtotal(RoomPojo room);

	public List getProductDetails();

	public void savetotalValues(RoomPojo room);

	public List getGroundFlourDetails();

	public List getFirstFlourdetails();

	public List getThirdFlourDetails();

	public List getSecondFlourDetails();

	public List getFourthDetails();

	public List getFifthFlourDetails();

	public List getSixthFlourDetials();

	public void bedDetailsCancel();

}
