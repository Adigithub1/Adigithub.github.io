package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.app.dao.SalesReturnDao;
import com.app.pojo.ProductType99;
import com.app.pojo.PurchaseInvoicedeails;
import com.app.pojo.SalesEntryPojo;
import com.app.pojo.SalesEntryReturns;
import com.app.pojo.TotalProductReturns;
import com.app.pojo.TotalProductSales;

@Repository("salesReturnDao")
public class SalesReturnDaoImpl implements SalesReturnDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public String[] getproductname() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "select DISTINCT productName from com.app.pojo.TotalProductSales";
		Query q = ses.createQuery(hql);

		List l = q.list();
		String[] arr = (String[]) ((List<ProductType99>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;
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

		tx.commit();
		session.close();
		return l;
	}

	@Override
	public void addproductDetails(SalesEntryPojo salesEntryPojo) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		TotalProductReturns tps = new TotalProductReturns();

		tps.setProductName(salesEntryPojo.getProductName());
		tps.setBatNo(salesEntryPojo.getBatNo());
		tps.setAvailQuty(salesEntryPojo.getAvailQuty());
		tps.setAmount(salesEntryPojo.getAmount());
		tps.setMfgdate(salesEntryPojo.getMfgdate());
		tps.setExpdate(salesEntryPojo.getExpdate());
		tps.setSalesQty(salesEntryPojo.getSalesQty());
		tps.setUtRate(salesEntryPojo.getUtRate());
		tps.setValue(salesEntryPojo.getValue());
		tps.setDiscount(salesEntryPojo.getDiscount());

		String hql11 = "select max(id) from com.app.pojo.SalesEntryReturns";
		Query q11 = session.createQuery(hql11);
		List<Integer> l11 = q11.list();
		Integer[] arr = (Integer[]) l11.toArray(new Integer[l11.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");

		int id = 0;
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		tps.setCustomerReturnsId(id);

		session.save(tps);

		String hql1 = "from com.app.pojo.ProductType99 where productTypeName=:productTypeName";
		Query q1 = session.createQuery(hql1);
		q1.setParameter("productTypeName", salesEntryPojo.getProductName());
		List<ProductType99> l = q1.list();

		double avilQuantity = 0.0;

		for (ProductType99 p : l) {
			avilQuantity = p.getAvilQty();
			System.out.println("am in for each");
			System.out.println(avilQuantity);
		}

		System.out.println(avilQuantity + "  " + salesEntryPojo.getSalesQty());

		avilQuantity = avilQuantity + (salesEntryPojo.getSalesQty());

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

		String hql = "select max(id) from com.app.pojo.SalesEntryReturns";
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

		String hql2 = "from com.app.pojo.TotalProductReturns where CustomerReturnsId=:CustomerId";
		Query q1 = session.createQuery(hql2);
		q1.setParameter("CustomerId", id);
		List<TotalProductReturns> l2 = q1.list();
		double totlaAmount = 0.0;
		for (TotalProductReturns t : l2) {
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

		String hql = "select max(id) from com.app.pojo.SalesEntryReturns";
		Query q = session.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);

		System.out.println("am in before adding one");

		int id = 0;
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			System.out.println(e);
			id = 1;
		}

		String hql2 = "from com.app.pojo.TotalProductReturns where CustomerReturnsId=:CustomerId";
		Query q1 = session.createQuery(hql2);
		q1.setParameter("CustomerId", id);
		List<TotalProductReturns> l2 = q1.list();
		double totlaAmount = 0.0;
		for (TotalProductReturns t : l2) {
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

		SalesEntryReturns s = new SalesEntryReturns();

		Session ses = sessionfactory.openSession();
		Transaction tx11 = ses.beginTransaction();
		tx11.begin();
		System.out.println("am in save dao impl");
		String hql11 = " from com.app.pojo.SalesEntryPojo where name=:name";
		Query q11 = ses.createQuery(hql11);
		q11.setParameter("name", salesEntryPojo.getName());
		List<SalesEntryPojo> l11 = q11.list();
		s.setName(salesEntryPojo.getName());
		for (SalesEntryPojo a : l11) {
			s.setSalesType(a.getSalesType());
			s.setCustomerType(a.getCustomerType());
			s.setSalesDate(a.getSalesDate());
			s.setBillingType(a.getBillingType());
		}
		s.setTotalAmount(salesEntryPojo.getTotalAmount());
		s.setAvgDiscount(salesEntryPojo.getAvgDiscount());
		s.setNetTotal(salesEntryPojo.getNetTotal());
		s.setReturnAmount(salesEntryPojo.getReturnAmount());
		session.save(s);

		tx.commit();
		session.close();

	}

	@Override
	public void deleteSales(int salesReturnsid) {
		
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		
		
		
		
		
		
		String hql8 = "from com.app.pojo.TotalProductReturns where salesReturnsid=:salesReturnsid";
		Query q8 = session.createQuery(hql8);
		q8.setParameter("salesReturnsid", salesReturnsid);
		List<TotalProductReturns> l8 = q8.list();
		double productQty = 0.0;
		double actualQty = 0.0;
		String productName = null;
		for (TotalProductReturns p : l8) {
			productQty = p.getSalesQty();
			productName = p.getProductName();
		}
		

		String hql1 = "from com.app.pojo.ProductType99 where productTypeName=:productName";
		Query q1 = session.createQuery(hql1);
		q1.setParameter("productName", productName);
		List<ProductType99> l1 = q1.list();

		for (ProductType99 pt : l1) {
			actualQty = pt.getAvilQty();
		}

		double totalActualqty = actualQty - productQty;

		String hql2 = "update com.app.pojo.ProductType99  set avilQty=:avilQty where productTypeName=:productTypeName";
		Query q2 = session.createQuery(hql2);
		q2.setParameter("productTypeName", productName);
		q2.setParameter("avilQty", totalActualqty);
		int res = q2.executeUpdate();

		
		
		String hql = "delete from com.app.pojo.TotalProductReturns where salesReturnsid=:salesReturnsid";
		Query q = session.createQuery(hql);
		q.setParameter("salesReturnsid", salesReturnsid);
		int res1 = q.executeUpdate();
		tx.commit();
		session.close();

	}

	@Override
	public String[] getCustomerNameOnDb() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "select DISTINCT name from com.app.pojo.SalesEntryPojo";
		Query q = ses.createQuery(hql);

		List l = q.list();
		String[] arr = (String[]) ((List<SalesEntryPojo>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;
	}

	@Override
	public List getsalesPersonNames(String name) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = " from com.app.pojo.SalesEntryPojo where name=:name";
		Query q = ses.createQuery(hql);
		q.setParameter("name", name);
		List l = q.list();
		return l;
	}

	@Override
	public List getdetailsOfsalesReturns() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = " from com.app.pojo.SalesEntryReturns ";
		Query q = ses.createQuery(hql);
		List l = q.list();
		return l;
	}

	public List getdetailsOfsalesReturnsName(SalesEntryPojo salesEntryPojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = " from com.app.pojo.SalesEntryReturns where name=:name";
		Query q = ses.createQuery(hql);
		q.setParameter("name", salesEntryPojo.getName());
		List l = q.list();
		return l;
	}

	@Override
	public String[] getSalesReturnsNames() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "select DISTINCT name from com.app.pojo.SalesEntryReturns";
		Query q = ses.createQuery(hql);

		List l = q.list();
		String[] arr = (String[]) ((List<ProductType99>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;
	}

	@Override
	public void cancessalesReturns() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql = "select max(id) from com.app.pojo.SalesEntryReturns";
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

		String hql2 = "delete from com.app.pojo.TotalProductReturns where CustomerReturnsId=:CustomerId";
		Query q1 = session.createQuery(hql2);
		q1.setParameter("CustomerId", id);
		q1.executeUpdate();
		tx.commit();
		session.close();

	}

	@Override
	public Double getQty(String productName, String name) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		
		String hql="from TotalProductReturns where name=:name and productName=:productName";
		Query q=session.createQuery(hql);
		q.setParameter("productName",productName);
		q.setParameter("name",name);
		
		List<TotalProductReturns> l=q.list();
		
		double qty=0.0;
		
		for(TotalProductReturns t:l){
			qty=t.getSalesQty();
		}
		
		
		
		tx.commit();
		session.close();
		return qty;
	}

}
