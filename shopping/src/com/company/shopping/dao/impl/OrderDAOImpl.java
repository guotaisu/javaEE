package com.company.shopping.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.company.shopping.dao.OrderDAO;
import com.company.shopping.vo.OrderVO;

public class OrderDAOImpl extends HibernateDaoSupport implements OrderDAO {
	public List<?> findAll() {
		// TODO Auto-generated method stub

		Session session = this.getSession();
		String hql = "select o from Order as o inner join o.user";
		Query q = session.createQuery(hql);
		// q.setParameter("id", Integer.parseInt(userId));

		return q.list();

		// return list;

	}

	public boolean addOrder(OrderVO order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(order);
		return true;
	}

	public void updateOrder(String status, String orderId) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		String hql = "update Order set status=:status where id=:id";
		Query q = session.createQuery(hql);
		q.setParameter("status", status);
		q.setParameter("id", Integer.parseInt(orderId));
		q.executeUpdate();
	}

	public List<?> findOrderByUser(String userId) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		String hql = "select o from Order as o inner join o.user as u where u.id = :id";
		Query q = session.createQuery(hql);
		q.setParameter("id", Integer.parseInt(userId));

		return q.list();
	}
}
