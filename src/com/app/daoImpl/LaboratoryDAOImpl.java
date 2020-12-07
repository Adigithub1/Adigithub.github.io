package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.LaboratoryDAO;
import com.app.pojo.Laboratory;
@Repository("laboratoryDAO")
public class LaboratoryDAOImpl implements LaboratoryDAO 
{
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public void saveLaboratory(Laboratory lab) 
	{	
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		ses.save(lab);
		tx.commit();
		ses.close();
	
	}

	@Override
	public List<Laboratory> listLaboratory() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		String hql="from com.app.pojo.Laboratory";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Laboratory> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List<Laboratory> getLaboratory(int labId) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from  com.app.pojo.Laboratory  where labId=:labId");
		q.setParameter("labId", labId);
		@SuppressWarnings("rawtypes")
		List<Laboratory> l = q.list();
		System.out.println("retrieve particular id");
		System.out.println(l);
		for (Laboratory list2 : l)
		{
			System.out.println("am in update retrive dao impl");
			System.out.println("name");
			System.out.println(list2.getLabName());
		}
		t.commit();
		session.close();
		return l;
	}

	@Override
	public void updateLaboratory(Laboratory lab) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(lab.getLabId());
		Query q = session
				.createQuery("update com.app.pojo.Laboratory set labName=:labName,labNum=:labNum,establish=:establish,city=:city,state=:state,email=:email,phNum1=:phNum1,phNum2=:phNum2,phNum3=:phNum3,phNum4=:phNum4,director=:director,address1=:address1,address2=:address2,pincode=:pincode,country=:country,fax=:fax,contactPerson=:contactPerson,contactPhNum=:contactPhNum,promoter=:promoter  where labId=:labId");
		q.setParameter("labId", lab.getLabId());
		q.setParameter("labName", lab.getLabName());
		q.setParameter("labNum", lab.getLabNum());
		q.setParameter("establish", lab.getEstablish());
		q.setParameter("state", lab.getState());
		q.setParameter("email", lab.getEmail());
		q.setParameter("city", lab.getCity());
		q.setParameter("phNum1", lab.getPhNum1());
		q.setParameter("phNum2", lab.getPhNum2());
		q.setParameter("phNum3", lab.getPhNum3());
		q.setParameter("phNum4", lab.getPhNum4());
		q.setParameter("pincode", lab.getPincode());
		q.setParameter("director", lab.getDirector());
		q.setParameter("address1", lab.getAddress1());
		q.setParameter("address2", lab.getAddress2());
		q.setParameter("country", lab.getCountry());
		q.setParameter("fax", lab.getFax());
		q.setParameter("contactPerson", lab.getContactPerson());
		q.setParameter("contactPhNum", lab.getContactPhNum());
		q.setParameter("promoter", lab.getPromoter());
		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();
	}

	@Override
	public Integer[] idsLaboratory() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in delete dao impl");
		String hql = "select labId from com.app.pojo.Laboratory";
		Query q = ses.createQuery(hql);

		List l1 = q.list();
		Integer[] arr = (Integer[]) ((List<Laboratory>) l1).toArray(new Integer[l1.size()]);

		System.out.println(l1);
		System.out.println(arr);
		return arr;
	}

	@Override
	public Integer getIdLaboratory() 
	{
		return null;
	}

	@Override
	public String[] getIdcLaboratory() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select labName from com.app.pojo.Laboratory";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<Laboratory>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<Laboratory> getWholeLaboratory() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole vendor dao impl");
		String hql = "from com.app.pojo.Laboratory";
		Query q = ses.createQuery(hql);
		List<Laboratory> l = q.list();
		return l;
	}

	@Override
	public List<Laboratory> getWholeLaboratoryNames(String labName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on labName");
		System.out.println(labName);
		String hql = "from com.app.pojo.Laboratory where labName=:labName";
		Query q = ses.createQuery(hql);
		q.setParameter("labName", labName);
		@SuppressWarnings("unchecked")
		List<Laboratory> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularLaboratory(Laboratory lab) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.Laboratory where labName=:labName";
		Query q = ses.createQuery(hql);
		q.setParameter("labName", lab.getLabName());
		List<Laboratory> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public Integer getMaxIdOfLaboratory() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(labId) from com.app.pojo.Laboratory";
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
