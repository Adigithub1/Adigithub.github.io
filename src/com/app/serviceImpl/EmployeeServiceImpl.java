package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.EmployeeDao;
import com.app.pojo.Employee;
import com.app.service.EmployeeService;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	EmployeeDao employeeDaoDao;

	@Override
	public boolean addUser(Employee user) {
		return employeeDaoDao.saveUser(user);
	}

	public List<Employee> getUser() {
		return employeeDaoDao.getUser();
	}

	@Override
	@Transactional
	public void deleteEmployee(Employee user) {
		employeeDaoDao.deleteEmployee(user);
	}

	@Override
	public List<Employee> getEmployee(int id) {
		// TODO Auto-generated method stub
		return employeeDaoDao.getEmployee(id);
	}

	@Override
	public void addUserUpdate(Employee user) {
		// TODO Auto-generated method stub
		employeeDaoDao.updateEmployeeupdate(user);
	}

	@Override
	public Employee get(Integer id) {
		return (Employee) employeeDaoDao.getEmployeePhoto(id);
	}

	@Override
	public boolean Login(Employee user) {
		return employeeDaoDao.login(user);
	}

	/*
	 * @Override public String getMaxId2() { // TODO Auto-generated method stub
	 * return employeeDaoDao.getMaxId2(); }
	 */
	@Override
	public String getMaxId2() {
		// TODO Auto-generated method stub
		return employeeDaoDao.getMaxId2();
	}

}
