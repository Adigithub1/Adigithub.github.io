package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.InPatientDao;

import com.app.pojo.InpatientPojo;



@Repository
public class InPatientDaoImpl implements InPatientDao

{
	@Autowired
	private SessionFactory sessionfactory;


	@Override
	public List<InpatientPojo> getpatientbyreno(String regno) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from InpatientPojo WHERE patientmrno=:patientmrno";
		Query query = session.createQuery(hql);

		query.setParameter("patientmrno", regno);
		List<InpatientPojo> l2 = query.list();
		for (InpatientPojo inpatientPojo : l2) {
			System.out.println(inpatientPojo.getPatientmrno());
			
		}
		return l2;
	}

	@Override
	public List<InpatientPojo> getbynamebyname(String username) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from InpatientPojo WHERE patientname=:patientname";
		Query query = session.createQuery(hql);

		query.setParameter("patientname", username);
		List<InpatientPojo> l2 = query.list();
		for (InpatientPojo inpatientPojo : l2) {
			System.out.println(inpatientPojo.getPatientname());
			
		}
		return l2;
	}

	@Override
	public List<InpatientPojo> getinpatients() {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from InpatientPojo ";
		Query query = session.createQuery(hql);

		
		List<InpatientPojo> l2 = query.list();
		
		return l2;
	}
	
	
	

}
