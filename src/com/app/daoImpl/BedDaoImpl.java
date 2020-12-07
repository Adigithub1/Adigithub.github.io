package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.BedDao;
import com.app.pojo.Floors;
import com.app.pojo.RoomPojo;
import com.app.pojo.RoomSubTotalPojo;
import com.app.pojo.RoomTarrif;

@Repository("bedDao")
public class BedDaoImpl implements BedDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public String[] getFloors() {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in id retrive  dao impl");
		String hql = "select DISTINCT locations from com.app.pojo.RoomTarrif";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		String[] arr1 = (String[]) ((List<Floors>) l).toArray(new String[l.size()]);

		tx.commit();
		ses.close();

		return arr1;

	}

	@Override
	public void saveRoomDetails(RoomPojo room) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		ses.save(room);

		tx.commit();
		ses.close();

	}

	@Override
	public String[] getRoomNos() {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select roomno from com.app.pojo.RoomTarrif";
		Query q = ses.createQuery(hql);

		List li = q.list();
		String[] arr1 = (String[]) ((List<RoomTarrif>) li).toArray(new String[li.size()]);
		System.out.println(arr1);
		tx.commit();
		ses.close();

		return arr1;
	}

	@Override
	public String[] getParticularRooms(RoomPojo room) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select roomno from com.app.pojo.RoomTarrif where locations=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", room.getFloorname());
		List li = q.list();
		String[] arr1 = (String[]) ((List<RoomTarrif>) li).toArray(new String[li.size()]);
		System.out.println(arr1);
		tx.commit();
		ses.close();

		return arr1;
	}

	@Override
	public List getRoomDetails(String floorname, String roomno) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.RoomTarrif where locations=:floorname and roomno=:roomno";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", floorname);
		q.setParameter("roomno", roomno);
		List li = q.list();
		System.out.println(li);
		tx.commit();
		ses.close();
		return li;
	}

	@Override
	public void savesubtotal(RoomPojo room) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		try {
			String hql = "select max(id) from com.app.pojo.RoomPojo";
			Query q = ses.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql20 = "from com.app.pojo.RoomTarrif where locations=:floorname and roomno=:roomno";
		Query q20 = ses.createQuery(hql20);
		q20.setParameter("floorname", room.getFloorname());
		q20.setParameter("roomno", room.getRoomno());
		List<RoomTarrif> li20 = q20.list();
		int noofBeds = 0;
		for (RoomTarrif r : li20) {
			noofBeds = Integer.parseInt(r.getNoofbeds());
		}
		String hql12 = "from RoomSubTotalPojo where roomno=:roomno1";
		Query q12 = ses.createQuery(hql12);
		q12.setParameter("roomno1", room.getRoomno());
		List<RoomSubTotalPojo> l12 = q12.list();
		int count = 0;

		for (RoomSubTotalPojo rtp : l12) {
			count = count + 1;
		}
		String hql1 = "from RoomSubTotalPojo where bedNo=:roomno";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("roomno", room.getBedNo());
		List l1 = q1.list();
		if (l1.isEmpty() && count < noofBeds) {
			RoomSubTotalPojo rt = new RoomSubTotalPojo();
			rt.setFloorname(room.getFloorname());
			rt.setRoomno(room.getRoomno());
			rt.setBedNo(room.getBedNo());
			rt.setBedType(room.getBedType());
			rt.setRemarks(room.getRemarks());
			rt.setRoomTotalPojoId(id);
			ses.save(rt);
		}
		tx.commit();
		ses.close();
	}

	@Override
	public List getProductDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		try {
			String hql = "select max(id) from com.app.pojo.RoomPojo";
			Query q = ses.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		RoomSubTotalPojo rt = new RoomSubTotalPojo();

		String hql1 = "from com.app.pojo.RoomSubTotalPojo where roomTotalPojoId=:roomTotalPojoId";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("roomTotalPojoId", id);
		List l1 = q1.list();
		tx.commit();
		ses.close();
		return l1;
	}

	@Override
	public void savetotalValues(RoomPojo room) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		ses.save(room);
		tx.commit();
		ses.close();

	}

	@Override
	public List getGroundFlourDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();

		String hql = "from com.app.pojo.RoomSubTotalPojo where floorname=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", "groundflour");
		List l = q.list();

		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getFirstFlourdetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();

		String hql = "from com.app.pojo.RoomSubTotalPojo where floorname=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", "firstfloor");
		List l = q.list();

		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getThirdFlourDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();

		String hql = "from com.app.pojo.RoomSubTotalPojo where floorname=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", "ThirdFlour");
		List l = q.list();

		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getSecondFlourDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();

		String hql = "from com.app.pojo.RoomSubTotalPojo where floorname=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", "secondfloor");
		List l = q.list();

		tx.commit();
		ses.close();
		return l;

	}

	@Override
	public List getFourthDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();

		String hql = "from com.app.pojo.RoomSubTotalPojo where floorname=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", "fourthflour");
		List l = q.list();

		tx.commit();
		ses.close();
		return l;

	}

	@Override
	public List getFifthFlourDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();

		String hql = "from com.app.pojo.RoomSubTotalPojo where floorname=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", "fifthflour");
		List l = q.list();

		tx.commit();
		ses.close();
		return l;

	}

	@Override
	public List getSixthFlourDetials() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();

		String hql = "from com.app.pojo.RoomSubTotalPojo where floorname=:floorname";
		Query q = ses.createQuery(hql);
		q.setParameter("floorname", "sixthflour");
		List l = q.list();

		tx.commit();
		ses.close();
		return l;

	}

	@Override
	public void bedDetailsCancel() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		try {
			String hql = "select max(id) from com.app.pojo.RoomPojo";
			Query q = ses.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;

			System.out.println(id);

		} catch (Exception e) {
			id = 1;
			System.out.println(id);
		}

		String hql2 = "delete from com.app.pojo.RoomSubTotalPojo where roomTotalPojoId=:id";
		Query q2 = ses.createQuery(hql2);
		q2.setParameter("id", id);
		int res = q2.executeUpdate();

		tx.commit();
		ses.close();

	}

}
