package com.app.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Departmentpojo")
public class dept {
	@Id
	@GeneratedValue
	private int id;
	@Column(name = "maindepartmentName")
	private String dept;

	@Override
	public String toString() {
		return "dept [id=" + id + ", dept=" + dept + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}
}
