package com.app.daoImpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.ProductDetailsDAO;
import com.app.pojo.Product;
import com.app.pojo.ProductDetail;
@Repository("productDetailsDAO")
public class ProductDetailsDAOImpl implements ProductDetailsDAO {

	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public boolean saveProductDetail(ProductDetail pd) 
	{
		System.out.println("we are in saveProductDetail");
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.ProductDetail where  proName=:proName");
		q.setParameter("proName", pd.getProName());
		List<Product> l = q.list();
		System.out.println(l);
		if(l.isEmpty()){
			pd.setAvailQuty(0);
			pd.setUtRate(0);
			pd.setMrp(0);
			sessionfactory.getCurrentSession().save(pd);
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
	public List<ProductDetail> listProductDetail() 
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.ProductDetail");
		@SuppressWarnings("unchecked")
		List<ProductDetail> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List<ProductDetail> getProductDetail(int proCode) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from com.app.pojo.ProductDetail where proCode=:proCode");
		q.setParameter("proCode", proCode);
		@SuppressWarnings("rawtypes")
		List<ProductDetail> l = q.list();
		System.out.println("retrieve particular id");
		System.out.println(l);
		for (ProductDetail list2 : l)
		{
			System.out.println("am in update retrive dao impl");
			System.out.println("name");
			System.out.println(list2.getProName());
		}
		t.commit();
		session.close();
		return l;
		}

	

	@Override
	public void updateProductDetail(ProductDetail pd) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(pd.getProCode());
		Query q = session
				.createQuery("update com.app.pojo.ProductDetail set  proName=:proName,proType=:proType,proUnit=:proUnit,packingType=:packingType,vatTax=:vatTax,manufacBy=:manufacBy  where proCode=:proCode");
		q.setParameter("proCode", pd.getProCode());
		q.setParameter("proName", pd.getProName());
		q.setParameter("proType", pd.getProType());
		q.setParameter("proUnit", pd.getProUnit());
		q.setParameter("packingType", pd.getPackingType());
		q.setParameter("vatTax", pd.getVatTax());
		q.setParameter("manufacBy", pd.getManufacBy());
		
		
		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();

	}

	@Override
	public Integer[] idsProductDetail() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in delete dao impl");
		String hql = "select proCode from com.app.pojo.ProductDetail";
		Query q = ses.createQuery(hql);

		List l1 = q.list();
		Integer[] arr = (Integer[]) ((List<ProductDetail>) l1).toArray(new Integer[l1.size()]);

		System.out.println(l1);
		System.out.println(arr);
		return arr;
	}

	@Override
	public Integer getIdProductDetail() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String[] getIdcProductDetail() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select proName from com.app.pojo.ProductDetail";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<ProductDetail>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<ProductDetail> getWholeProductDetail() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole vendor dao impl");
		String hql = "from com.app.pojo.ProductDetail";
		Query q = ses.createQuery(hql);
		List<ProductDetail> l = q.list();
		return l;
	}

	@Override
	public List<ProductDetail> getWholeProductDetailNames(String proName) {

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on proName");
		System.out.println(proName);
		String hql = "from com.app.pojo.ProductDetail where proName=:proName";
		Query q = ses.createQuery(hql);
		System.out.println(proName);
		System.out.println(proName);
		System.out.println(proName);
		System.out.println(proName);
		
		q.setParameter("proName", proName);
		@SuppressWarnings("unchecked")
		List<ProductDetail> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularProductDetail(ProductDetail pd) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.ProductDetail where proName=:proName";
		Query q = ses.createQuery(hql);
		q.setParameter("proName", pd.getProName());
		List<ProductDetail> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public Integer getMaxIdOfProductDetails() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(proCode) from com.app.pojo.ProductDetail";
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
	public void deleteProductDetail(ProductDetail pd) 
	{
		sessionfactory.getCurrentSession()
		.createQuery("delete from com.app.pojo.ProductDetail where proCode=" + pd.getProCode()).executeUpdate();

	}

	@Override
	public String[] listMyform() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select DISTINCT(name) from com.app.pojo.ProductType";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		String[] arr1 = (String[]) ((List<ProductDetail>) l).toArray(new String[l.size()]);
		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public String[] listMyform2() 
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql1 =  "select  DISTINCT(packName) from com.app.pojo.Packing";
		Query q2 = ses.createQuery(hql1);
		@SuppressWarnings("rawtypes")
		List l2 = q2.list();
		System.out.println(l2);
		@SuppressWarnings("unchecked")
		String[] arr2 = (String[]) ((List<ProductDetail>) l2).toArray(new String[l2.size()]);
		System.out.println(l2);
		System.out.println(arr2);
		System.out.println("am in for each before dao impl");
		System.out.println(l2);
		return arr2;
	}

	@Override
	public String[] listMyform3() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql2 ="select  DISTINCT(unitName) from com.app.pojo.Product";
		Query q3 = ses.createQuery(hql2);
		@SuppressWarnings("rawtypes")
		List l3 = q3.list();
		System.out.println(l3);
		@SuppressWarnings("unchecked")		
		String[] arr3 = (String[]) ((List<ProductDetail>) l3).toArray(new String[l3.size()]);
		System.out.println(l3);
		System.out.println(arr3);
		System.out.println("am in for each before dao impl");

		System.out.println(l3);

		return arr3;
	}

}
