package com.qyzb.dao.impl;

import java.util.List;

import javax.xml.soap.Detail;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qyzb.dao.DetailsDao;
import com.qyzb.entiy.Details;
import com.qyzb.entiy.Yuyue;

@Repository("detailsDao")
public class DetailsDaoImpl implements DetailsDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addDetails(Details details) {
		// TODO Auto-generated method stub
		getSession().save(details);
	}

	@Override
	public List<Details> getDetail(String id) {
		// TODO Auto-generated method stub
		String hql = "from Details d where d.yuyueId = ?";
		Query query = getSession().createQuery(hql);
		query.setString(0, id);
		return query.list();
	}

	@Override
	public boolean updateDetails(Details details) {
		// TODO Auto-generated method stub
		String hql = "update Details d set d.projectDetails = ?, d.projectDate = ? where d.yuyueId = ? ";
		Query query = getSession().createQuery(hql);
		query.setString(0, details.getProjectDetails());
		query.setString(1, details.getProjectDate());
		query.setInteger(2, details.getYuyueId());
		return (query.executeUpdate() > 0);
	}

}
