package com.app.daoImpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.OutsideDao;

import com.app.pojo.OutsideConultPojo;


@Repository
public class OutsideDaoImpl implements OutsideDao

{
	@Autowired
	private SessionFactory sessionfactory1;

	@Override
	public List<OutsideConultPojo> getOutsideConsut() {
		Session session = sessionfactory1.getCurrentSession();
		String hql = " From  OutsideConultPojo";
		Query query = session.createQuery(hql);

		List<OutsideConultPojo> l2 = query.list();
		return l2;
	}

	@Override
	public void saveOutconsultname(OutsideConultPojo document1) {
		sessionfactory1.getCurrentSession().saveOrUpdate(document1);
		
	}

	@Override
	public List<OutsideConultPojo> editConsutdetails(int id1) {
		Session session = sessionfactory1.getCurrentSession();
		String hql = " from OutsideConultPojo WHERE id=:id";
		Query query = session.createQuery(hql);

		query.setParameter("id", id1);
		List<OutsideConultPojo> l2 = query.list();
		return l2;
	}

	@Override
	public int updateOutConsult(OutsideConultPojo document1) {
	System.out.println(document1.getId());
		Session session = sessionfactory1.getCurrentSession();
		String hql = "UPDATE OutsideConultPojo SET specialization = :specialization ,consultantName= :consultantName, consultantType= :consultantType,phoneNo = :phoneNo , consultantFee= :consultantFee,extraFee = :extraFee , address= :address WHERE id LIKE :id";
		Query query = session.createQuery(hql);

		query.setParameter("specialization", document1.getSpecialization());
		query.setParameter("consultantName", document1.getConsultantName());
		query.setParameter("consultantType", document1.getConsultantType());
		query.setParameter("phoneNo", document1.getPhoneNo());
		query.setParameter("consultantFee", document1.getConsultantFee());
		query.setParameter("extraFee", document1.getExtraFee());
		query.setParameter("address", document1.getAddress());
		query.setParameter("id", document1.getId());

		int j = query.executeUpdate();
		return j;
	}

	@Override
	public void deleteOutConsult(int id1) {
		Session session = sessionfactory1.getCurrentSession();
		String hql = " delete OutsideConultPojo WHERE id=:id";
		Query query = session.createQuery(hql);

		query.setParameter("id", id1);
		int l2 = query.executeUpdate();
	
		
	}

	@Override
	public List<OutsideConultPojo> getconsultentbyname(String name) {
		Session session = sessionfactory1.getCurrentSession();
		String hql = " from OutsideConultPojo WHERE consultantName=:consultantName";
		Query query = session.createQuery(hql);

		query.setParameter("consultantName", name);
		List<OutsideConultPojo> l2 = query.list();
		return l2;
	}


}
