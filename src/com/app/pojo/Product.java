package com.app.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Productd")
public class Product 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int unitId;
private String unitName;
public int getUnitId() {
	return unitId;
}
public void setUnitId(int unitId) {
	this.unitId = unitId;
}
public String getUnitName() {
	return unitName;
}
public void setUnitName(String unitName) {
	this.unitName = unitName;
}
@Override
public String toString() {
	return "Product [unitId=" + unitId + ", unitName=" + unitName + "]";
}

}
