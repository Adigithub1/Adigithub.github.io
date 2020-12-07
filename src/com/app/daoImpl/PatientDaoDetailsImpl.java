package com.app.daoImpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.PatientDaoDetails;
import com.app.pojo.AddPatient1;
import com.app.pojo.DoctotNames;

@Repository
public class PatientDaoDetailsImpl implements PatientDaoDetails

{
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List getPerson() {

		Session session = sessionfactory.getCurrentSession();
		String hql = " From  DoctotNames";
		Query query = session.createQuery(hql);

		List l2 = query.list();
		return l2;
	}

	@Override
	public void adduser(AddPatient1 user) {
		sessionfactory.getCurrentSession().saveOrUpdate(user);

	}

	@Override
	public List<DoctotNames> getdoctors() {
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  DoctotNames";
		Query query = session.createQuery(hql);

		List<DoctotNames> l2 = query.list();
		return l2;
	}

	@Override
	public Integer getid() {

		Integer id = null;
		try {
			Session session = sessionfactory.getCurrentSession();
			String hql = " select max(id) from AddPatient1";
			Query query = session.createQuery(hql);

			List<Integer> l2 = query.list();

			Integer[] aa = (Integer[]) l2.toArray(new Integer[l2.size()]);

			id = (aa[0]) + 1;
			System.out.println(id);
			return id;

		} catch (Exception e) {
			id = 1;
			return id;
		}

	}

	@Override
	public List<AddPatient1> getpatient(String regno) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 WHERE registNo=:registNo";
		Query query = session.createQuery(hql);

		query.setParameter("registNo", regno);
		List<AddPatient1> l2 = query.list();

		/*
		 * AddPatient1 r1 = new AddPatient1();
		 * 
		 * for (AddPatient1 model : l2) {
		 * 
		 * r1.setRegistNo(model.getRegistNo());
		 * r1.setAddress(model.getAddress()); r1.setAge(model.getAge());
		 * r1.setAppointDate(model.getAppointDate());
		 * r1.setCity(model.getCity()); r1.setDoctorName(model.getDoctorName());
		 * r1.setGourdenName(model.getGourdenName());
		 * r1.setOccupation(model.getOccupation());
		 * r1.setPatientName(model.getPatientName());
		 * r1.setPhone(model.getPhone()); r1.setSex(model.getSex());
		 * r1.setState(model.getState()); r1.setPincode(model.getPincode());
		 * 
		 * }
		 */
		session.close();
		return l2;
	}

	@Override
	public List<AddPatient1> getbyname(String username) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 WHERE patientName=:patientName";
		Query query = session.createQuery(hql);

		query.setParameter("patientName", username);
		List<AddPatient1> l2 = query.list();
		return l2;
	}

	
	
	@Override
	public List<AddPatient1> getbydate(String date) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 WHERE registDate=:registDate";
		Query query = session.createQuery(hql);

		query.setParameter("registDate", date);
		List<AddPatient1> l2 = query.list();
		return l2;
	}

	
	



	
	@Override
	public int update(AddPatient1 document) {
		System.out.println(document.getRegistNo());
		System.out.println(document.getAddress1());
		Session session = sessionfactory.getCurrentSession();
		String hql = "UPDATE AddPatient1 SET regFee = :pass1 ,country= :pass11, appointDate= :pass2,doctorName = :pass3 , patientName= :pass4,gourdenName = :pass5 , address= :pass6,city = :pass7 , occupation= :pass8,remarks = :pass9 , registDate= :pass10,  age= :pass15, sex= :pass16 , phone= :pass17, state= :pass18, pincode= :pass19,tokenNo=:tokenNo WHERE registNo LIKE :pass20";
		Query query = session.createQuery(hql);

		query.setParameter("pass1", document.getRegFee());
		query.setParameter("pass2", document.getAppointDate());
		query.setParameter("pass3", document.getDoctorName());
		query.setParameter("pass4", document.getPatientName());
		query.setParameter("pass5", document.getGourdenName());
		query.setParameter("pass6", document.getAddress());
		query.setParameter("pass7", document.getCity());
		query.setParameter("pass8", document.getOccupation());
		query.setParameter("pass9", document.getRemarks());
		query.setParameter("pass10", document.getRegistDate());
		query.setParameter("pass15", document.getAge());
		query.setParameter("pass16", document.getSex());
		query.setParameter("pass17", document.getPhone());
		query.setParameter("pass18", document.getState());
		query.setParameter("pass19", document.getPincode());
		query.setParameter("pass20", document.getRegistNo());
		query.setParameter("pass11", document.getCountry());
		query.setParameter("tokenNo", document.getTokenNo());

		int j = query.executeUpdate();
		return j;
	}

	@Override
	public List<AddPatient1> getpatients() {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 ";
		Query query = session.createQuery(hql);

		List<AddPatient1> l2 = query.list();
		return l2;
	}

	@Override
	public String getrenumber() {
		String new1 = "";
		String new2 = "";
		try {
			Session session = sessionfactory.getCurrentSession();
			String hql = " select max(id) from AddPatient1";
			Query query = session.createQuery(hql);

			List<Integer> l2 = query.list();

			Integer[] aa = (Integer[]) l2.toArray(new Integer[l2.size()]);

			new1 = "MRN000";
			new2 = new1.concat(String.valueOf(aa[0] + 1));

			return new2;

		} catch (Exception e) {
			new2 = "MRN0001";

			return new2;
		}

	}

	@Override
	public List<DoctotNames> getDoctorfee(String s14) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from DoctotNames WHERE doctorName=:doctorName ";
		Query query = session.createQuery(hql);
		query.setParameter("doctorName", s14);

		List<DoctotNames> l2 = query.list();
		return l2;
	}

	@Override
	public String gettokenno(String s14, String data1) {
		String new1 = "";
		String new2 = "";

		System.out.println(s14);
		System.out.println(data1);
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 WHERE doctorName LIKE :doctorName AND appointDate LIKE:appointDate ";
		Query query = session.createQuery(hql);
		query.setParameter("doctorName", s14);
		query.setParameter("appointDate", data1);

		System.out.println("hi from the tokenm");
		List<AddPatient1> l2 = query.list();

		Iterator<AddPatient1> i1 = l2.iterator();
		String s1 = "";
		while (i1.hasNext()) {

			AddPatient1 product = (AddPatient1) i1.next();

			s1 = product.getTokenNo();
			System.out.println(s1);

		}

		if (s1 != "") {
			
			int i = s1.length();
			
			String m1=s1.substring(3,i);
			int i10=Integer.parseInt(m1);
			i10=i10+1;
			s1=s1.substring(0, 3).concat(String.valueOf(i10));
		System.out.println(s1);
			return s1;

		} else {
			new2 = "MRN0001";

			return new2;
		}
		/*
		 * try { Integer[] aa=(Integer[])l2.toArray(new Integer[l2.size()]);
		 * s1="TN-O"; int i=s1.length(); char j=s1.charAt(i); int h=(int)j; int
		 * f=h+1; new2=s1+f;
		 * 
		 * return new2; } catch (Exception e) { new2="TN-01";
		 * 
		 * return new2; }
		 */

	}

}
