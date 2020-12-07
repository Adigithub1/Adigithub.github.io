package com.app.service;

import java.util.List;

import com.app.pojo.Departmentpojo;
import com.app.pojo.Locationpojo;
import com.app.pojo.MainDepartmentpojo;

public interface DepartmentService {
	public void saveUser ( Departmentpojo user );
	public List<Departmentpojo> getUser();
	List<Departmentpojo> getDepartment(String DepartmentName);
	void adduser(Departmentpojo user);
	List<Departmentpojo> updatepojo(Departmentpojo user);
	List<MainDepartmentpojo> getMaindepartment();
	
	List<Locationpojo> getLocation();
	public List  getDepartment(int id);
	void updateUser(Departmentpojo user);
	public List getUser(int id);
	public int getidfromdepart();
}
