package com.app.daoImpl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.Outpatientdao;
import com.app.pojo.AddPatient1;
import com.app.pojo.DoctotNames;
import com.app.pojo.InpatientPojo;

@Repository
public class OutpatientDaoImp implements Outpatientdao

{
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List<AddPatient1> getpatientbyreno(String regno) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 WHERE registNo=:registNo";
		Query query = session.createQuery(hql);

		query.setParameter("registNo", regno);
		List<AddPatient1> l2 = query.list();
		for (AddPatient1 inpatientPojo : l2) {
			

		}
		return l2;
	}

	@Override
	public List<AddPatient1> getbynamebyname(String username) {
		System.out.println(username);
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 WHERE patientName=:patientName";
		Query query = session.createQuery(hql);

		query.setParameter("patientName", username);
		List<AddPatient1> l2 = query.list();
		for (AddPatient1 inpatientPojo : l2) {
		

		}
		return l2;
	}

	@Override
	public List<AddPatient1> getinpatients() {
		Session session = sessionfactory.getCurrentSession();
		String hql = "from com.app.pojo.AddPatient1 INNER JOIN com.app.pojo.InpatientPojo ";
		Query query = session.createQuery(hql);

		List<AddPatient1> l2 = query.list();

		return l2;
	}

	@Override
	public List getOutPatientDetails() {
		// TODO Auto-generated method stub

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from com.app.pojo.InpatientPojo";
		Query q = ses.createQuery(hql);
		List<InpatientPojo> l = q.list();

		String hql1 = "from com.app.pojo.AddPatient1";
		Query q1 = ses.createQuery(hql1);
		List<AddPatient1> l1 = q1.list();
		System.out.println("before removing objct");
		System.out.println(l1);
		String inPatientRegNo = null;
		String wholeDetails = null;
		Set<AddPatient1> sa = new HashSet<AddPatient1>();
		int i = 0;

		Iterator<InpatientPojo> iter = l.iterator();
		Iterator<AddPatient1> iter1 = null;
		while (iter.hasNext()) {
			InpatientPojo element = iter.next();
		
			iter1 = l1.iterator();
			while (iter1.hasNext()) {
				AddPatient1 element1 = iter1.next();
				if (element1.getRegistNo().equals(element.getPatientmrno())) {
					iter1.remove();

				} else {
				}

			}

		}

		/*
		 * for (InpatientPojo in : l) { inPatientRegNo = in.getPatientmrno();
		 * 
		 * for (AddPatient1 ap : l1) { wholeDetails = ap.getRegistNo();
		 * System.out.println(wholeDetails); if
		 * (inPatientRegNo.equals(wholeDetails)) { System.out.println("same"); }
		 * else { System.out.println("differet"); }
		 * 
		 * }
		 * 
		 * }
		 */

		tx.commit();
		ses.close();

		List list = new ArrayList<>(sa);

		return l1;
	}

}
