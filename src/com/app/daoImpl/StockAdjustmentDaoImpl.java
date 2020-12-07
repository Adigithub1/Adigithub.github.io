package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.StockAdjustmentDao;
import com.app.pojo.StockDetails;

@Repository("stockAdjustmentDao")
public class StockAdjustmentDaoImpl implements StockAdjustmentDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List<StockDetails> GetDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.StockDetails";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<StockDetails> l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;

	}

	@Override
	public List getStockId(int id) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.StockDetails where id=:id";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);

		List l = q.list();
		return l;
	}

	@Override
	public void updateUser(StockDetails user) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println(user.getId());
		String hql = "update com.app.pojo.StockDetails set avlqty=:avlqty where id=:id";
		Query q = ses.createQuery(hql);
		q.setParameter("id", user.getId());
		q.setParameter("avlqty", user.getAvlqty());
		int i = q.executeUpdate();
		System.out.println("no of rows effected is " + i);
		String hql2 = "from com.app.pojo.StockDetails";
		Query q1 = ses.createQuery(hql2);
		@SuppressWarnings("rawtypes")
		List l = q1.list();
		System.out.println(l);
		tx.commit();
		ses.close();

	}

	@Override
	public String[] getIdc() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select prname from com.app.pojo.StockDetails";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		String[] arr1 = (String[]) ((List<StockDetails>) l).toArray(new String[l.size()]);
		System.out.println(arr1);
		return arr1;
	}

	@Override
	public List getParticularProductName(StockDetails user) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = " from com.app.pojo.StockDetails where prname=:prname";
		Query q = ses.createQuery(hql);
		q.setParameter("prname", user.getPrname());
		List<StockDetails> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

}
