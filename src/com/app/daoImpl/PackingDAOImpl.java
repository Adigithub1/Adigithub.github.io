package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojo.Packing;
import com.app.pojo.Product;
import com.app.dao.PackingDAO;
@Repository("packingDAO")
public class PackingDAOImpl implements PackingDAO
{
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public boolean savePacking(Packing pac)
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.Packing where  packName=:packName");
		q.setParameter("packName", pac.getPackName());
		List<Product> l = q.list();
		System.out.println(l);
		if(l.isEmpty()){
			sessionfactory.getCurrentSession().save(pac);
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
	public List<Packing> listPacking()
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.Packing");
		@SuppressWarnings("unchecked")
		List<Packing> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
		
	}

	@Override
	public List<Packing> getPacking(int packId)
	{Session session = this.sessionfactory.openSession();
	Transaction t = session.beginTransaction();
	Query q = session.createQuery("from com.app.pojo.Packing where packId=:packId");
	q.setParameter("packId", packId);
	@SuppressWarnings("rawtypes")
	List<Packing> l = q.list();
	System.out.println("retrieve particular id");
	System.out.println(l);
	for (Packing list2 : l)
	{
		System.out.println("am in update retrive dao impl");
		System.out.println("name");
		System.out.println(list2.getPackName());
	}
	t.commit();
	session.close();
	return l;
	}

	@Override
	public void updatePacking(Packing pac) 
	{
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(pac.getPackId());
		Query q = session
				.createQuery("update com.app.pojo.Packing set  packName=:packName  where packId=:packId");
		q.setParameter("packId", pac.getPackId());
		q.setParameter("packName", pac.getPackName());
		
		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();

	}

	@Override
	public Integer[] ids4()
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in delete dao impl");
		String hql = "select packId from com.app.pojo.Packing";
		Query q = ses.createQuery(hql);

		List l1 = q.list();
		Integer[] arr = (Integer[]) ((List<Packing>) l1).toArray(new Integer[l1.size()]);

		System.out.println(l1);
		System.out.println(arr);
		return arr;
	}

	@Override
	public Integer getId4()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String[] getIdc4()
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select packName from com.app.pojo.Packing";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<Packing>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<Packing> getWholePacking()
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole vendor dao impl");
		String hql = "from com.app.pojo.Packing";
		Query q = ses.createQuery(hql);
		List<Packing> l = q.list();
		return l;
	}

	@Override
	public List<Packing> getWholePackingsValues(String packName) 
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on unitName");
		System.out.println(packName);
		String hql = "from com.app.pojo.Packing where packName=:packName";
		Query q = ses.createQuery(hql);
		q.setParameter("packName", packName);
		@SuppressWarnings("unchecked")
		List<Packing> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularPackingProduct(Packing pac)
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.Packing where packName=:packName";
		Query q = ses.createQuery(hql);
		q.setParameter("packName", pac.getPackName());
		List<Packing> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public Integer getMaxIdOfPacking() 
	{
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(packId) from com.app.pojo.Packing";
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
	public void deletePacking(Packing pac)
	{
		sessionfactory.getCurrentSession()
		.createQuery("delete from com.app.pojo.Packing where packId=" + pac.getPackId()).executeUpdate();
		
	}

}
