package com.qyzb.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qyzb.dao.YuyueDao;
import com.qyzb.entiy.Yuyue;
import com.qyzb.service.YuyueService;

@Service("yuyueService")
@Transactional
public class YuyueServiceImpl implements YuyueService {
	
	@Autowired
	private YuyueDao yuyueDao; 

	@Override
	public void addYuyueService(Yuyue yuyue) {
		// TODO Auto-generated method stub
		yuyueDao.addYuyue(yuyue);
	}

	@Override
	public List<Yuyue> getAllYuyues() {
		// TODO Auto-generated method stub
		return yuyueDao.getAllYuyues();
	}

	@Override
	public Yuyue getYuyue(String id) {
		// TODO Auto-generated method stub
		return yuyueDao.getYuyueById(id);
	}


}
