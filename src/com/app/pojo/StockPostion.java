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
public class StockPostion {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "proCode")
	private int id;
	@Column(name = "proName")
	private String prname;
	@Transient
	private String prcode;
	@Column(name="proUnit")
	private String uom;
	@Column(name="batNo")
	private int bno;
	@Column(name="expdate")
	private String expdate;
	@Column(name="mrp")
	private double cost;
	@Column(name = "availQuty")
	private int qty;
	@Column(name = "proType")
	private String ptype;
	@Transient
	private String all;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPrname() {
		return prname;
	}

	public void setPrname(String prname) {
		this.prname = prname;
	}

	public String getPrcode() {
		return prcode;
	}

	public void setPrcode(String prcode) {
		this.prcode = prcode;
	}

	public String getUom() {
		return uom;
	}

	public void setUom(String uom) {
		this.uom = uom;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getExpdate() {
		return expdate;
	}

	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	@Override
	public String toString() {
		return "StockPostion [id=" + id + ", prname=" + prname + ", prcode=" + prcode + ", uom=" + uom + ", bno=" + bno
				+ ", expdate=" + expdate + ", cost=" + cost + ", qty=" + qty + ", ptype=" + ptype + "]";
	}

}
