package com.app.dao;

import java.util.List;

import com.app.pojo.RoomTypePojo;

public interface RoomTypeDao {

	
	public 	List GetRoomDetails();
	public void saveRoomDetails(RoomTypePojo roomtype);
	public List<RoomTypePojo> getRoomDetails(int id);

	public void DeleteRoom(RoomTypePojo roomtype);
	public void UpdateRooms(RoomTypePojo roomtype);
	public String[] getRoomTypes();
	public List<RoomTypePojo> GetParticularRoomDetails(String roomtypename);
}
