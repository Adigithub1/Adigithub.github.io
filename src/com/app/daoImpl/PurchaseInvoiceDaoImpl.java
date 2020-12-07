package com.app.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.PurchaseInvoiceDao;
import com.app.pojo.ProductType99;
import com.app.pojo.PurchaseInvoicedeails;
import com.app.pojo.PurchaseInvoiceePojo;
import com.app.pojo.SupplierRelatedDetails;

@Repository("purchaseInvoiceDao")
public class PurchaseInvoiceDaoImpl implements PurchaseInvoiceDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public String[] getSuppliername() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "select supplierName from com.app.pojo.SupplierRelatedDetails";
		Query q = ses.createQuery(hql);

		List l = q.list();
		String[] arr = (String[]) ((List<SupplierRelatedDetails>) l).toArray(new String[l.size()]);

		System.out.println(l);
		System.out.println(arr);

		return arr;
	}

	/*
	 * @Override public String[] getSupplierCode() { Session ses =
	 * sessionfactory.openSession(); Transaction tx = ses.beginTransaction();
	 * tx.begin(); System.out.println("am in save dao impl"); String hql =
	 * "select SupplierCode from com.app.pojo.SupplierRelatedDetails"; Query q =
	 * ses.createQuery(hql);
	 * 
	 * List l = q.list(); String[] arr = (String[])
	 * ((List<SupplierRelatedDetails>) l).toArray(new String[l.size()]);
	 * 
	 * System.out.println(l); System.out.println(arr);
	 * 
	 * return arr; }
	 */

	@Override
	public String getgrnMaxId() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;

			String drnNo = "GRN00000";
			String drnNo1 = drnNo.concat(String.valueOf(id));
			return drnNo1;

		} catch (Exception e) {
			id = 1;

			String drnNo = "GRN00000";
			String drnNo11 = drnNo.concat(String.valueOf(id));

			System.out.println(id);
			tx.commit();
			session.close();
			return drnNo11;
		}
		/*
		 * tx.commit(); session.close();
		 */
	}

	@Override
	public String[] getProductname() {
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
	public String getsupplierAddress(PurchaseInvoiceePojo purchaseInvoiceePojo) {
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
	public String getsupplierCity(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.SupplierRelatedDetails where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());

		List<SupplierRelatedDetails> l = q.list();

		String city = null;
		for (SupplierRelatedDetails s : l) {
			city = s.getCity();
		}
		return city;
	}

	@Override
	public String getsupplierAddress(String supplierName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		System.out.println("am in save dao impl");
		String hql = "from com.app.pojo.SupplierRelatedDetails where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", supplierName);

		List<SupplierRelatedDetails> l = q.list();

		String address = null;
		for (SupplierRelatedDetails s : l) {
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
		String hql = "from com.app.pojo.SupplierRelatedDetails where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", supplierName);

		List<SupplierRelatedDetails> l = q.list();

		String city = null;
		for (SupplierRelatedDetails s : l) {
			city = s.getCity();
		}
		return city;
	}

	@Override
	public void saveParticularproducts(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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
		PurchaseInvoicedeails ts = new PurchaseInvoicedeails();
		ts.setProductName(purchaseInvoiceePojo.getProductName());
		ts.setPack(purchaseInvoiceePojo.getPack());
		ts.setManufacturingBy(purchaseInvoiceePojo.getManufacturingBy());
		ts.setPackQty(purchaseInvoiceePojo.getPackQty());
		ts.setBatchNo(purchaseInvoiceePojo.getBatchNo());
		ts.setMnfDate(purchaseInvoiceePojo.getMnfDate());
		ts.setExpDate(purchaseInvoiceePojo.getExpDate());
		ts.setQty(purchaseInvoiceePojo.getQty());
		ts.setRate(purchaseInvoiceePojo.getRate());
		ts.setAmount(purchaseInvoiceePojo.getAmount());
		ts.setMrp(purchaseInvoiceePojo.getMrp());
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
		availQty = availQty + (purchaseInvoiceePojo.getQty());
		String hql2 = "update com.app.pojo.ProductType99  set avilQty=:avilQty,batNo=:batNo,mfgdate=:mfgdate,expdate=:expdate,mrp=:mrp,utRate=:utRate where productTypeName=:productTypeName";
		Query q2 = ses.createQuery(hql2);
		q2.setParameter("productTypeName", purchaseInvoiceePojo.getProductName());
		q2.setParameter("avilQty", availQty);
		q2.setParameter("batNo", purchaseInvoiceePojo.getBatchNo());
		q2.setParameter("mfgdate",purchaseInvoiceePojo.getMnfDate());
		q2.setParameter("expdate", purchaseInvoiceePojo.getExpDate());
		q2.setParameter("mrp",purchaseInvoiceePojo.getMrp());
		q2.setParameter("utRate",purchaseInvoiceePojo.getRate());
		int res = q2.executeUpdate();
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);
		
		System.out.println(res);
		System.out.println(res);
		System.out.println(res);System.out.println(res);
		
		System.out.println(res);
		System.out.println(res);
		
		tx.commit();
		ses.close();
	}

	@Override
	public List getproductDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		int id;

		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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

		String hql1 = "from com.app.pojo.PurchaseInvoicedeails where id=:id";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("id", id);
		List l1 = q1.list();

		tx.commit();
		ses.close();
		return l1;
	}

	@Override
	public void totalSave(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

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
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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
		String address = null;
		for (PurchaseInvoicedeails p : l1) {
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
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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
	public Double getTotalAmount() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		int id;
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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

		String hql2 = "from com.app.pojo.PurchaseInvoicedeails where id=:id";
		Query q2 = ses.createQuery(hql2);
		q2.setParameter("id", id);

		List<PurchaseInvoicedeails> l2 = q2.list();

		for (PurchaseInvoicedeails pd : l2) {
			totalAmount = totalAmount + (pd.getAmount());
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
		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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

		String hql2 = "from com.app.pojo.PurchaseInvoicedeails where id=:id";
		Query q2 = ses.createQuery(hql2);
		q2.setParameter("id", id);

		List<PurchaseInvoicedeails> l2 = q2.list();

		for (PurchaseInvoicedeails pd : l2) {
			noOfItms = noOfItms + 1;
		}

		tx.commit();
		ses.close();
		return noOfItms;
	}

	@Override
	public List<PurchaseInvoiceePojo> GetDetails() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.PurchaseInvoiceePojo";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<PurchaseInvoiceePojo> l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);

		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public List getParticularSuppilerName(PurchaseInvoiceePojo purchaseInvoiceePojo) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName", purchaseInvoiceePojo.getSupplierName());
		List<PurchaseInvoiceePojo> list = q.list();
		System.out.println(list);
		tx.commit();
		ses.close();

		return list;
	}

	@Override
	public String[] getIdc() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "select supplierName from com.app.pojo.PurchaseInvoiceePojo";
		Query q = ses.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List l = q.list();
		System.out.println(l);
		String[] arr1 = (String[]) ((List<PurchaseInvoiceePojo>) l).toArray(new String[l.size()]);
		System.out.println(arr1);
		return arr1;

	}

	@Override
	public void cancelPurchaseInvoicedetilas() {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();

		int id;

		String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
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
		String hql1 = "delete from com.app.pojo.PurchaseInvoicedeails where id=:id";
		Query q1 = ses.createQuery(hql1);
		q1.setParameter("id", id);
		q1.executeUpdate();
		tx.commit();
		ses.close();
		
	}

	@Override
	public List GetDetailsOfSuplierDetails(String supplierName) {
		Session ses = sessionfactory.openSession();
		Transaction tx = ses.beginTransaction();
		tx.begin();
		String hql = "from com.app.pojo.PurchaseInvoiceePojo where supplierName=:supplierName";
		Query q = ses.createQuery(hql);
		q.setParameter("supplierName",supplierName);
		@SuppressWarnings("unchecked")
		List l = q.list();
		System.out.println("am in dao impl");
		System.out.println(l);

		tx.commit();
		ses.close();
		return l;
	}

	@Override
	public String invoiceMaxNumber() {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		tx.begin();
		Integer id = null;
		System.out.println("am in dao impl");
		try {
			String hql = "select max(id) from com.app.pojo.PurchaseInvoiceePojo";
			Query q = session.createQuery(hql);
			List<Integer> l = q.list();
			Integer[] arr = (Integer[]) l.toArray(new Integer[l.size()]);
			System.out.println("array of collection" + arr[0]);
			System.out.println("am in before adding one");
			id = (arr[0]) + 1;

			String drnNo = "LHINV00000";
			String drnNo1 = drnNo.concat(String.valueOf(id));
			return drnNo1;

		} catch (Exception e) {
			id = 1;

			String drnNo = "LHINV00000";
			String drnNo11 = drnNo.concat(String.valueOf(id));

			System.out.println(id);
			tx.commit();
			session.close();
			return drnNo11;
		}
		/*
		 * tx.commit(); session.close();
		 */

	}

}
