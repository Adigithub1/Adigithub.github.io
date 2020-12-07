package com.app.dao;

import java.util.List;

import com.app.pojo.Departmentpojo;
import com.app.pojo.Locationpojo;
import com.app.pojo.MainDepartmentpojo;


public interface DepartmentDao {
	public void saveUser ( Departmentpojo user );
	public List<Departmentpojo> getUser();
	List<Departmentpojo> getDepartment(String DepartmentName);
	void adduser(Departmentpojo user);
	List<Departmentpojo> updatepojo(Departmentpojo user);
	List<MainDepartmentpojo> getMaindepartment();
	
	List<Locationpojo> getLocation();
	public List getDepartment(int id);
	public List getUser(int id);
	public int getidfromdepart();
	
	
}
