package com.app.dao;

import java.util.List;

import com.app.pojo.RoomTarrif;

public interface TarrifDao {

	public List GetDetails();

	public void SaveTarrifDetails(RoomTarrif tarrif);

	public List<RoomTarrif> GetTarrifDetails(int tno);

	public void DeleteRoom(RoomTarrif tarrif);

	public void UpdateRooms(RoomTarrif tarrif);

	public String[] getFloors();

	public String[] getRoomnosList();

	public List<RoomTarrif> getParticularRoomDetail(RoomTarrif tarrif);

	public String[] getRoomTypedetails();

}
