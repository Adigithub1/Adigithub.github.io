package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.MLCDao;

import com.app.pojo.Mlcpojo;




@Repository
public class MLCDaoImpl implements MLCDao

{
	@Autowired
	private SessionFactory sessionfactory;



	@Override
	public List<Mlcpojo> getpatient(String regno) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from Mlcpojo WHERE registrationNumber=:registrationNumber";
		Query query = session.createQuery(hql);

		query.setParameter("registrationNumber", regno);
		List<Mlcpojo> l2 = query.list();
		
		
		
/*		AddPatient1 r1 = new AddPatient1();

 		for (AddPatient1 model : l2) {

		r1.setRegistNo(model.getRegistNo());
		r1.setAddress(model.getAddress());
		r1.setAge(model.getAge());
		r1.setAppointDate(model.getAppointDate());
		r1.setCity(model.getCity());
		r1.setDoctorName(model.getDoctorName());
		r1.setGourdenName(model.getGourdenName());
		r1.setOccupation(model.getOccupation());
		r1.setPatientName(model.getPatientName());
		r1.setPhone(model.getPhone());
		r1.setSex(model.getSex());
		r1.setState(model.getState());
		r1.setPincode(model.getPincode());

	}*/
		session.close();
		return l2;
	}

	@Override
	public List<Mlcpojo> getbyname(String username) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from Mlcpojo WHERE patientName=:patientName";
		Query query = session.createQuery(hql);

		query.setParameter("patientName", username);
		List<Mlcpojo> l2 = query.list();
		return l2;
	}

	@Override
	public List<Mlcpojo> getbydate(String date) {
		Session session = sessionfactory.getCurrentSession();
		System.out.println("sdggsdg");
		String hql = " from Mlcpojo WHERE regdate=:regdate";
		
		Query query = session.createQuery(hql);

		query.setParameter("regdate", date);
	
		List<Mlcpojo> l2 = query.list();
		return l2;
	}



	@Override
	public List<Mlcpojo> getpatients() {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from Mlcpojo ";
		Query query = session.createQuery(hql);

		
		List<Mlcpojo> l2 = query.list();
		return l2;
	}

	@Override
	public void addmlcpatient(Mlcpojo document) {
		sessionfactory.getCurrentSession().saveOrUpdate(document);
		
	}

	@Override
	public String getmlcpatientsregno() {
		String new1="";
		String new2="";
		try {
			Session session = sessionfactory.getCurrentSession();
			String hql = " select max(id) from Mlcpojo";
			Query query = session.createQuery(hql);

			List<Integer> l2 = query.list();
			
			Integer[] aa=(Integer[])l2.toArray(new Integer[l2.size()]);

	      	new1="MLCREG-0";
	    	 new2=new1.concat(String.valueOf(aa[0]+1));
			
		
			return new2;
			
		} catch (Exception e) {
			new2="MLCREG-01";
	    	
			
			return new2;
		}
	}

	@Override
	public List<Mlcpojo> editMLCpatient(int id1) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from Mlcpojo WHERE id=:id";
		Query query = session.createQuery(hql);

		query.setParameter("id", id1);
		List<Mlcpojo> l2 = query.list();
		return l2;
	}

	@Override
	public void updatemlcpatient(Mlcpojo document) {
		Session session = sessionfactory.getCurrentSession();
		String hql = "UPDATE Mlcpojo SET patientPhotoName=:patientPhotoName,xRayreportsName=:xRayreportsName,scanReportsName=:scanReportsName,otherReportsName=:otherReportsName,registrationNumber = :pass1 ,patientName= :pass11, occupation= :pass2,guardiansName = :pass3 , age= :pass4,phoneNumber = :pass5 , sex= :pass6,remarks = :pass7 , identification1= :pass8,identification2 = :pass9 , addressLine1= :pass10,  addressLine2= :pass15, city= :pass16 , state= :pass17, country= :pass18, pincode1= :pass19,regdate=:regdate,patientPhoto=:patientPhoto,xRayreports=:xRayreports,scanReports=:scanReports,otherReports=:otherReports WHERE id LIKE :pass20";
		Query query = session.createQuery(hql);

		query.setParameter("pass1", document.getRegistrationNumber());
		query.setParameter("pass2", document.getOccupation());
		query.setParameter("pass3", document.getGuardiansName());
		query.setParameter("pass4", document.getAge());
		query.setParameter("pass5", document.getPhoneNumber());
		query.setParameter("pass6", document.getSex());
		query.setParameter("pass7", document.getRemarks());
		query.setParameter("pass8", document.getIdentification1());
		query.setParameter("pass9", document.getIdentification2());
		query.setParameter("pass10", document.getAddressLine1());
		query.setParameter("pass15", document.getAddressLine2());
		query.setParameter("pass16", document.getCity());
		query.setParameter("pass17", document.getState());
		query.setParameter("pass18", document.getCountry());
		query.setParameter("pass19", document.getPincode1());
		query.setParameter("pass20", document.getId());
		query.setParameter("pass11", document.getPatientName());
		query.setParameter("patientPhoto", document.getPatientPhoto());
		query.setParameter("xRayreports", document.getxRayreports());
		query.setParameter("scanReports", document.getScanReports());
		query.setParameter("otherReports", document.getOtherReports());
		query.setParameter("regdate", document.getRegdate());
		
		
		query.setParameter("patientPhotoName", document.getPatientPhotoName());
		query.setParameter("xRayreportsName", document.getxRayreportsName());
		query.setParameter("scanReportsName", document.getScanReportsName());
		query.setParameter("otherReportsName", document.getOtherReportsName());
		

		int j = query.executeUpdate();
		System.out.println(j);
		
		
	}

}
