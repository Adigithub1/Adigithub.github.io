package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.DepartmentDao;
import com.app.pojo.Departmentpojo;
import com.app.pojo.Locationpojo;
import com.app.pojo.MainDepartmentpojo;

@Repository("userDao1")
public class DepartmentDaoimpl implements DepartmentDao {
	@Autowired
	private SessionFactory Sessionfactory;

	@Override
	public void saveUser(Departmentpojo user) {

		System.out.println("hi from ");
		Sessionfactory.getCurrentSession().save(user);

	}

	@Override
	public List<Departmentpojo> getUser() {
		Session session = Sessionfactory.openSession();
		String hql = "from Departmentpojo";
		Query q = session.createQuery(hql);
		List<Departmentpojo> ul1 = q.list();
		session.close();

		return ul1;
	}

	@Override
	public List<MainDepartmentpojo> getMaindepartment() {
		Session session = Sessionfactory.getCurrentSession();
		String hql = " From com.app.pojo.MainDepartmentpojo";
		Query query = session.createQuery(hql);

		List<MainDepartmentpojo> l2 = query.list();
		return l2;

	}

	@Override
	public List<Departmentpojo> getDepartment(String DepartmentName) {
		Session session = Sessionfactory.openSession();
		String hql = " from Departmentpojo WHERE departmentName=:departmentName";
		Query q = session.createQuery(hql);
		q.setParameter("departmentName", DepartmentName);
		List<Departmentpojo> ul2 = q.list();
		session.close();

		return ul2;
	}

	@Override
	public List<Locationpojo> getLocation() {
		Session session = Sessionfactory.openSession();
		String hql = " from com.app.pojo.Locationpojo ";
		Query q = session.createQuery(hql);

		List<Locationpojo> ul3 = q.list();
		session.close();
		return ul3;
	}

	@Override
	public void adduser(Departmentpojo user) {
		Sessionfactory.getCurrentSession().saveOrUpdate(user);

	}

	@Override
	public List<Departmentpojo> updatepojo(Departmentpojo user) {
		System.out.println("am in updatepojo");
		System.out.println(user.getId());
		System.out.println(user.getId());
		System.out.println(user.getId());
		System.out.println(user.getId());
		Session session = Sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		String hql = "update com.app.pojo.Departmentpojo set departmentName=:departmentName,maindepartmentName=:maindepartmentName,location=:location where id=:id";
		Query q = session.createQuery(hql);
		q.setParameter("departmentName", user.getDepartmentName());
		q.setParameter("maindepartmentName", user.getMaindepartmentName());
		q.setParameter("location", user.getLocation());
		q.setParameter("id", user.getId());
		int i = q.executeUpdate();
		System.out.println("rows affected=" + i);
		String hql2 = "from Departmentpojo";
		Query q1 = session.createQuery(hql2);
		List l = q1.list();
		System.out.println(l);
		tx.commit();
		session.close();
		return l;
	}

	@Override
	public List getUser(int id) {
		Session session = Sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		String hql = "from Departmentpojo where id=:id";

		Query q = session.createQuery(hql);
		q.setParameter("id", id);

		List l1 = q.list();
		tx.commit();
		session.close();

		return l1;
	}

	@Override
	public List getDepartment(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getidfromdepart() {
		Session s1 = Sessionfactory.openSession();

		try {
			String hql = "select max(id) from Departmentpojo";
			Query q = s1.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			int sw = arr[0];
			int se1 = sw + 1;
			System.out.println();
			String tokenI = "0";
			String tokenId = tokenI.concat(String.valueOf(arr[0] + 1));
			return se1;

		} catch (NullPointerException e) {

			int ui = 1;

			return ui;

		}

	}

}
