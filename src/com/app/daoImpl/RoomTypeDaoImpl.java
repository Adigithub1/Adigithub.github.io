package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.RoomTypeDao;
import com.app.pojo.RoomTypePojo;
@Repository("roomypeDao")
public class RoomTypeDaoImpl implements RoomTypeDao{

	
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List GetRoomDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.RoomTypePojo";
		Query q = ses.createQuery(hql);
		List li=q.list();
		System.out.println(li);
		tx.commit();
		ses.close();
		
		return li;
	}

	@Override
	public void saveRoomDetails(RoomTypePojo roomtype) {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		sessionfactory.getCurrentSession().save(roomtype);
		System.out.println("ofter saving roomDetails");
		tx.commit();
		ses.close();
		
	}

	@Override
	public List<RoomTypePojo> getRoomDetails(int id) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.RoomTypePojo where id=:id";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);
		List<RoomTypePojo> li=q.list();
		System.out.println(li);
		tx.commit();
		ses.close();
		return li;
	}

	@Override
	public void DeleteRoom(RoomTypePojo roomtype) {
		sessionfactory.getCurrentSession().createQuery("delete from com.app.pojo.RoomTypePojo where id="+roomtype.getId()).executeUpdate();
		
	}

	@Override
	public void UpdateRooms(RoomTypePojo roomtype) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("before updating");
		
		Query q = session
				.createQuery("update com.app.pojo.RoomTypePojo set roomtypename=:roomtypename,remarks=:remarks where id=:id");
		
		q.setParameter("id",roomtype.getId());
		q.setParameter("roomtypename",roomtype.getRoomtypename());
		q.setParameter("remarks",roomtype.getRemarks());
		int ex = q.executeUpdate();
		System.out.println("updated" + ex);
		t.commit();
		session.close();
		
	}

	@Override
	public String[] getRoomTypes() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select roomtypename from com.app.pojo.RoomTypePojo";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		String[] arr1 = (String[]) ((List<RoomTypePojo>) l).toArray(new String[l.size()]);
        System.out.println(arr1);
        System.out.println("im in dao impl");

		return arr1;
	}

	@Override
	public List<RoomTypePojo> GetParticularRoomDetails(String roomtypename) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.RoomTypePojo where roomtypename=:roomtypename";
		
		Query q = ses.createQuery(hql);
		
		q.setParameter("roomtypename",roomtypename);
		
		List<RoomTypePojo> li=q.list();
		System.out.println("am in dao impl");
		System.out.println(li);
		tx.commit();
		ses.close();
		return li;
	}
}
