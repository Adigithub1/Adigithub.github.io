package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojo.Product;
import com.app.pojo.ProductType;
import com.app.dao.ProductTypeDAO;
@Repository("productTypeDAO")
public class ProductTypeDAOImpl implements ProductTypeDAO {
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public boolean saveProduct1(ProductType pt) 
	{
		
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.ProductType where name=:name");
		q.setParameter("name", pt.getName());
		List<Product> l = q.list();
		System.out.println(l);
		if(l.isEmpty()){
			sessionfactory.getCurrentSession().save(pt);
			tx.commit();
			ses.close();
			return false;
		}
		else
		{
			System.out.println("we are in booleon");
			return true;
		}
	}

	@Override
	public List<ProductType> listProduct1() 
	{

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.ProductType");
		@SuppressWarnings("unchecked")
		List<ProductType> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
		
	}

	@Override
	public List<ProductType> getProduct1(int id) 
	{
		Session session = this.sessionfactory.openSession();
	Transaction t = session.beginTransaction();
	Query q = session.createQuery("from com.app.pojo.ProductType where id=:id");
	q.setParameter("id", id);
	List<ProductType> l = q.list();

	t.commit();
	session.close();
	return l;
	}

	@Override
	public void updateProduct1(ProductType pt)
	{
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(pt.getId());
		Query q = session
				.createQuery("update com.app.pojo.ProductType set  name=:name,type=:type  where id=:id");
		q.setParameter("id", pt.getId());
		q.setParameter("name", pt.getName());
		q.setParameter("type", pt.getType());
		
		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();

	}

	@Override
	public Integer[] ids1() 
	{
		Session ses = sessionfactory.openSession();
	Transaction tx = ses.beginTransaction();
	tx.begin();
	System.out.println("am in update dao impl");
	String hql = "select id from com.app.pojo.ProductType";
	Query q = ses.createQuery(hql);

	List l1 = q.list();
	Integer[] arr = (Integer[]) ((List<ProductType>) l1).toArray(new Integer[l1.size()]);

	System.out.println(l1);
	System.out.println(arr);
	return arr;
	}

	@Override
	public Integer getId1() 
	{


		return null;
	}
	
	/* PRODUCT SEARCH */

	@Override
	public String[] getIdc1()
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select name from com.app.pojo.ProductType";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<ProductType>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<ProductType> getWholeProduct1()
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole vendor dao impl");
		String hql = "com.app.pojo.ProductType";
		Query q = ses.createQuery(hql);
		List<ProductType> l = q.list();
		return l;
	}

	@Override
	public List<ProductType> getWholeNamesValues1(String name)
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on name");
		System.out.println(name);
		String hql = "from com.app.pojo.ProductType where name=:name";
		Query q = ses.createQuery(hql);
		q.setParameter("name", name);
		@SuppressWarnings("unchecked")
		List<ProductType> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularProduct1(ProductType pt) 
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.ProductType where name=:name";
		Query q = ses.createQuery(hql);
		q.setParameter("name", pt.getName());
		List<ProductType> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public Integer getMaxId() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(id) from com.app.pojo.ProductType";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;
			System.out.println("am in after adding one");
			System.out.println(id);
			tx.commit();
			session.close();
			return id;

		} catch (Exception e) {
			id = 1;
			System.out.println(id);
			tx.commit();
			session.close();
			return id;
		}
	}

	@Override
	public void deleteProductType(ProductType pt) {
		sessionfactory.getCurrentSession()
		.createQuery("delete from com.app.pojo.ProductType where id=" + pt.getId()).executeUpdate();
	}

}
