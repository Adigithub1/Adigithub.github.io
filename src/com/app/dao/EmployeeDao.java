package com.app.dao;

import java.util.List;

import com.app.pojo.Employee;


public interface EmployeeDao {
	public boolean saveUser(Employee user);

	public List<Employee> getEmployee(int id);

	public void deleteEmployee(Employee user);

	public List<Employee> getUser();

	public void updateEmployeeupdate(Employee user);

	public List<Employee> updateuser();

	public Employee getEmployeePhoto(Integer id);
	/*public String getMaxId2();*/
	public boolean login(Employee user);
	public String getMaxId2();
}
