package com.app.dao;

import java.util.List;

import com.app.pojo.Pharmacy;

public interface PharmacyDAO
{
	public void savePharmacy(Pharmacy ph);

	public List<Pharmacy> listPharmacy();

	public List<Pharmacy> getPharmacy(int pharId);

	public void updatePharmacy(Pharmacy ph);

	public Integer[] idsPharmacy();

	public Integer getIdPharmacy();

	public String[] getIdcPharmacy();

	public List<Pharmacy> getWholePharmacy();

	public List<Pharmacy> getWholePharmacyNames(String pharName);

	public List getParticularPharmacy(Pharmacy ph);

	public Integer getMaxIdOfPharmacy();
}
