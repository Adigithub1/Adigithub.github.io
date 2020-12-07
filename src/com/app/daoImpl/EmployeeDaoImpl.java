package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.EmployeeDao;
import com.app.pojo.Employee;

@Repository("employeeDaoDao")
public class EmployeeDaoImpl implements EmployeeDao {
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public boolean saveUser(Employee user) {

		Session session = sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		System.out.println("am in dao impl");
		System.out.println(user.getMobnum() + "     " + user.getUsername());
		String hql = "from com.app.pojo.Employee where username=:username or mobnum=:mobnum";
		Query q = session.createQuery(hql);
		q.setParameter("mobnum", user.getMobnum());
		q.setParameter("username", user.getUsername());
		List<Employee> l = q.list();
		System.out.println(l);
		if (l.isEmpty()) {
				sessionfactory.getCurrentSession().save(user);
				t.commit();
				session.close();
				System.out.println("success");
				return false;
		} else {
			System.out.println("failure");
			return true;
		}

	}

	@Override
	public List<Employee> getUser() {
		@SuppressWarnings("unchecked")
		List<Employee> userlist = sessionfactory.getCurrentSession().createCriteria(Employee.class).list();
		return userlist;
	}

	public void deleteEmployee(Employee user) {

		sessionfactory.getCurrentSession().createQuery("delete from Employee where id=" + user.getId()).executeUpdate();

	}

	@Override
	public List<Employee> getEmployee(int id) {
		/*
		 * return
		 * (Student)sessionfactory.getCurrentSession().load(Student.class, id);
		 */

		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from Employee where id=:id");
		q.setParameter("id", id);
		List l = q.list();
		System.out.println("retrieve particular id");
		System.out.println(l);
		t.commit();
		session.close();
		return l;
	}

	@Override
	public void updateEmployeeupdate(Employee user) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(user.getId());
		/*
		 * Query q = session.createQuery(
		 * "update Employee set  name=:name ,mobnum=:mobnum ,gender=:gender ,dob=:dob ,email=:email ,edu=:edu ,desig=:desig ,addr=:addr ,state=:state ,country=:country ,nation=:nation ,doj=:doj ,idproof=:idproof ,idnum=:idnum ,salary=:salary ,photo=:photo ,username=:username ,pwd=:pwd ,repwd=:repwd where id=:id"
		 * ); q.setParameter("id", user.getId()); q.setParameter("name",
		 * user.getName()); q.setParameter("mobnum", user.getMobnum());
		 * q.setParameter("gender", user.getGender()); q.setParameter("dob",
		 * user.getDob()); q.setParameter("email", user.getEmail());
		 * q.setParameter("edu", user.getEdu()); q.setParameter("desig",
		 * user.getDesig()); q.setParameter("addr", user.getAddr());
		 * q.setParameter("state", user.getState()); q.setParameter("country",
		 * user.getCountry()); q.setParameter("nation", user.getNation());
		 * q.setParameter("doj", user.getDoj()); q.setParameter("idproof",
		 * user.getIdproof()); q.setParameter("idnum", user.getIdnum());
		 * q.setParameter("salary", user.getSalary()); q.setParameter("photo",
		 * user.getPhoto()); q.setParameter("username", user.getUsername());
		 * q.setParameter("pwd", user.getPwd()); q.setParameter("repwd",
		 * user.getRepwd());
		 */
		System.out.println("update last");
		/*
		 * int ex = q.executeUpdate(); System.out.println("updated" + ex);
		 * 
		 */

		session.update(user);

		t.commit();
		session.close();// TODO Auto-generated method stub

	}

	@Override
	public List<Employee> updateuser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getEmployeePhoto(Integer id) {
		Session session = sessionfactory.getCurrentSession();
		return (Employee) session.get(Employee.class, id);
	}

	@Override
	public boolean login(Employee user) {
		Session session = sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		System.out.println("am in dao impl");
		System.out.println(user.getMobnum() + "     " + user.getUsername());
		String hql = "from com.app.pojo.Employee where username=:username and pwd=:pwd";
		Query q = session.createQuery(hql);
		q.setParameter("username", user.getUsername());
		q.setParameter("pwd", user.getPwd());
		List<Employee> l = q.list();
		System.out.println(l);
		if (l.isEmpty()) {
				
				t.commit();
				session.close();
				System.out.println("login fail");
				return true;
		} else {
			System.out.println("login success");
			return false;
		}
	}

/*	@Override
	public String getMaxId2()
	{
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(id) from com.employee.pojo.Employee";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;
			System.out.println("am in after adding one");
			System.out.println(id);
			String  ss="LH1";
			String  ss11=ss.concat(String.valueOf(id));
			tx.commit();
			session.close();
			return ss11;

		} catch (Exception e) {
			id = 1;
			String  ss="LH1";
			String  ss11=ss.concat(String.valueOf(id));
			System.out.println(id);
			tx.commit();
			session.close();
			return ss11;
		}
		
	}
	
	}
	*/

	/*@Override
	public String getMaxId2() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(id) from com.employee.pojo.Employee";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;
			System.out.println("am in after adding one");
			System.out.println(id);
			String  ss="LH1";
			String  ss11=ss.concat(String.valueOf(id));
			tx.commit();
			session.close();
			return ss11;

		} catch (Exception e) {
			id = 1;
			String  ss="LH1";
			String  ss11=ss.concat(String.valueOf(id));
			System.out.println(id);
			tx.commit();
			session.close();
			return ss11;
		}*/
		@Override
		public String getMaxId2() {
			
			Session session = sessionfactory.openSession();
			Transaction tx = session.beginTransaction();
			tx.begin();
			Integer id = null;
			System.out.println("am in dao impl");
			try {
				String hql = "select max(id) from com.app.pojo.Employee";
				Query q = session.createQuery(hql);
				List<Integer> l = q.list();
				Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
				System.out.println("array of collection" + arr[0]);
				System.out.println("am in before adding one");
				id = (arr[0]) + 11;
				System.out.println("am in after adding one");
				System.out.println(id);
				tx.commit();
				session.close();
				
				String idN="LHR_";
				
				idN=idN.concat(id.toString());
				
				return idN;

			} catch (Exception e) {
				
				String idN="LHR_10";
				
				tx.commit();
				session.close();
				return idN;
			}
		}
	}
	
	


