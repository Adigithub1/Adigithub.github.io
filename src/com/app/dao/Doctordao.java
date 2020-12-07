package com.app.dao;

import java.util.List;

import com.app.pojo.Doctordetail;
import com.app.pojo.dept;

public interface Doctordao {
	public void savedoctordetail(Doctordetail doctor);

	public List<Doctordetail> getuser();

	public List<Doctordetail> getdepartmentnames();

	public List<Doctordetail> getdoctors();

	public List getDetails(int id);

	public void updatedoctorupdate(Doctordetail doctor);

	public void deleteDoctor(Doctordetail doctor);

	public List<Doctordetail> doctor(String doctorn);

	public List<dept> getdetpaert();
}
