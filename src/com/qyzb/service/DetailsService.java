package com.qyzb.service;

import java.util.List;

import com.qyzb.entiy.Details;
import com.qyzb.entiy.Yuyue;

public interface DetailsService {
	
	public void addDetailsService(Details details);
	
	public List<Details> getDetils(String id);
	
	public boolean updateDetails(Details details);

	
}
