package com.qyzb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qyzb.dao.DetailsDao;
import com.qyzb.entiy.Details;
import com.qyzb.entiy.Yuyue;
import com.qyzb.service.DetailsService;

@Service("detailsService")
@Transactional
public class DetailsServiceImpl implements DetailsService {

	@Autowired
	private DetailsDao detailsDao;

	@Override
	public void addDetailsService(Details details) {
		// TODO Auto-generated method stub
		detailsDao.addDetails(details);
	}

	@Override
	public List<Details> getDetils(String id) {
		// TODO Auto-generated method stub
		return detailsDao.getDetail(id);
	}

	@Override
	public boolean updateDetails(Details details) {
		// TODO Auto-generated method stub
		return detailsDao.updateDetails(details);
	}

}
