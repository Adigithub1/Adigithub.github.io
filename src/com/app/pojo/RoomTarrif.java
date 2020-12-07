package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class RoomTarrif {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int tno;
	private String locations;
	private String roomno;
	private String noofbeds;
	@Transient
	private double rmrnt;
	private String rmtype;
	private double bcharges;
	private double dmocharges;
	private double nurcharges;
	private double dcharges;
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getLocations() {
		return locations;
	}
	public void setLocations(String locations) {
		this.locations = locations;
	}
	public String getRoomno() {
		return roomno;
	}
	public void setRoomno(String roomno) {
		this.roomno = roomno;
	}
	public String getNoofbeds() {
		return noofbeds;
	}
	public void setNoofbeds(String noofbeds) {
		this.noofbeds = noofbeds;
	}
	public double getRmrnt() {
		return rmrnt;
	}
	public void setRmrnt(double rmrnt) {
		this.rmrnt = rmrnt;
	}
	public String getRmtype() {
		return rmtype;
	}
	public void setRmtype(String rmtype) {
		this.rmtype = rmtype;
	}
	public double getBcharges() {
		return bcharges;
	}
	public void setBcharges(double bcharges) {
		this.bcharges = bcharges;
	}
	public double getDmocharges() {
		return dmocharges;
	}
	public void setDmocharges(double dmocharges) {
		this.dmocharges = dmocharges;
	}
	public double getNurcharges() {
		return nurcharges;
	}
	public void setNurcharges(double nurcharges) {
		this.nurcharges = nurcharges;
	}
	public double getDcharges() {
		return dcharges;
	}
	public void setDcharges(double dcharges) {
		this.dcharges = dcharges;
	}
	@Override
	public String toString() {
		return "RoomTarrif [tno=" + tno + ", locations=" + locations + ", roomno=" + roomno + ", noofbeds=" + noofbeds
				+ ", rmrnt=" + rmrnt + ", rmtype=" + rmtype + ", bcharges=" + bcharges + ", dmocharges=" + dmocharges
				+ ", nurcharges=" + nurcharges + ", dcharges=" + dcharges + "]";
	}
	
	
	
	
}
