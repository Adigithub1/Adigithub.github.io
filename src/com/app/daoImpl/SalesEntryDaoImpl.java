package com.app.daoImpl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.SalesEntryDao;
import com.app.pojo.DummyPojo;
import com.app.pojo.ProductType99;
import com.app.pojo.SalesEntryPojo;
import com.app.pojo.TotalProductSales;

@Repository("salesEntryDao")
public class SalesEntryDaoImpl implements SalesEntryDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public String[] getproductname() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "select productTypeName from com.app.pojo.ProductType99";
		Query q = ses.createQuery(hql);

		List l = q.list();
		String[] arr = (String[]) ((List<ProductType99>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;
	}

	@Override
	public Integer getcustomerMaxId() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(id) from com.app.pojo.SalesEntryPojo";
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

	@Override
	public List getProductRelateddetails(SalesEntryPojo salesEntryPojo) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "from com.app.pojo.ProductType99 where productTypeName=:productTypeName";
		Query q = session.createQuery(hql);
		q.setParameter("productTypeName", salesEntryPojo.getProductName());
		List l = q.list();

		DummyPojo dp = new DummyPojo();
		dp.setCustomerId(salesEntryPojo.getCustomerId());
		dp.setCustomerType(salesEntryPojo.getCustomerType());
		dp.setBillingType(salesEntryPojo.getBillingType());
		dp.setSalesType(salesEntryPojo.getSalesType());
		dp.setSalesDate(salesEntryPojo.getSalesDate());
		session.save(dp);

		tx.commit();
		session.close();
		return l;
	}

	@Override
	public void addproductDetails(SalesEntryPojo salesEntryPojo) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		TotalProductSales tps = new TotalProductSales();

		tps.setProductName(salesEntryPojo.getProductName());
		tps.setBatNo(salesEntryPojo.getBatNo());
		tps.setAvailQuty(salesEntryPojo.getAvailQuty());
		tps.setAmount(salesEntryPojo.getAmount());
		tps.setMfgdate(salesEntryPojo.getMfgdate());
		tps.setExpdate(tps.getExpdate());
		tps.setSalesQty(salesEntryPojo.getSalesQty());
		tps.setUtRate(salesEntryPojo.getUtRate());
		tps.setValue(salesEntryPojo.getValue());
		tps.setDiscount(salesEntryPojo.getDiscount());
		tps.setCustomerId(salesEntryPojo.getCustomerId());
		tps.setExpdate(salesEntryPojo.getExpdate());
		session.save(tps);

		String hql1 = "from com.app.pojo.ProductType99";
		Query q1 = session.createQuery(hql1);
		List<ProductType99> l = q1.list();
		double avilQuantity = 0.0;

		for (ProductType99 p : l) {
			avilQuantity = p.getAvilQty();
		}

		avilQuantity = avilQuantity - (salesEntryPojo.getSalesQty());
		String hql = "update com.app.pojo.ProductType99  set avilQty=:avilQty where productTypeName=:productTypeName";
		Query q = session.createQuery(hql);
		q.setParameter("productTypeName", salesEntryPojo.getProductName());
		q.setParameter("avilQty", avilQuantity);
		int res = q.executeUpdate();

		tx.commit();
		session.close();

	}

	@Override
	public List getAddingProductDetails() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "select max(id) from com.app.pojo.SalesEntryPojo";
		Query q = session.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");

		int id = 0;
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql2 = "from com.app.pojo.TotalProductSales where CustomerId=:CustomerId";
		Query q1 = session.createQuery(hql2);
		q1.setParameter("CustomerId", id);
		List<TotalProductSales> l2 = q1.list();
		double totlaAmount = 0.0;
		for (TotalProductSales t : l2) {
			totlaAmount = totlaAmount + (t.getAmount());
		}

		tx.commit();
		session.close();
		return l2;
	}

	@Override
	public Double gettotalAmount() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "select max(id) from com.app.pojo.SalesEntryPojo";
		Query q = session.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");

		int id = 0;
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql2 = "from com.app.pojo.TotalProductSales where CustomerId=:CustomerId";
		Query q1 = session.createQuery(hql2);
		q1.setParameter("CustomerId", id);
		List<TotalProductSales> l2 = q1.list();
		double totlaAmount = 0.0;
		for (TotalProductSales t : l2) {
			totlaAmount = totlaAmount + (t.getAmount());
		}
		System.out.println(totlaAmount);
		tx.commit();
		session.close();
		return totlaAmount;
	}

	@Override
	public void totalBilling(SalesEntryPojo salesEntryPojo) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		
		
		String hql = "select max(id) from com.app.pojo.SalesEntryPojo";
		Query q = session.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");

		int id = 0;
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		
		salesEntryPojo.setSalesid(id);
		
		
		
		
		session.save(salesEntryPojo);

		tx.commit();
		session.close();

	}

	@Override
	public void deleteSales(int salesid) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "delete from com.app.pojo.TotalProductSales where salesid=:salesid";
		Query q = session.createQuery(hql);
		q.setParameter("salesid", salesid);
		int res = q.executeUpdate();
		tx.commit();
		session.close();

	}

	@Override
	public List<SalesEntryPojo> getCustomerDetails() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.SalesEntryPojo";
		System.out.println("before exicuting ");
		Query q = session.createQuery(hql);
		List<SalesEntryPojo> l = q.list();
		System.out.println(l);
		tx.commit();
		session.close();
		return l;
	}

	@Override
	public List<SalesEntryPojo> getUserParticularDayDetails(String salesDate) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		System.out.println("am in retrive a particular day date values dao impl");
		Date convertedDate = null;
		DateFormat formatter = null;

		formatter = new SimpleDateFormat("yyyy-MM-dd");
		try {
			convertedDate = (Date) formatter.parse(salesDate);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		System.out.println("convertedDate");
		System.out.println(convertedDate);
		Date da = new Date();
		System.out.println("compare");
		System.out.println(salesDate + "  " + da + "  " + convertedDate);

		String sql = "from com.app.pojo.SalesEntryPojo where salesDate=:salesDate";
		Query query = session.createQuery(sql);

		query.setParameter("salesDate", salesDate);

		List<SalesEntryPojo> l = query.list();

		System.out.println(l);
		tx.commit();
		session.close();
		return l;
	}

	@Override
	public void canceslsalesEntryDetails() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "select max(id) from com.app.pojo.SalesEntryPojo";
		Query q = session.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");

		int id = 0;
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql2 = "delete from com.app.pojo.TotalProductSales where CustomerId=:CustomerId";
		Query q1 = session.createQuery(hql2);
		q1.setParameter("CustomerId", id);
		q1.executeUpdate();
		tx.commit();
		session.close();
	}

}
