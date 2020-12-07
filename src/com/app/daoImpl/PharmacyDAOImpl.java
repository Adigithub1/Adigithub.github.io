package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.PharmacyDAO;
import com.app.pojo.Pharmacy;
@Repository("pharmacyDAO")
public class PharmacyDAOImpl implements PharmacyDAO 
{
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public void savePharmacy(Pharmacy ph) {
		System.out.println("we are in saveProductDetail");
		sessionfactory.getCurrentSession().save(ph);


	}

	@Override
	public List<Pharmacy> listPharmacy() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		String hql="from com.app.pojo.Pharmacy";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Pharmacy> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List<Pharmacy> getPharmacy(int pharId) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from  com.app.pojo.Pharmacy  where pharId=:pharId");
		q.setParameter("pharId", pharId);
		@SuppressWarnings("rawtypes")
		List<Pharmacy> l = q.list();
		System.out.println("retrieve particular id");
		System.out.println(l);
		for (Pharmacy list2 : l)
		{
			System.out.println("am in update retrive dao impl");
			System.out.println("name");
			System.out.println(list2.getPharName());
		}
		t.commit();
		session.close();
		return l;
	}

	@Override
	public void updatePharmacy(Pharmacy ph) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(ph.getPharId());
		Query q = session
				.createQuery("update com.app.pojo.Pharmacy set  pharName=:pharName,pharNum=:pharNum,establish=:establish,state=:state,city=:city,email=:email,pincode=:pincode,phNum1=:phNum1,phNum2=:phNum2,dlNum=:dlNum,director=:director,address1=:address1,address2=:address2,country=:country,fax=:fax,tinNum=:tinNum,contactPerson=:contactPerson,contactPhNum=:contactPhNum,promoter=:promoter  where pharId=:pharId");
		q.setParameter("pharId", ph.getPharId());
		q.setParameter("pharName", ph.getPharName());
		q.setParameter("pharNum", ph.getPharNum());
		q.setParameter("establish", ph.getEstablish());
		q.setParameter("state", ph.getState());
		q.setParameter("email", ph.getEmail());
		q.setParameter("phNum1", ph.getPhNum1());
		q.setParameter("phNum2", ph.getPhNum2());
		q.setParameter("dlNum", ph.getDlNum());
		q.setParameter("city", ph.getCity());
		q.setParameter("city", ph.getCity());
		q.setParameter("pincode", ph.getPincode());
		q.setParameter("director", ph.getDirector());
		q.setParameter("address1", ph.getAddress1());
		q.setParameter("address2", ph.getAddress2());
		q.setParameter("country", ph.getCountry());
		q.setParameter("fax", ph.getFax());
		q.setParameter("tinNum",ph.getTinNum());
		q.setParameter("contactPerson", ph.getContactPerson());
		q.setParameter("contactPhNum", ph.getContactPhNum());
		q.setParameter("promoter", ph.getPromoter());
		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();

	}

	@Override
	public Integer[] idsPharmacy() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in delete dao impl");
		String hql = "select pharId from com.app.pojo.Pharmacy";
		Query q = ses.createQuery(hql);

		List l1 = q.list();
		Integer[] arr = (Integer[]) ((List<Pharmacy>) l1).toArray(new Integer[l1.size()]);

		System.out.println(l1);
		System.out.println(arr);
		return arr;
	}

	@Override
	public Integer getIdPharmacy() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String[] getIdcPharmacy() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select pharName from com.app.pojo.Pharmacy";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<Pharmacy>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<Pharmacy> getWholePharmacy() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole vendor dao impl");
		String hql = "from com.app.pojo.Pharmacy";
		Query q = ses.createQuery(hql);
		List<Pharmacy> l = q.list();
		return l;
	}

	@Override
	public List<Pharmacy> getWholePharmacyNames(String pharName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on pharName");
		System.out.println(pharName);
		String hql = "from com.app.pojo.Pharmacy where pharName=:pharName";
		Query q = ses.createQuery(hql);
		q.setParameter("pharName", pharName);
		@SuppressWarnings("unchecked")
		List<Pharmacy> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularPharmacy(Pharmacy ph) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.Pharmacy where pharName=:pharName";
		Query q = ses.createQuery(hql);
		q.setParameter("pharName", ph.getPharName());
		List<Pharmacy> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public Integer getMaxIdOfPharmacy() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(pharId) from com.app.pojo.Pharmacy";
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

}
