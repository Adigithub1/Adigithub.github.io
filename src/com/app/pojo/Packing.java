package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="packing_information")
public class Packing 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int packId;
	
	private String packName;

	public int getPackId() {
		return packId;
	}

	public void setPackId(int packId) {
		this.packId = packId;
	}

	public String getPackName() {
		return packName;
	}

	public void setPackName(String packName) {
		this.packName = packName;
	}

	@Override
	public String toString() {
		return "Packing [packId=" + packId + ", packName=" + packName + "]";
	}

}
