package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.StockDaoPOsition;
import com.app.pojo.ProductType99;
import com.app.pojo.StockPostion;

@Repository("stockDao")
public class StockPositionDaoImpl implements StockDaoPOsition{


	@Autowired
	private SessionFactory sessionfactory;
	
	
	
	@Override
	public List<StockPostion> GetDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.ProductType99";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("unchecked")
		List l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
		
	}



	@Override
	public String[] getProductNames() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select productTypeName from com.app.pojo.ProductType99";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		String[] arr1 = (String[]) ((List<ProductType99>) l).toArray(new String[l.size()]);
        System.out.println(arr1);
		return arr1;
		
	}



	@Override
	public List getParticularDetails(String prname) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.ProductType99 where productTypeName=:prname";
		Query q = ses.createQuery(hql);
		q.setParameter("prname",prname);
		@SuppressWarnings("unchecked")
		List l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}



	@Override
	public List GetParticularTypeDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.ProductType99";
		Query q = ses.createQuery(hql);
		
		List l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}



	@Override
	public String[] getProductTypes() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select type from com.app.pojo.ProductType99";
		Query q = ses.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<ProductType99> l = q.list();
		String[] arr1 = (String[]) ((List<ProductType99>) l).toArray(new String[l.size()]);
		System.out.println("am in dao impl");
		System.out.println(l);
		System.out.println(l);
		System.out.println("arr1"+arr1);
		System.out.println(l);
		System.out.println(l);
		tx.commit();
		ses.close();
		return arr1;
	}



	@Override
	public List GetParticularTypeDetailsOfStockPosition(String productTypeName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.ProductType99 where productTypeName=:productTypeName";
		Query q = ses.createQuery(hql);
		q.setParameter("productTypeName",productTypeName);
		List<StockPostion> l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}



	@Override
	public List GetDetailsBasedonProductType(String type) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.ProductType99 where type=:productTypeName";
		Query q = ses.createQuery(hql);
		q.setParameter("productTypeName",type);
		List l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

}
