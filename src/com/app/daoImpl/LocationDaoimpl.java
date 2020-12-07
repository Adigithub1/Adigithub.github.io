package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.LocationDao;

import com.app.pojo.Locationpojo1;



@Repository("locationDao")
public class LocationDaoimpl implements LocationDao{
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public void adduser(Locationpojo1 user) {
	
		sessionfactory.getCurrentSession().saveOrUpdate(user);

	}
	@Override
	public void saveUser(Locationpojo1 user) {
		sessionfactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	public List<Locationpojo1> getLocation(String floorName) {
		Session session = sessionfactory.openSession();
		String hql= " from com.app.pojo.Locationpojo1 where floorName=:floorName ";
		Query q = session.createQuery(hql);
		q.setParameter("floorName", floorName);
		List<Locationpojo1> ut1 = q.list();
		session.close();
		return ut1;
	}


	@Override
	public List<Locationpojo1> getUser() {
		Session session = sessionfactory.openSession();
		String hql= " from com.app.pojo.Locationpojo1 ";
		Query q = session.createQuery(hql);
		
		List<Locationpojo1> userlist = q.list();
		session.close();
		return userlist;
	}
	@Override
	public List<Locationpojo1> updatepojo(Locationpojo1 user) {
		System.out.println("am in updatepojo");
		System.out.println(user.getId());
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		String hql = "update Locationpojo1 set floorName=:floorName where remarks=:remarks";
		
		Query q = session.createQuery(hql);
		q.setParameter("floorName", user.getFloorName());
		q.setParameter("remarks", user.getRemarks());
		
		int i = q.executeUpdate();
		System.out.println("rows affected=" + i);
		String hql2 = "from Locationpojo1";
		Query q1 = session.createQuery(hql2);
		List l = q1.list();
		tx.commit();
		session.close();
		return l;
	}
	@Override
	public List getLocation(int id) {
		
	/*	return  sessionfactory.getCurrentSession().get(Locationpojo1.class, id).List;
		
		*/
		
		
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		String hql = "from Locationpojo1 where id=:id";
		
		Query q = session.createQuery(hql);
		q.setParameter("id", id);
		
	
		List l1 = q.list();
		tx.commit();
		session.close();
		
		
		return l1;
		
		
		
		
		
	}
	

}
