package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.daointerface;
import com.app.pojo.Beddata;
import com.app.pojo.Doctordetail;
import com.app.pojo.Patientdetail;
import com.app.pojo.ProductType99;
import com.app.pojo.RoomSubTotalPojo;
import com.app.pojo.RoomTarrif;
import com.app.pojo.entry;

@Repository("daointerface")
public class daoimpl implements daointerface {
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public void saveinp(entry inp) {
		// TODO Auto-generated method stub
		sessionfactory.getCurrentSession().save(inp);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<entry> getuser() {

		// TODO Auto-generated method stub

		List<entry> userlist = sessionfactory.getCurrentSession().createCriteria(entry.class).list();
		return userlist;

	}

	@Override
	public List<entry> patientservice(String patientname) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " from entry WHERE patientname=:patientname";
		Query query = session.createQuery(hql);

		query.setParameter("patientname", patientname);
		List<entry> l2 = query.list();
		return l2;

	}

	@Override
	public List<entry> patientmrno1(String patientmrno) {
		Session session = sessionfactory.getCurrentSession();
		String hql = "from entry WHERE patientmrno=:patientmrno";
		Query query = session.createQuery(hql);
		query.setParameter("patientmrno", patientmrno);

		List l2 = query.list();
		return l2;
	}

	@Override
	public void updatepatientupdate(entry inp) {
		// TODO Auto-generated method stub
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println(inp.getPatientname());
		String s1 = "UPDATE entry SET  patientmrno=:n,patientname=:s,admitdateortime=:d,doctorname=:cd,diet=:di,modeofpayment=:mp,bedno=:bn,roomno=:rn,roomrent=:rr,admisssioncharge=:ac,concession=:c,medicalrecordscharge=:mrc,dateofadvance=:doa,modeofpayment1=:mo1,advancepaid=:ap,advanceinwords=:aiw,allotedby=:ab  WHERE id=:id";
		Query q = session.createQuery(s1);
        System.out.println(inp.getAdmitdateortime());
		q.setParameter("n", inp.getPatientmrno());
		q.setParameter("s", inp.getPatientname());
		q.setParameter("d", inp.getAdmitdateortime());
		q.setParameter("cd", inp.getDoctorname());
		q.setParameter("di", inp.getDiet());
		q.setParameter("mp", inp.getModeofpayment());
		q.setParameter("bn", inp.getBedno());
		q.setParameter("rn", inp.getRoomno());
		q.setParameter("rr", inp.getRoomrent());
		q.setParameter("ac", inp.getAdmisssioncharge());
		q.setParameter("c", inp.getConcession());
		q.setParameter("mrc", inp.getMedicalrecordscharge());
		q.setParameter("doa", inp.getDateofadvance());
		q.setParameter("mo1", inp.getModeofpayment1());
		q.setParameter("ap", inp.getAdvancepaid());
		q.setParameter("aiw", inp.getAdvanceinwords());
		q.setParameter("ab", inp.getAllotedby());

		q.setParameter("id", inp.getId());
		int ex = q.executeUpdate();
		System.out.println(inp.getId());
		System.out.println("updated" + ex);
		System.out.println(ex);
		System.out.println(ex);
		System.out.println(ex);
		System.out.println(ex);
		System.out.println(ex);
		System.out.println(ex);

		System.out.println(ex);
		System.out.println(ex);
		System.out.println(ex);
		System.out.println(ex);

		t.commit();
		session.close();
	}

	@Override
	public List<Patientdetail> getmrno() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = "From Patientdetail";
		Query query = session.createQuery(hql);

