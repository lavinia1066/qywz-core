package com.qyzb.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qyzb.dao.YuyueDao;
import com.qyzb.entiy.Yuyue;

@Repository("yuyueDao")
public class YuyueDaoImpl implements YuyueDao {

	@Autowired
	private SessionFactory sessionFactory;

	// 获取和当前线程绑定的 Session.
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addYuyue(Yuyue yuyue) {
		// TODO Auto-generated method stub
		getSession().save(yuyue);
	}

	@Override
	public List<Yuyue> getAllYuyues() {
		// TODO Auto-generated method stub
		String hql = "from Yuyue";
		Query query = getSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Yuyue getYuyueById(String id) {
		// TODO Auto-generated method stub
		String hql = "from Yuyue y where y.id=?";
		Query query = getSession().createQuery(hql);
		query.setString(0, id);
		return (Yuyue)query.uniqueResult();
	}


}
