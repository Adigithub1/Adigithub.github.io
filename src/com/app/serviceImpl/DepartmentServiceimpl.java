package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.DepartmentDao;
import com.app.service.DepartmentService;
import com.app.pojo.Departmentpojo;
import com.app.pojo.Locationpojo;
import com.app.pojo.MainDepartmentpojo;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class DepartmentServiceimpl implements DepartmentService {
	@Autowired
	DepartmentDao userDao1;

	@Override
	public void saveUser(Departmentpojo user) {
		userDao1.saveUser(user);

	}

	@Override
	public List<Departmentpojo> getUser() {

		return userDao1.getUser();
	}

	@Override
	public List<Departmentpojo> getDepartment(String DepartmentName) {

		return userDao1.getDepartment(DepartmentName);
	}

	@Override
	public void adduser(Departmentpojo user) {
		// TODO Auto-generated method stub
		userDao1.saveUser(user);
	}

	@Override
	public List<Departmentpojo> updatepojo(Departmentpojo user) {

		return userDao1.updatepojo(user);
	}

	@Override
	public void updateUser(Departmentpojo user) {
		userDao1.updatepojo(user);

	}

	@Override
	public List<MainDepartmentpojo> getMaindepartment() {

		return userDao1.getMaindepartment();
	}

	@Override
	public List<Locationpojo> getLocation() {

		return userDao1.getLocation();
	}

	@Override
	public List getUser(int id) {
		// TODO Auto-generated method stub
		return userDao1.getUser(id);
	}

	@Override
	public List getDepartment(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getidfromdepart() {
		// TODO Auto-generated method stub
		return userDao1.getidfromdepart();
	}

}
