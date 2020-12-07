package com.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.Doctordao;

import com.app.pojo.Doctordetail;
import com.app.pojo.dept;
import com.app.service.Doctorservice;


@Service
@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
public class DoctorserviceImpl implements Doctorservice {
	@Autowired
	Doctordao doctordao;
	public void adddetails(Doctordetail doctor) {
		// TODO Auto-generated method stub
		doctordao.savedoctordetail(doctor);
	}
	@Override
	public List<Doctordetail> getuser() {
		// TODO Auto-generated method stub
		return doctordao.getuser();
	}
	@Override
	public List<Doctordetail> getdepartmentnames() {
		// TODO Auto-generated method stub
		return doctordao.getdepartmentnames();
	}
	@Override
	public List<Doctordetail> getdoctors() {
		// TODO Auto-generated method stub
		return doctordao.getdoctors();
	}
	@Override
	public List getDetails(int id) {
		// TODO Auto-generated method stub
		return doctordao.getDetails(id);
	}
	@Override
	public void addUserUpdate(Doctordetail doctor) {
		// TODO Auto-generated method stub
		doctordao.updatedoctorupdate(doctor);
	}
	@Override
	public void deleteDoctor(Doctordetail doctor) {
		// TODO Auto-generated method stub
		doctordao.deleteDoctor(doctor);
	}
	@Override
	public List<Doctordetail> doctor(String doctorn) {
		// TODO Auto-generated method stub
		return doctordao.doctor(doctorn);
	}
	@Override
	public List<dept> getdetpaert() {
		// TODO Auto-generated method stub
		return doctordao.getdetpaert();
	}

}
