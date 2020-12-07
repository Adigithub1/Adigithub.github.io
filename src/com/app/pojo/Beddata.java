package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "RoomTarrif")
public class Beddata {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "tno")
	private int id;

	@Override
	public String toString() {
		return "Beddata [id=" + id + ", bedno=" + bedno + ", roomno=" + roomno + ", roomrent=" + roomrent + "]";
	}

	@Transient
	private String bedno;
	@Column(name = "roomno")
	private String roomno;
	@Column(name = "bcharges")
	private String roomrent;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBedno() {
		return bedno;
	}

	public void setBedno(String bedno) {
		this.bedno = bedno;
	}

	public String getRoomno() {
		return roomno;
	}

	public void setRoomno(String roomno) {
		this.roomno = roomno;
	}

	public String getRoomrent() {
		return roomrent;
	}

	public void setRoomrent(String roomrent) {
		this.roomrent = roomrent;
	}
}
