package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BedTypepojo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bid;
	private String btypename;
	private String remarks;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBtypename() {
		return btypename;
	}
	public void setBtypename(String btypename) {
		this.btypename = btypename;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "BedTypepojo [bid=" + bid + ", btypename=" + btypename
				+ ", remarks=" + remarks + "]";
	}
	
	
	
	
}
