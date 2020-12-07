package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Departmentpojo")
public class Departmentpojo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	private String departmentName;
	private String maindepartmentName;
	private String location;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getMaindepartmentName() {
		return maindepartmentName;
	}
	public void setMaindepartmentName(String maindepartmentName) {
		this.maindepartmentName = maindepartmentName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "Departmentpojo [id=" + id + ", departmentName=" + departmentName + ", maindepartmentName="
				+ maindepartmentName + ", location=" + location + "]";
	} 
		
	

}
