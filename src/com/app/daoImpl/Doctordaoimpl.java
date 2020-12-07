package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.Doctordao;
import com.app.pojo.Doctordetail;
import com.app.pojo.dept;




@Repository("Doctordao")
public class Doctordaoimpl implements Doctordao{
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public void savedoctordetail(Doctordetail doctor) {
		// TODO Auto-generated method stub
		sessionfactory.getCurrentSession().save(doctor);
	}
	@Override
	public List<Doctordetail> getuser() {
		// TODO Auto-generated method stub
		List<Doctordetail> userlist = sessionfactory.getCurrentSession().createCriteria(Doctordetail.class).list();
		return userlist;
	}
	@Override
	public List<Doctordetail> getdepartmentnames() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Doctordetail";
		Query query = session.createQuery(hql);

		List<Doctordetail> l2 = query.list();
		return l2;
	}
	@Override
	public List<Doctordetail> getdoctors() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  Doctordetail";
		Query query = session.createQuery(hql);

		List<Doctordetail> l2 = query.list();
		return l2;
	}
	@Override
	public List getDetails(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();

		String hql = "from com.app.pojo.Doctordetail where id=:id";
		Query q = session.createQuery(hql);
		q.setParameter("id", id);
		List l = q.list();
		t.commit();
		session.close();

		return l;
	}
	@Override
	public void updatedoctorupdate(Doctordetail doctor) {
		// TODO Auto-generated method stub
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println(doctor.getDoctorname());
		String s1 = "UPDATE Doctordetail SET  specialization=:s,doctorname=:dn,designation=:des,qualification=:q,departmentname=:deptname,doctordutytype=:ddt,phonenumber1=:pn1,phonenumber2=:pn2,consultantfee=:cf,address=:a  WHERE id=:id";
		Query q = session.createQuery(s1);

		 q.setParameter("s",doctor.getSpecialization()); 
		 q.setParameter("dn",doctor.getDoctorname()); 
		 q.setParameter("des",doctor.getDesignation());
		 q.setParameter("q",doctor.getQualification());
		 q.setParameter("deptname",doctor.getDepartmentname());
		 q.setParameter("ddt",doctor.getDoctordutytype());
		 q.setParameter("pn1",doctor.getPhonenumber1());
		 q.setParameter("pn2",doctor.getPhonenumber2());
		 q.setParameter("cf",doctor.getConsultantfee());
		 q.setParameter("a",doctor.getAddress()); 
		 q.setParameter("id",doctor.getId());
		int ex = q.executeUpdate();
		System.out.println(doctor.getId());
		System.out.println("updated" + ex);
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
	public void deleteDoctor(Doctordetail doctor) {
		// TODO Auto-generated method stub
		sessionfactory.getCurrentSession().createQuery( "delete from Doctordetail where id="+doctor.getId()).executeUpdate();
	}
	@Override
	public List<Doctordetail> doctor(String doctorn) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " from Doctordetail WHERE doctorname=:doctorname";
		Query query = session.createQuery(hql);

		query.setParameter("doctorname", doctorn);
		List<Doctordetail> l2 = query.list();
		return l2;
	}
	@Override
	public List<dept> getdetpaert() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.getCurrentSession();
		String hql = " From  dept";
		Query query = session.createQuery(hql);

		List<dept> l2 = query.list();
		return l2;
	}

}
