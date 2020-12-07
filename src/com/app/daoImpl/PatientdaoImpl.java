package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojo.Dcotcorpojo;
import com.app.pojo.PatientPojo;

@Repository("userDao2")
public class PatientdaoImpl implements com.app.dao.Patientdao {
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List<PatientPojo> getUser(String s1, String s2) {
		Session session = sessionfactory.openSession();
		String SQL_QUERY = " from PatientPojo WHERE doctorName=:doctorName and appointmentDate=:appointmentDate ";
		Query q = session.createQuery(SQL_QUERY);
		q.setParameter("doctorName", s2);
		q.setParameter("appointmentDate", s1);
		List<PatientPojo> l = q.list();
		System.out.println(l);

		session.close();
		return l;
	}

	@Override
	public void saveUser(String doctorName, String patientName,
			String appointmentDate, String appointmentTime, String address,
			String treatmentfor, String gender, String mobileNo, String age,
			String address2, String city, String state, String pincode,
			String country) {
		Session session = sessionfactory.openSession();

		Transaction tx;
		try {
			String hql = "select max(id) from PatientPojo";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println();
			String tokenI = "LH_0";
			String tokenId = tokenI.concat(String.valueOf(arr[0] + 1));
			System.out.println("auto generate id using array===" + tokenId);
			System.out.println(tokenId);
			tx = session.beginTransaction();
			tx.begin();
			PatientPojo rp = new PatientPojo();
			rp.setTokenId(tokenId);
			rp.setDoctorName(doctorName);
			rp.setPatientName(patientName);
			rp.setAppointmentDate(appointmentDate);
			rp.setAge(age);
			rp.setGender(gender);
			rp.setMobileNo(mobileNo);
			rp.setTreatmentfor(treatmentfor);
			rp.setAddress(address);
			rp.setAddress2(address2);
			rp.setCity(city);
			rp.setPincode(pincode);
			rp.setState(state);
			rp.setCountry(country);
			session.save(rp);
		} catch (NullPointerException e) {
			System.out.println("am in implimantation catch");
			System.out.println(e);
			String TokenId = "LH_01";
			tx = session.beginTransaction();
			tx.begin();
			PatientPojo rp = new PatientPojo();
			rp.setTokenId(TokenId);
			rp.setDoctorName(doctorName);
			rp.setPatientName(patientName);
			rp.setAppointmentDate(appointmentDate);
			rp.setAge(age);
			rp.setGender(gender);
			rp.setMobileNo(mobileNo);
			rp.setTreatmentfor(treatmentfor);
			rp.setAddress(address);
			rp.setAddress2(address2);
			rp.setCity(city);
			rp.setPincode(pincode);
			rp.setState(state);
			rp.setCountry(country);
			session.save(rp);
		}

		tx.commit();
		session.close();

	}

	@Override
	public void deletepatient(PatientPojo user) {
		Session session = sessionfactory.openSession();
		String hql = "DELETE FROM PatientPojo WHERE id = " + user.getId();
		Query q = session.createQuery(hql);
		q.executeUpdate();
		session.close();

	}

	@Override
	public PatientPojo getPatient(int id) {

		return (PatientPojo) sessionfactory.getCurrentSession().get(
				PatientPojo.class, id);
	}

	@Override
	public List<PatientPojo> updatepojo(PatientPojo user) {
		System.out.println("am in updatepojo");
		System.out.println(user.getId());
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		String hql = "update PatientPojo set doctorName=:doctorName,patientName=:patientName,appointmentDate=:appointmentDate,appointmentTime=:appointmentTime,age=:age,gender=:gender,mobileNo=:mobileNo,treatmentfor=:treatmentfor,address=:address,address2=:address2,city=:city,state=:state,pincode=:pincode,country=:country where tokenId=:tokenId";
		Query q = session.createQuery(hql);
		q.setParameter("tokenId", user.getTokenId());
		q.setParameter("doctorName", user.getDoctorName());
		q.setParameter("patientName", user.getPatientName());
		q.setParameter("appointmentDate", user.getAppointmentDate());
		q.setParameter("appointmentTime", user.getAppointmentTime());
		q.setParameter("age", user.getAge());
		q.setParameter("gender", user.getGender());
		q.setParameter("mobileNo", user.getMobileNo());
		q.setParameter("treatmentfor", user.getTreatmentfor());
		q.setParameter("address", user.getAddress());
		q.setParameter("address2", user.getAddress2());
		q.setParameter("city", user.getCity());
		q.setParameter("state", user.getState());
		q.setParameter("pincode", user.getPincode());
		q.setParameter("country", user.getCountry());

		int i = q.executeUpdate();
		System.out.println("rows affected=" + i);
		String hql2 = "from PatientPojo";
		Query q1 = session.createQuery(hql2);
		List l = q1.list();
		tx.commit();
		session.close();
		return l;
	}

	@Override
	public void addUser(PatientPojo user) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		/*String tokenId = "null";

		try {
			String hql = "select max(id) from PatientPojo";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println();
			String tokenI = "html_0";
			tokenId = tokenI.concat(String.valueOf(arr[0] + 1));
			System.out.println("auto generate id using array===" + tokenId);
			System.out.println(tokenId);
			tx = session.beginTransaction();
			tx.begin();

		} catch (NullPointerException e) {
			tokenId = "html_01";
		}

		user.setTokenId(tokenId);
*/
		session.save(user);
		System.out.println("am in dao impl save");
		tx.commit();
		session.close();

	}

	@Override
	public List<Dcotcorpojo> getdoctors() {
		Session session = sessionfactory.getCurrentSession();
		String hql = " From com.app.pojo.Dcotcorpojo";
		Query query = session.createQuery(hql);

		List<Dcotcorpojo> l2 = query.list();
		return l2;

	}

	@Override
	public List<PatientPojo> getUser() {
		Session session = sessionfactory.openSession();
		String SQL_QUERY = " from PatientPojo ";
		Query q = session.createQuery(SQL_QUERY);
		List<PatientPojo> userlist = q.list();
		session.close();
		return userlist;
	}

	@Override
	public String getTokenMax() {
		Session session = sessionfactory.openSession();

		try {
			String hql = "select max(id) from PatientPojo";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println();
			String tokenI = "LH_0";
			String tokenId = tokenI.concat(String.valueOf(arr[0] + 11));
			return tokenId;

		} catch (NullPointerException e) {

			String tokenId = "LH_10";

			return tokenId;

		}
	}

	@Override
	public String getTokenMaxBasedOnDoctor(PatientPojo user) {

		Session session = sessionfactory.openSession();

		String hql = "from PatientPojo WHERE doctorName=:doctorName and appointmentDate=:appointmentDate ";
		Query q = session.createQuery(hql);
		q.setParameter("doctorName", user.getDoctorName());
		q.setParameter("appointmentDate", user.getAppointmentDate());
		List<PatientPojo> l = q.list();

		String tokenId = "LH-";
		String tokenDB = null;
		int len=0;
		int id = 0;
		if (l.isEmpty()) {
			tokenId = "LH-10";
		} else {
			for (PatientPojo p : l) {
				tokenDB = p.getTokenId();
				len=tokenDB.length();
				id = (Integer.parseInt(tokenDB.substring(4, len)));
				tokenId = tokenId.concat(String.valueOf(id));
			}
			id=id+1;
			tokenId = tokenId.concat(String.valueOf(id));
		}

		return tokenId;

	}

	@Override
	public List getUserDetails() {
		Session session = sessionfactory.openSession();

		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "from PatientPojo";
		Query q = session.createQuery(hql);

		List l = q.list();

		tx.commit();
		session.close();
		return l;
	}

}
