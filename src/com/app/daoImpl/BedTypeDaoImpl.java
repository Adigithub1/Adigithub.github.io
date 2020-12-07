package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.BedTypeDao;
import com.app.pojo.BedTypepojo;

@Repository("bedTypeDao")
public class BedTypeDaoImpl implements BedTypeDao{

	@Autowired
	private SessionFactory sessionfactory;
	
	
	
	@Override
	public List GetRoomDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.BedTypepojo";
		Query q = ses.createQuery(hql);
		List li=q.list();
		System.out.println(li);
		tx.commit();
		ses.close();
		return li;
	}



	@Override
	public void saveBedDetails(BedTypepojo bedtype) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		sessionfactory.getCurrentSession().save(bedtype);
		System.out.println("ofter saving roomDetails");
		tx.commit();
		ses.close();
		
	}



	@Override
	public List<BedTypepojo> getBedDetails(int bid) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.BedTypepojo where bid=:bid";
		Query q = ses.createQuery(hql);
		q.setParameter("bid", bid);
		List<BedTypepojo> li=q.list();
		System.out.println(li);
		tx.commit();
		ses.close();
		return li;
	}



	@Override
	public void UpdateRooms(BedTypepojo bedtype) {
		// TODO Auto-generated method stub
		
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("before updating");
		
		Query q = session
				.createQuery("update com.app.pojo.BedTypepojo set btypename=:btypename,remarks=:remarks where bid=:bid");
		q.setParameter("bid",bedtype.getBid());
		q.setParameter("btypename",bedtype.getBtypename());
		q.setParameter("remarks",bedtype.getRemarks());
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();	
		
	}



	@Override
	public void DeleteRoom(BedTypepojo bedtype) {
		// TODO Auto-generated method stub
		
		sessionfactory.getCurrentSession().createQuery("delete from com.app.pojo.BedTypepojo where bid="+bedtype.getBid()).executeUpdate();
		
	}



	@Override
	public String[] getBedTypes() {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select btypename from com.app.pojo.BedTypepojo";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		String[] arr1 = (String[]) ((List<BedTypepojo>) l).toArray(new String[l.size()]);
		System.out.println(arr1);
		tx.commit();ses.close();
		return arr1;
	}



	@Override
	public List<BedTypepojo> GetParticularRoomDetails(String btypename) {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.BedTypepojo where btypename=:btypename";
		
		Query q = ses.createQuery(hql);
		q.setParameter("btypename",btypename);
		List<BedTypepojo> li=q.list();
		System.out.println("am in dao impl");
		System.out.println(li);
		tx.commit();
		ses.close();
		
		
		return li;
	}

	
	
	
	
	
}
