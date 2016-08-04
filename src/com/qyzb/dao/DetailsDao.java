package com.qyzb.dao;

import java.util.List;

import com.qyzb.entiy.Details;
import com.qyzb.entiy.Yuyue;



public interface DetailsDao {
	
	public void addDetails(Details details);

	public List<Details> getDetail(String id);
	
	public boolean updateDetails(Details details);

}
