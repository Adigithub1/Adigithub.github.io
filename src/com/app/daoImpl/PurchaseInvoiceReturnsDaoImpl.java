package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.PurchaseInvoiceReturnsDao;
import com.app.pojo.ProductType99;
import com.app.pojo.PurchaseInvoiceReturnsdeails;
import com.app.pojo.PurchaseInvoicedeails;
import com.app.pojo.PurchaseInvoiceePojo;
import com.app.pojo.PurchaseInvoiceeReturns;
import com.app.pojo.SupplierRelatedDetails;

@Repository("purchaseInvoiceReturnsDao")
public class PurchaseInvoiceReturnsDaoImpl implements PurchaseInvoiceReturnsDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public String[] getSuppliername() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "select supplierName from com.app.pojo.PurchaseInvoiceePojo";
		Query q = ses.createQuery(hql);

		List l = q.list();
		String[] arr = (String[]) ((List<PurchaseInvoiceePojo>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;
	}

	@Override
	public String[] getSupplierCode() {
		/*
		 * Session ses = sessionfactory.openSession(); Transaction tx =
		 * ses.beginTransaction(); tx.begin(); System.out.println(
		 * "am in save dao impl"); String hql =
		 * "select SupplierCode from com.app.pojo.SupplierRelatedDetails"; Query
		 * q = ses.createQuery(hql);
		 * 
		 * List l = q.list(); String[] arr = (String[])
		 * ((List<SupplierRelatedDetails>) l).toArray(new String[l.size()]);
		 * 
		 * System.out.println(l); System.out.println(arr);
		 */

		return null;
	}

	@Override
	public String getgrnMaxId() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;

			String drnNo = "RET00000";
			String drnNo1 = drnNo.concat(String.valueOf(id));

			return drnNo1;

		} catch (Exception e) {
			id = 1;
			System.out.println(e);
			String drnNo = "RET00000";
			String drnNo11 = drnNo.concat(String.valueOf(id));

			System.out.println(id);
			tx.commit();
			session.close();
			return drnNo11;
		}

	}

	@Override
	public String[] getProductname(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql1 = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());
		int id = 0;
		List<PurchaseInvoiceePojo> l1 = q1.list();
		for (PurchaseInvoiceePojo p : l1) {
			id = p.getId();
		}

		System.out.println("am in save dao impl");
		String hql = "select productName from com.app.pojo.PurchaseInvoicedeails where id=:id";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);
		List l = q.list();
		String[] arr = (String[]) ((List<ProductType99>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;
	}

	@Override
	public String getsupplierAddress(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.SupplierRelatedDetails where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<SupplierRelatedDetails> l = q.list();

		String address = null;
		for (SupplierRelatedDetails s : l) {
			address = s.getAddress();
		}
		return address;
	}

	@Override
	public String purchaseTypegetting(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<PurchaseInvoiceePojo> l = q.list();

		String type = null;
		for (PurchaseInvoiceePojo s : l) {
			type = s.getPurchaseType();
		}
		return type;
	}

	@Override
	public String invoicenumber(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<PurchaseInvoiceePojo> l = q.list();

		String invoicenumber = null;
		for (PurchaseInvoiceePojo s : l) {
			invoicenumber = s.getInvoiceNo();
		}
		return invoicenumber;
	}

	@Override
	public String invoiceDates(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<PurchaseInvoiceePojo> l = q.list();

		String invoiceDates = null;
		for (PurchaseInvoiceePojo s : l) {
			invoiceDates = s.getInvoiceDate();
		}
		return invoiceDates;
	}

	@Override
	public String purchaseDate(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<PurchaseInvoiceePojo> l = q.list();

		String purchaseDate = null;
		for (PurchaseInvoiceePojo s : l) {
			purchaseDate = s.getRecivedDate();
		}
		return purchaseDate;
	}

	@Override
	public String getsupplierCity(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<PurchaseInvoiceePojo> l = q.list();

		String supplierCity = null;
		for (PurchaseInvoiceePojo s : l) {
			supplierCity = s.getCity();
		}
		return supplierCity;
	}

	@Override
	public String getsupplierAddress(String supplierName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", supplierName);

		List<PurchaseInvoiceePojo> l = q.list();

		String address = null;
		for (PurchaseInvoiceePojo s : l) {
			address = s.getAddress();
		}
		return address;
	}

	@Override
	public String getsupplierCity(String supplierName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", supplierName);
		List<PurchaseInvoiceePojo> l = q.list();
		String city = null;
		for (PurchaseInvoiceePojo s : l) {
			city = s.getCity();
		}
		return city;
	}

	@Override
	public List getproductDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		int id;

		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql1 = "from com.app.pojo.PurchaseInvoiceReturnsdeails where id=:id";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("id", id);
		List l1 = q1.list();

		tx.commit();
		ses.close();
		return l1;
	}

	@Override
	public Double getTotalAmount() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		double totalAmount = 0;

		String hql2 = "from com.app.pojo.PurchaseInvoiceReturnsdeails where id=:id";
		Query q2 = ses.createQuery(hql2);
		q2.setParameter("id", id);

		List<PurchaseInvoiceReturnsdeails> l2 = q2.list();

		for (PurchaseInvoiceReturnsdeails pd : l2) {
			totalAmount = totalAmount + (pd.getProductFinalAmount());
		}

		tx.commit();
		ses.close();
		return totalAmount;
	}

	@Override
	public Integer getTotalNoOfItems() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		int noOfItms = 0;

		String hql2 = "from com.app.pojo.PurchaseInvoiceReturnsdeails where id=:id";
		Query q2 = ses.createQuery(hql2);
		q2.setParameter("id", id);

		List<PurchaseInvoiceReturnsdeails> l2 = q2.list();

		for (PurchaseInvoiceReturnsdeails pd : l2) {
			noOfItms = noOfItms + 1;
		}

		tx.commit();
		ses.close();
		return noOfItms;
	}

	@Override
	public void saveParticularproducts(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		int id;

		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");

		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		PurchaseInvoiceReturnsdeails ts = new PurchaseInvoiceReturnsdeails();
		ts.setProductName(purchaseInvoiceePojo.getProductName());
		ts.setManufacturingBy(purchaseInvoiceePojo.getManufacturingBy());
		ts.setBatchNo(purchaseInvoiceePojo.getBatchNo());
		ts.setQty(purchaseInvoiceePojo.getQty());
		ts.setRate(purchaseInvoiceePojo.getRate());
		ts.setAmount(purchaseInvoiceePojo.getAmount());
		ts.setSupplierName(purchaseInvoiceePojo.getSupplierName());
		ts.setAddress(purchaseInvoiceePojo.getAddress());
		ts.setCity(purchaseInvoiceePojo.getCity());
		ts.setProductFinalAmount(purchaseInvoiceePojo.getProductFinalAmount());
		ts.setId(id);
		ses.save(ts);
		String hql1 = "from com.app.pojo.ProductType99 where productTypeName=:productName";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("productName", purchaseInvoiceePojo.getProductName());
		List<ProductType99> l1 = q1.list();
		double availQty = 0.0;
		for (ProductType99 p : l1) {
			availQty = p.getAvilQty();
		}
		availQty = availQty - (purchaseInvoiceePojo.getQty());
		String hql2 = "update com.app.pojo.ProductType99  set avilQty=:avilQty where productTypeName=:productTypeName";
		Query q2 = ses.createQuery(hql2);
		q2.setParameter("productTypeName", purchaseInvoiceePojo.getProductName());
		q2.setParameter("avilQty", availQty);
		int res = q2.executeUpdate();
		tx.commit();
		ses.close();
	}

	@Override
	public void totalSave(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<PurchaseInvoiceePojo> l = q.list();

		String supplierCity = null;
		for (PurchaseInvoiceePojo s : l) {
			purchaseInvoiceePojo.setAddress(s.getAddress());
			purchaseInvoiceePojo.setCity(s.getCity());
			purchaseInvoiceePojo.setPurchaseType(s.getPurchaseType());
			purchaseInvoiceePojo.setInvoiceNo(s.getInvoiceDate());
			purchaseInvoiceePojo.setInvoiceDate(s.getInvoiceDate());
			purchaseInvoiceePojo.setRecivedDate(s.getRecivedDate());
		}

		Integer id = null;
		String drnNo1 = null;
		System.out.println("am in dao impl");
		try {
			String hql3 = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
			Query q3 = ses.createQuery(hql3);
			List<Integer> l3 = q3.list();
			Integer[] arr = (Integer[]) l3.toArray(new Integer[l3.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;
			String drnNo = "GRN00000";
			drnNo1 = drnNo.concat(String.valueOf(id));
		} catch (Exception e) {
			id = 1;
			String drnNo = "GRN00000";
			drnNo1 = drnNo.concat(String.valueOf(id));
			System.out.println(id);
		}
		purchaseInvoiceePojo.setGrnNo(drnNo1);
		ses.save(purchaseInvoiceePojo);
		tx.commit();
		ses.close();

	}

	@Override
	public void delete(int purchaseId) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql8 = "from com.app.pojo.PurchaseInvoicedeails where purchaseId=:purchaseId";
		Query q8 = session.createQuery(hql8);
		q8.setParameter("purchaseId", purchaseId);
		List<PurchaseInvoicedeails> l8 = q8.list();
		double productQty = 0.0;
		double actualQty = 0.0;
		String productName = null;
		for (PurchaseInvoicedeails p : l8) {
			productQty = p.getQty();
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

		String hql9 = "delete from com.app.pojo.PurchaseInvoicedeails where purchaseId=:purchaseId";
		Query q9 = session.createQuery(hql9);
		q9.setParameter("purchaseId", purchaseId);
		int res1 = q9.executeUpdate();
		tx.commit();
		session.close();
	}

	@Override
	public String getsupplierAddressFromTable() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql1 = " from com.app.pojo.PurchaseInvoiceReturnsdeails where id=:id";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("id", id);

		List<PurchaseInvoiceReturnsdeails> l1 = q1.list();
		String address = null;
		for (PurchaseInvoiceReturnsdeails p : l1) {
			address = p.getAddress();
		}
		tx.commit();
		ses.close();
		return address;
	}

	@Override
	public String getsupplierCityFromTable() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql1 = " from com.app.pojo.PurchaseInvoicedeails where id=:id";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("id", id);

		List<PurchaseInvoicedeails> l1 = q1.list();
		String city = null;
		for (PurchaseInvoicedeails p : l1) {
			city = p.getCity();
		}
		tx.commit();
		ses.close();
		return city;
	}

	@Override
	public String getSupplierNameFromTable() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql1 = " from com.app.pojo.PurchaseInvoicedeails where id=:id";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("id", id);

		List<PurchaseInvoicedeails> l1 = q1.list();
		String supplierName = null;
		for (PurchaseInvoicedeails p : l1) {
			supplierName = p.getSupplierName();
		}
		tx.commit();
		ses.close();
		return supplierName;
	}

	@Override
	public String getproductmanufacturingBy(String supplierName, String productName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql1 = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("supplierName", supplierName);
		int id = 0;
		List<PurchaseInvoiceePojo> l1 = q1.list();
		for (PurchaseInvoiceePojo p : l1) {
			id = p.getId();
		}

		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoicedeails where id=:id and productName=:productName";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);
		q.setParameter("productName", productName);
		List<PurchaseInvoicedeails> l = q.list();
		String mnfBy = null;

		for (PurchaseInvoicedeails p : l) {
			mnfBy = p.getManufacturingBy();
		}

		System.out.println(l);
		System.out.println(mnfBy);

		return mnfBy;
	}

	@Override
	public Double getVat(String supplierName, String productName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql1 = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("supplierName", supplierName);
		int id = 0;
		List<PurchaseInvoiceePojo> l1 = q1.list();
		for (PurchaseInvoiceePojo p : l1) {
			id = p.getId();
		}

		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoicedeails where id=:id and productName=:productName";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);
		q.setParameter("productName", productName);
		List<PurchaseInvoicedeails> l = q.list();
		double vat = 0;

		for (PurchaseInvoicedeails p : l) {
			vat = p.getVat();
		}

		System.out.println(l);
		System.out.println(vat);

		return vat;
	}

	@Override
	public Double getrate(String supplierName, String productName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql1 = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("supplierName", supplierName);
		int id = 0;
		List<PurchaseInvoiceePojo> l1 = q1.list();
		for (PurchaseInvoiceePojo p : l1) {
			id = p.getId();
		}

		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoicedeails where id=:id and productName=:productName";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);
		q.setParameter("productName", productName);
		List<PurchaseInvoicedeails> l = q.list();
		double rate = 0;

		for (PurchaseInvoicedeails p : l) {
			rate = p.getRate();
		}
		System.out.println(l);
		System.out.println(rate);

		return rate;
	}

	@Override
	public String getBatchNo(String supplierName, String productName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql1 = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("supplierName", supplierName);
		int id = 0;
		List<PurchaseInvoiceePojo> l1 = q1.list();
		for (PurchaseInvoiceePojo p : l1) {
			id = p.getId();
		}

		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.PurchaseInvoicedeails where id=:id and productName=:productName";
		Query q = ses.createQuery(hql);
		q.setParameter("id", id);
		q.setParameter("productName", productName);
		List<PurchaseInvoicedeails> l = q.list();
		String batchNo = null;

		for (PurchaseInvoicedeails p : l) {
			batchNo = p.getBatchNo();
		}
		System.out.println(l);
		System.out.println(batchNo);

		return batchNo;
	}

	@Override
	public List getPurchaseReturnsList() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List l = q.list();
		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getListBySupplierName(PurchaseInvoiceeReturns purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		String hql = "from com.app.pojo.PurchaseInvoiceeReturns where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());
		List l = q.list();

		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public String[] getSuppliernameDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select DISTINCT supplierName from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List l = q.list();
		String[] arr = (String[]) ((List<PurchaseInvoiceeReturns>) l).toArray(new String[l.size()]);

		tx.commit();
		ses.close();
		return arr;
	}

	@Override
	public void canswelPurchaseReturns() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceeReturns";
		Query q = ses.createQuery(hql);
		List<Integer> l = q.list();
		Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
		System.out.println("array of collection" + arr[0]);
		System.out.println("am in before adding one");
		try {
			id = (arr[0]) + 1;
		} catch (Exception e) {
			id = 1;
		}

		String hql1 = " delete from com.app.pojo.PurchaseInvoiceeReturns where id=:id";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("id", id);

		q1.executeUpdate();
		tx.commit();
		ses.close();
	}

	@Override
	public String supplierNameDetailsOs(int purchaseId) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		String name="null";
		
		String hql8 = "from com.app.pojo.PurchaseInvoiceReturnsdeails where purchaseId=:purchaseId";
		Query q8 = session.createQuery(hql8);
		q8.setParameter("purchaseId", purchaseId);
		List<PurchaseInvoicedeails> l8 = q8.list();
		
		
		for (PurchaseInvoicedeails p : l8) {
			name=p.getSupplierName();
		}
		
		
		
		
		tx.commit();
		session.close();
		return name;
	}

	@Override
	public void deleteDetailsOf(int purchaseId) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();

		String hql8 = "from com.app.pojo.PurchaseInvoiceReturnsdeails where purchaseId=:purchaseId";
		Query q8 = session.createQuery(hql8);
		q8.setParameter("purchaseId", purchaseId);
		List<PurchaseInvoicedeails> l8 = q8.list();
		double productQty = 0.0;
		double actualQty = 0.0;
		String productName = null;
		for (PurchaseInvoicedeails p : l8) {
			productQty = p.getQty();
			productName = p.getProductName();
		}

		String hql1 = "from com.app.pojo.ProductType99 where productTypeName=:productName";
		Query q1 = session.createQuery(hql1);
		q1.setParameter("productName", productName);
		List<ProductType99> l1 = q1.list();

		for (ProductType99 pt : l1) {
			actualQty = pt.getAvilQty();
		}

		double totalActualqty = actualQty + productQty;

		String hql2 = "update com.app.pojo.ProductType99  set avilQty=:avilQty where productTypeName=:productTypeName";
		Query q2 = session.createQuery(hql2);
		q2.setParameter("productTypeName", productName);
		q2.setParameter("avilQty", totalActualqty);
		int res = q2.executeUpdate();

		String hql9 = "delete from com.app.pojo.PurchaseInvoiceReturnsdeails where purchaseId=:purchaseId";
		Query q9 = session.createQuery(hql9);
		q9.setParameter("purchaseId", purchaseId);
		int res1 = q9.executeUpdate();
		tx.commit();
		session.close();
	}

	@Override
	public Double getQty(String supplierName, String productName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		int id=0;
		double qty=0.0;
		
		
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName",supplierName);
		List<PurchaseInvoiceePojo> l = q.list();
		
		for(PurchaseInvoiceePojo p:l){
			id=p.getId();
		}
		
		String hql1 = "from com.app.pojo.PurchaseInvoicedeails where id=:supplierName and productName=:productName";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("supplierName",id);
		q1.setParameter("productName",productName);
		List<PurchaseInvoicedeails> l1 = q1.list();
		
		for(PurchaseInvoicedeails p:l1){
			qty=p.getQty();
		}
		
		tx.commit();
		ses.close();
		return qty;
	}
}
