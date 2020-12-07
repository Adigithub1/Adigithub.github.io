package com.app.dao;

import java.util.List;

import com.app.pojo.BedTypepojo;

public interface BedTypeDao {

	
	public List GetRoomDetails();
	
	public void saveBedDetails(BedTypepojo bedtype);
	
	public List<BedTypepojo> getBedDetails(int bid);
	public void UpdateRooms(BedTypepojo bedtype);
	public void DeleteRoom(BedTypepojo bedtype);
	public String[] getBedTypes();
	public List<BedTypepojo> GetParticularRoomDetails(String btypename);

}
