package com.qyzb.dao;

import java.util.List;

import com.qyzb.entiy.Yuyue;

public interface YuyueDao {

	public void addYuyue(Yuyue yuyue);

	public List<Yuyue> getAllYuyues();

	public Yuyue getYuyueById(String id);


}
