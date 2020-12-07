package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.TarrifDao;
import com.app.pojo.Floors;
import com.app.pojo.Locationpojo1;
import com.app.pojo.PurchaseInvoiceePojo;
import com.app.pojo.RoomTarrif;
import com.app.pojo.RoomTypePojo;

@Repository("tarrifDao")
public class TarrifdaoImpl implements TarrifDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List GetDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.RoomTarrif");
		List<RoomTarrif> li = q.list();
		System.out.println(li);
		tx.commit();
		ses.close();
		return li;
	}

	@Override
	public void SaveTarrifDetails(RoomTarrif tarrif) {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		sessionfactory.getCurrentSession().save(tarrif);
		tx.commit();
		ses.close();
	}

	@Override
	public List<RoomTarrif> GetTarrifDetails(int tno) {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.RoomTarrif where tno=:tno";
		Query q = ses.createQuery(hql);
		q.setParameter("tno", tno);
		List<RoomTarrif> li = q.list();

		System.out.println(li);
		tx.commit();
		ses.close();
		return li;
	}

	@Override
	public void DeleteRoom(RoomTarrif tarrif) {
		// TODO Auto-generated method stub
		sessionfactory.getCurrentSession()
				.createQuery("delete from com.app.pojo.RoomTarrif where tno=" + tarrif.getTno()).executeUpdate();

	}

	@Override
	public void UpdateRooms(RoomTarrif tarrif) {
		// TODO Auto-generated method stub

		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("before updating");
		Query q = session.createQuery(
				"update com.app.pojo.RoomTarrif set locations=:locations,roomno=:roomno,noofbeds=:noofbeds,rmtype=:rmtype,bcharges=:bcharges,dmocharges=:dmocharges,nurcharges=:nurcharges,dcharges=:dcharges where tno=:tno");

		q.setParameter("tno", tarrif.getTno());
		q.setParameter("locations", tarrif.getLocations());
		q.setParameter("roomno", tarrif.getRoomno());
		q.setParameter("noofbeds", tarrif.getNoofbeds());

		q.setParameter("rmtype", tarrif.getRmtype());
		q.setParameter("bcharges", tarrif.getBcharges());
		q.setParameter("dmocharges", tarrif.getDmocharges());
		q.setParameter("nurcharges", tarrif.getNurcharges());
		q.setParameter("dcharges", tarrif.getDcharges());
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();
	}

	@Override
	public String[] getFloors() {
		// TODO Auto-generated method stub

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select floorName from com.app.pojo.Locationpojo1";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		String[] arr1 = (String[]) ((List<Locationpojo1>) l).toArray(new String[l.size()]);

		tx.commit();
		ses.close();

		return arr1;
	}

	@Override
	public String[] getRoomnosList() {
		// TODO Auto-generated method stub

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = " select roomno from com.app.pojo.RoomTarrif";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		String[] arr1 = (String[]) ((List) l).toArray(new String[l.size()]);

		tx.commit();
		ses.close();

		return arr1;

	}

	@Override
	public List<RoomTarrif> getParticularRoomDetail(RoomTarrif tarrif) {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.RoomTarrif where roomno=:roomno";
		Query q = ses.createQuery(hql);
		q.setParameter("roomno", tarrif.getRoomno());
		List<RoomTarrif> l = q.list();
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public String[] getRoomTypedetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "select roomtypename from com.app.pojo.RoomTypePojo";
		Query q = ses.createQuery(hql);

		List l = q.list();
		String[] arr = (String[]) ((List<RoomTypePojo>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;

	}

}
