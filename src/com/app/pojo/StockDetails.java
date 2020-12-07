package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "ProductDetailAVINASH")
public class StockDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "proCode")
	private int id;
	@Transient
	private String prcode;
	@Column(name = "proName")
	private String prname;
	@Column(name = "proUnit")
	private String uom;
	@Column(name = "batNo")
	private String bno;
	@Column(name = "expdate")
	private String expdate;
	@Column(name = "availQuty")
	private int avlqty;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPrcode() {
		return prcode;
	}

	public void setPrcode(String prcode) {
		this.prcode = prcode;
	}

	public String getPrname() {
		return prname;
	}

	public void setPrname(String prname) {
		this.prname = prname;
	}

	public String getUom() {
		return uom;
	}

	public void setUom(String uom) {
		this.uom = uom;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getExpdate() {
		return expdate;
	}

	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}

	public int getAvlqty() {
		return avlqty;
	}

	public void setAvlqty(int avlqty) {
		this.avlqty = avlqty;
	}

	@Override
	public String toString() {
		return "StockDetails [id=" + id + ", prcode=" + prcode + ", prname=" + prname + ", uom=" + uom + ", bno=" + bno
				+ ", expdate=" + expdate + ", avlqty=" + avlqty + "]";
	}

}
