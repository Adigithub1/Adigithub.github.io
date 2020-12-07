package com.app.daoImpl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.DuePatientDao;
import com.app.pojo.DuePatient;

@Repository("userDao")
public class DuePatientdaoImpl implements DuePatientDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List<DuePatient> GetDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("inside daoimpl");
		String hql = "from com.app.pojo.DuePatient where dueamt > 0";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DuePatient> l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getPatient(int id) {

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.DuePatient where id=:id ";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);

		List l = q.list();
		return l;

	}

	@Override
	public List<DuePatient> updateUser(DuePatient user) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		double pamnt = user.getPaidamnt();
		double damt = user.getDueamt();
		damt = damt - pamnt;
		
		String hql = "update com.app.pojo.DuePatient set dueamt=:dueamt where id=:id";
		Query q = ses.createQuery(hql);
		q.setParameter("id", user.getId());
		q.setParameter("dueamt", damt);
		int i = q.executeUpdate();
		
		
		String hql2 = "from com.app.pojo.DuePatient";
		Query q1 = ses.createQuery(hql2);
		@SuppressWarnings("rawtypes")
		List l = q1.list();
		tx.commit();
		ses.close();
		return l;

	}

	@Override
	public List<DuePatient> getUserParticularDayDetails(String admitdate) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		System.out
				.println("am in retrive a particular day date values dao impl");
		Date convertedDate = null;
		DateFormat formatter = null;

		formatter = new SimpleDateFormat("yyyy-MM-dd");
		try {
			convertedDate = (Date) formatter.parse(admitdate);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		System.out.println("convertedDate");
		System.out.println(convertedDate);
		Date da = new Date();
		System.out.println("compare");
		System.out.println(admitdate + "  " + da + "  " + convertedDate);

		String sql = "from com.app.pojo.DuePatient where admitdate=:admitdate";
		Query query = session.createQuery(sql);

		query.setParameter("admitdate", admitdate);

		List<DuePatient> l = query.list();
if(l.isEmpty()){

	
}
		System.out.println(l);
		tx.commit();
		session.close();
		return l;
	}

}
