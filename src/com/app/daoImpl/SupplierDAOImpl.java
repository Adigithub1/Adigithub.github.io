package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojo.NewSupplierInfoPojo;
import com.app.pojo.Product;
import com.app.pojo.Supplier;
import com.app.dao.SupplierDAO;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public boolean saveSupplier(Supplier s) {

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in list Product");
		Query q = ses.createQuery("from com.app.pojo.Supplier where  supName=:supName");
		q.setParameter("supName", s.getSupName());
		List<Product> l = q.list();
		System.out.println(l);
		if (l.isEmpty()) {
			ses.save(s);
			tx.commit();
			ses.close();
			return false;
		} else {
			System.out.println("we are in booleon");
			return true;
		}

	}

	@Override
	public List<Supplier> listSupplier() {

		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("we are in Supplier Product");
		Query q = ses.createQuery("from com.app.pojo.Supplier");
		@SuppressWarnings("unchecked")
		List<Supplier> l = q.list();
		System.out.println(l);
		System.out.println(l);
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List<Supplier> getSupplier(int supCode) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from com.app.pojo.Supplier where supCode=:supCode");
		q.setParameter("supCode", supCode);
		List<Supplier> l = q.list();

		t.commit();
		session.close();
		return l;
	}

	@Override
	public void updateSupplier(Supplier s) {
		Session session = this.sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("am in update dao impl");
		System.out.println(s.getSupCode());
		Query q = session.createQuery(
				"update com.app.pojo.Supplier set  supName=:supName,supType=:supType,phNum=:phNum,contactPerson=:contactPerson,contPhNum=:contPhNum,area=:area,city=:city,state=:state,country=:country,pincode=:pincode,fax=:fax,address=:address,email=:email,aggtNum=:aggtNum,aggtDate=:aggtDate,cstNum=:cstNum,apNum=:apNum,tinNum=:tinNum,remarks=:remarks  where supCode=:supCode");
		q.setParameter("supCode", s.getSupCode());
		q.setParameter("supName", s.getSupName());
		q.setParameter("supType", s.getSupType());
		q.setParameter("phNum", s.getPhNum());
		q.setParameter("contactPerson", s.getContactPerson());
		q.setParameter("contPhNum", s.getContPhNum());
		q.setParameter("area", s.getArea());
		q.setParameter("city", s.getCity());
		q.setParameter("state", s.getState());
		q.setParameter("country", s.getCountry());
		q.setParameter("pincode", s.getPincode());
		q.setParameter("fax", s.getFax());
		q.setParameter("address", s.getAddress());
		q.setParameter("email", s.getEmail());
		System.out.println(s.getEmail());
		q.setParameter("aggtNum", s.getAggtNum());
		q.setParameter("aggtDate", s.getAggtDate());
		q.setParameter("cstNum", s.getCstNum());
		q.setParameter("apNum", s.getApNum());
		q.setParameter("tinNum", s.getTinNum());
		q.setParameter("remarks", s.getRemarks());

		System.out.println("update last");
		int ex = q.executeUpdate();
		System.out.println("updated " + ex);
		t.commit();
		session.close();

	}

	@Override
	public Integer[] ids1() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in update dao impl");
		String hql = "select supCode from com.app.pojo.Supplier";
		Query q = ses.createQuery(hql);

		List l1 = q.list();
		Integer[] arr = (Integer[]) ((List<Supplier>) l1).toArray(new Integer[l1.size()]);

		System.out.println(l1);
		System.out.println(arr);
		return arr;
	}

	@Override
	public Integer getId1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String[] getIdc1() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in supCode retrive  dao impl");
		String hql = "select supName from com.app.pojo.Supplier";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<Supplier>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println("am in for each before dao impl");

		System.out.println(l);

		return arr1;
	}

	@Override
	public List<Supplier> getWholeSupplier() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in  retrive whole Supplier dao impl");
		String hql = "com.app.pojo.Supplier";
		Query q = ses.createQuery(hql);
		List<Supplier> l = q.list();
		return l;
	}

	@Override
	public List<Supplier> getWholeSupplierNames(String supName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in dao impl retrive details based on supName");
		System.out.println(supName);
		String hql = "from com.app.pojo.Supplier where supName=:supName";
		Query q = ses.createQuery(hql);
		q.setParameter("supName", supName);
		@SuppressWarnings("unchecked")
		List<Supplier> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularSupplierProduct(Supplier s) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.Supplier where supName=:supName";
		Query q = ses.createQuery(hql);
		q.setParameter("supName", s.getSupName());
		List<Supplier> l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public String getMaxId2() {

		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(supCode) from com.app.pojo.Supplier";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;
			System.out.println("am in after adding one");
			System.out.println(id);
			String ss = "SUP0000";
			String ss11 = ss.concat(String.valueOf(id));
			tx.commit();
			session.close();
			return ss11;

		} catch (Exception e) {
			id = 1;
			String ss = "SUP0000";
			String ss11 = ss.concat(String.valueOf(id));
			System.out.println(id);
			tx.commit();
			session.close();
			return ss11;
		}

	}

	@Override
	public void deleteSupplier(Supplier s) {

		sessionfactory.getCurrentSession()
				.createQuery("delete from com.app.pojo.Supplier where supCode=" + s.getSupCode()).executeUpdate();

	}

	@Override
	public List GetSupplierTypeDetails() {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.NewSupplierInfoPojo";
		Query q = ses.createQuery(hql);
		List l = q.list();
		return l;
	}

	@Override
	public List GetDetailsOfSupplierByType(String supplierType) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.NewSupplierInfoPojo where supplierType=:supplierType";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierType", supplierType);
		List l = q.list();
		return l;
	}

	@Override
	public boolean SaveSupplierTypeDetAILs(NewSupplierInfoPojo asdf) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.NewSupplierInfoPojo where supplierType=:supplierType";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierType", asdf.getSupplierType());

		List l = q.list();

		if (l.isEmpty()) {
			ses.save(asdf);

			tx.commit();
			ses.close();
			return true;
		} else {

			return false;
		}

	}

	@Override
	public boolean editSupplierTypeDetAILs(NewSupplierInfoPojo asdf) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		
		
		String hql1 = "com.app.pojo.NewSupplierInfoPojo where supplierType=:supplierType";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("supplierType", asdf.getSupplierType());

		List l = q1.list();
		if(l.isEmpty()){
		String hql = "update com.app.pojo.NewSupplierInfoPojo set supplierType=:supplierType where id=:id";
		Query q = ses.createQuery(hql);
		q.setParameter("id", asdf.getId());
		q.setParameter("supplierType", asdf.getSupplierType());
		q.executeUpdate();
		tx.commit();
		ses.close();
		return true;
		}else{
			return false;
		}
	}

	@Override
	public Integer getSupplierIdMax() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "select max(id) from com.app.pojo.NewSupplierInfoPojo";
		Query q = session.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);

		int id = 0;
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}
		return id;
	}

	@Override
	public String[] GetSupplierTypes() {
		// TODO Auto-generated method stub
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		
		String hql = "select supplierType from com.app.pojo.NewSupplierInfoPojo";
		Query q = ses.createQuery(hql);

		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		@SuppressWarnings("unchecked")
		String[] arr1 = (String[]) ((List<NewSupplierInfoPojo>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr1);
		System.out.println(l);
		return arr1;
	}
}
