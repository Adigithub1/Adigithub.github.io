package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class RoomSubTotalPojo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String floorname;
	private String roomno;
	private String bedNo;
	private String bedType;
	private String remarks;

	private int roomTotalPojoId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFloorname() {
		return floorname;
	}

	public void setFloorname(String floorname) {
		this.floorname = floorname;
	}

	public String getRoomno() {
		return roomno;
	}

	public void setRoomno(String roomno) {
		this.roomno = roomno;
	}

	public String getBedNo() {
		return bedNo;
	}

	public void setBedNo(String bedNo) {
		this.bedNo = bedNo;
	}

	public String getBedType() {
		return bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public int getRoomTotalPojoId() {
		return roomTotalPojoId;
	}

	public void setRoomTotalPojoId(int roomTotalPojoId) {
		this.roomTotalPojoId = roomTotalPojoId;
	}

	@Override
	public String toString() {
		return "RoomSubTotalPojo [id=" + id + ", floorname=" + floorname + ", roomno=" + roomno + ", bedNo=" + bedNo
				+ ", bedType=" + bedType + ", remarks=" + remarks + ", roomTotalPojoId=" + roomTotalPojoId + "]";
	}

}
