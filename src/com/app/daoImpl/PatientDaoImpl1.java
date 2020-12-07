package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.PatientDao1;
import com.app.pojo.AddPatient1;
import com.app.pojo.PatientPojo;

@Repository
public class PatientDaoImpl1 implements PatientDao1 {
	@Autowired
	private SessionFactory sessionfactory;
	
	

	@Override
	public void adduser(AddPatient1 user) {
	
		sessionfactory.getCurrentSession().saveOrUpdate(user);

	}


	@Override
	public List<AddPatient1> getpatient(String regno) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from AddPatient1 WHERE registNo=:registNo";
		Query query = session.createQuery(hql);

		query.setParameter("registNo", regno);
		List<AddPatient1> l2 = query.list();
		session.close();
		return l2;
	}








	@Override
	public Integer getid() {
		
		return null;
	}





	@Override
	public void saveUser(AddPatient1 user) {
		// TODO Auto-generated method stub
		
	}





	@Override
	public List getpatientDetails() {
		Session session = sessionfactory.openSession();
		String SQL_QUERY = " from AddPatient1 ";
		Query q = session.createQuery(SQL_QUERY);
		List<PatientPojo> userlist = q.list();
		session.close();
		return userlist;
	}
		
	}






