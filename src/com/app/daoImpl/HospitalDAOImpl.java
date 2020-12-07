package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.HospitalDAO;
import com.app.pojo.Hospital;

@Repository("hospitalDAO")
public class HospitalDAOImpl implements HospitalDAO
{
@Autowired
private SessionFactory sessionfactory;
	@Override
	public void saveDetail(Hospital h) 
	{
		System.out.println("we are in saveProductDetail");
		sessionfactory.getCurrentSession().save(h);

	}

	@Override
	public List<Hospital>  listDetail()
	{
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		String hql="from com.app.pojo.Hospital";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Hospital> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List<Hospital> getDetail(int hostId) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from  com.app.pojo.Hospital  where hostId=:hostId");
		q.setParameter("hostId", hostId);
		@SuppressWarnings("rawtypes")
		List<Hospital> l = q.list();
		System.out.println("retrieve particular id");
		System.out.println(l);
		for (Hospital list2 : l)
		{
			System.out.println("am in update retrive dao impl");
			System.out.println("name");
			System.out.println(list2.getHosptName());
		}
		t.commit();
		session.close();
		return l;
	}

	@Override
	public void updateDetail(Hospital h) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(h.getHostId());
		Query q = session
				.createQuery("update com.app.pojo.Hospital set  hosptName=:hosptName,establish=:establish,pincode=:pincode,state=:state,email=:email,city=:city,phNum1=:phNum1,phNum2=:phNum2,phNum3=:phNum3,phNum4=:phNum4,numBeds=:numBeds,director=:director,address1=:address1,address2=:address2,country=:country,fax=:fax,regFee=:regFee,contactPerson=:contactPerson,contactPhNum=:contactPhNum,admin=:admin  where hostId=:hostId");
		q.setParameter("hostId", h.getHostId());
		q.setParameter("hosptName", h.getHosptName());
		q.setParameter("establish", h.getEstablish());
		q.setParameter("state", h.getState());
		q.setParameter("city", h.getCity());
		q.setParameter("pincode", h.getPincode());
		q.setParameter("email", h.getEmail());
		q.setParameter("phNum1", h.getPhNum1());
		q.setParameter("phNum2", h.getPhNum2());
		q.setParameter("phNum3", h.getPhNum3());
		q.setParameter("phNum4", h.getPhNum4());
		q.setParameter("numBeds", h.getNumBeds());
		q.setParameter("director", h.getDirector());
		q.setParameter("address1", h.getAddress1());
		q.setParameter("address2", h.getAddress2());
		q.setParameter("country", h.getCountry());
		q.setParameter("fax", h.getFax());
		q.setParameter("regFee", h.getRegFee());
		q.setParameter("contactPerson", h.getContactPerson());
		q.setParameter("contactPhNum", h.getContactPhNum());
		q.setParameter("admin", h.getAdmin());
		
		
		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();

	}

	@Override
	public Integer[] idsDetail() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in delete dao impl");
		String hql = "select hostId from com.app.pojo.Hospital";
		Query q = ses.createQuery(hql);

		List l1 = q.list();
		Integer[] arr = (Integer[]) ((List<Hospital>) l1).toArray(new Integer[l1.size()]);

		System.out.println(l1);
		System.out.println(arr);
		return arr;
	}

	@Override
	public Integer getIdDetail() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String[] getIdcDetail() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select hosptName from com.app.pojo.Hospital";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<Hospital>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<Hospital> getWholeDetail() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole vendor dao impl");
		String hql = "from com.app.pojo.Laboratory";
		Query q = ses.createQuery(hql);
		List<Hospital> l = q.list();
		return l;
	}

	@Override
	public List<Hospital> getWholeDetailNames(String hosptName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on hosptName");
		System.out.println(hosptName);
		String hql = "from com.app.pojo.Hospital where hosptName=:hosptName";
		Query q = ses.createQuery(hql);
		q.setParameter("hosptName", hosptName);
		@SuppressWarnings("unchecked")
		List<Hospital> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularDetail(Hospital h) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.Hospital where hosptName=:hosptName";
		Query q = ses.createQuery(hql);
		q.setParameter("hosptName", h.getHosptName());
		List<Hospital> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public Integer getMaxIdOfDetails() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(hostId) from com.app.pojo.Hospital";
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
