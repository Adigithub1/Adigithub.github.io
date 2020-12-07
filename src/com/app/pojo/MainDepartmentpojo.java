package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Employeetable")
public class MainDepartmentpojo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "depart")
	private String maindepartmentName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaindepartmentName() {
		return maindepartmentName;
	}

	public void setMaindepartmentName(String maindepartmentName) {
		this.maindepartmentName = maindepartmentName;
	}

	@Override
	public String toString() {
		return "MainDepartmentpojo [id=" + id + ", maindepartmentName=" + maindepartmentName + "]";
	}

}