		List l2 = query.list();
		return l2;
	}

	@Override
	public List<Doctordetail> getdoctors() {

		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Doctordetail";
		Query query = session.createQuery(hql);

		List<Doctordetail> l2 = query.list();
		return l2;
	}

	@Override
	public List<Patientdetail> getnames() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Patientdetail";
		Query query = session.createQuery(hql);

		List<Patientdetail> l2 = query.list();
		return l2;
	}

	@Override
	public List<Patientdetail> getdate() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Patientdetail";
		Query query = session.createQuery(hql);

		List<Patientdetail> l2 = query.list();
		return l2;
	}

	@Override
	public List<Beddata> getbedno() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  com.app.pojo.RoomSubTotalPojo";
		Query query = session.createQuery(hql);
		List<RoomSubTotalPojo> l2 = query.list();
		return null;
	}

	@Override
	public List<Beddata> getroomno() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Beddata";
		Query query = session.createQuery(hql);

		List<Beddata> l2 = query.list();
		return l2;
	}

	@Override
	public List<Beddata> getroomrent() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Beddata";
		Query query = session.createQuery(hql);

		List<Beddata> l2 = query.list();
		return l2;
	}

	// for getting all data from database
	@Override
	public List<entry> getinpt() {
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  entry";
		Query query = session.createQuery(hql);
		List<entry> l2 = query.list();
		return l2;
	}

	@Override
	public List<Patientdetail> getallotedby() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Patientdetail";
		Query query = session.createQuery(hql);

		List<Patientdetail> l2 = query.list();
		return l2;
	}

	@Override
	public List getDetails(int id) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();

		String hql = "from com.app.pojo.entry where id=:id";
		Query q = session.createQuery(hql);
		q.setParameter("id", id);
		List l = q.list();
		t.commit();
		session.close();

		return l;
	}

	@Override
	public List<Patientdetail> getDetailspatient(String patientmrno) {
		System.out.println(patientmrno);
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Patientdetail WHERE patientmrno=:patientmrno";
		Query query = session.createQuery(hql);
		query.setParameter("patientmrno", patientmrno);
		List<Patientdetail> l2 = query.list();
		return l2;
	}

	@Override
	public List<Beddata> getDetailspatientbed(String bedno) {
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  com.app.pojo.RoomSubTotalPojo WHERE bedNo=:bedNo";
		Query query = session.createQuery(hql);
		query.setParameter("bedNo", bedno);
		List<Beddata> l2 = query.list();
		return l2;
	}

	@Override
	public List getEntryDetails(String patientmrno) {

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from Patientdetail where patientmrno=:patientmrno";
		Query q = ses.createQuery(hql);
		q.setParameter("patientmrno", patientmrno);
		List list = q.list();
		tx.commit();
		ses.close();

		return list;
	}

	@Override
	public List getEntryDetailsbeds(String bedno) {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from RoomSubTotalPojo where bedNo=:bedNo";
		Query q = ses.createQuery(hql);
		q.setParameter("bedNo", bedno);
		List list = q.list();
		tx.commit();
		ses.close();

		return list;
	}

	@Override
	public String getRoomNumber(String bedno) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from com.app.pojo.RoomSubTotalPojo where bedNo=:bedNo";
		Query q = ses.createQuery(hql);
		q.setParameter("bedNo", bedno);
		List<RoomSubTotalPojo> list = q.list();

		String roomNo = "null";

		for (RoomSubTotalPojo r : list) {

			roomNo = r.getRoomno();

		}

		tx.commit();
		ses.close();

		return roomNo;
	}

	@Override
	public Double getRoomNumberAmount(String roomNo) {

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from com.app.pojo.RoomTarrif where roomno=:roomno";
		Query q = ses.createQuery(hql);
		q.setParameter("roomno", roomNo);
		List<RoomTarrif> list = q.list();

		double amount = 0.0;

		for (RoomTarrif r : list) {
			amount = r.getBcharges();
		}

		tx.commit();
		ses.close();

		return amount;
	}

	@Override
	public String[] getBedNos() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select bedNo from com.app.pojo.RoomSubTotalPojo";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		String[] arr1 = (String[]) ((List<RoomSubTotalPojo>) l).toArray(new String[l.size()]);
        System.out.println(arr1);
		return arr1;
		
	}

}
