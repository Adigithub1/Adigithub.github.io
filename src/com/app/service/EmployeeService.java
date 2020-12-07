package com.app.service;

import java.util.List;

import com.app.pojo.Employee;

public interface EmployeeService {
	public boolean addUser(Employee user);

	public List<Employee> getEmployee(int id);

	public List<Employee> getUser();

	public void deleteEmployee(Employee user);

	public void addUserUpdate(Employee user);

	public Employee get(Integer id);

	public boolean Login(Employee user);
	/*public String getMaxId2();*/
	public String getMaxId2();
}
