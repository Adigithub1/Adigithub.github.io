package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.ProductDAO;
import com.app.pojo.Product;
import com.app.pojo.RegisterPojo;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public boolean saveProduct(Product p) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.Product where unitName=:unitName");
		q.setParameter("unitName", p.getUnitName());
		List<Product> l = q.list();
		System.out.println(l);
		if (l.isEmpty()) {
			sessionfactory.getCurrentSession().save(p);
			tx.commit();
			ses.close();
			return false;
		} else {
			System.out.println("we are in booleon");
			return true;
		}
	}

	@Override
	public List<Product> listProduct() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.Product ");
		@SuppressWarnings("unchecked")
		List<Product> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;

	}

	public List<Product> getProduct(int unitId) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from com.app.pojo.Product where unitId=:unitId");
		q.setParameter("unitId", unitId);
		@SuppressWarnings("rawtypes")
		List<Product> l = q.list();
		System.out.println("retrieve particular id");
		System.out.println(l);
		for (Product list2 : l) {
			System.out.println("am in update retrive dao impl");
			System.out.println("name");
			System.out.println(list2.getUnitName());
		}
		t.commit();
		session.close();
		return l;
	}

	public void updateProduct(Product p) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(p.getUnitId());
		Query q = session.createQuery("update com.app.pojo.Product set  unitName=:unitName  where unitId=:unitId");
		q.setParameter("unitId", p.getUnitId());
		q.setParameter("unitName", p.getUnitName());

		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();
	}

	@Override
	public Integer[] ids() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in delete dao impl");
		String hql = "select unitId from com.app.pojo.Product";
		Query q = ses.createQuery(hql);

		List l1 = q.list();
		Integer[] arr = (Integer[]) ((List<Product>) l1).toArray(new Integer[l1.size()]);

		System.out.println(l1);
		System.out.println(arr);
		return arr;
	}

	@Override
	public Integer getId() {

		return null;
	}

	/* CUSTOMER SEARCH */

	@Override
	public String[] getIdc() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select unitName from com.app.pojo.Product";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<Product>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<Product> getWholeProduct() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole vendor dao impl");
		String hql = "from com.app.pojo.Product";
		Query q = ses.createQuery(hql);
		List<Product> l = q.list();
		return l;
	}

	@Override
	public List<Product> getWholeNamesValues(String unitName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on unitName");
		System.out.println(unitName);
		String hql = "from com.app.pojo.Product where unitName=:unitName";
		Query q = ses.createQuery(hql);
		q.setParameter("unitName", unitName);
		@SuppressWarnings("unchecked")
		List<Product> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularProduct(Product p) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.Product where unitName=:unitName";
		Query q = ses.createQuery(hql);
		q.setParameter("unitName", p.getUnitName());
		List<Product> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	public void deleteUoM(Product p) {
		sessionfactory.getCurrentSession().createQuery("delete from com.app.pojo.Product where unitId=" + p.getUnitId())
				.executeUpdate();

	}

	@Override
	public Integer getMaxIdOfUOM() {

		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(unitId) from com.app.pojo.Product";
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
	public boolean checkBoolean(RegisterPojo register) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from com.app.pojo.RegisterPojo where username=:username and password=:password";
		Query q = ses.createQuery(hql);
		q.setParameter("username", register.getUsername());
		q.setParameter("password", register.getPassword());

		List l = q.list();

		boolean b;

		if (l.isEmpty()) {
			b = false;
		} else {
			b = true;
		}
		tx.commit();
		ses.close();
		return b;
	}

}
