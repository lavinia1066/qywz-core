package com.qyzb.service;

import java.util.List;

import com.qyzb.entiy.Yuyue;

public interface YuyueService {
	
	public void addYuyueService(Yuyue yuyue);

	public List<Yuyue> getAllYuyues();
	
	public Yuyue getYuyue(String id);
}
