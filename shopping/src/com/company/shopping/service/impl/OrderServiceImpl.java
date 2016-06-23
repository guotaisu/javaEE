package com.company.shopping.service.impl;

import java.util.List;

import com.company.shopping.bean.Order;
import com.company.shopping.dao.OrderDAO;
import com.company.shopping.service.OrderService;
import com.company.shopping.vo.OrderVO;

public class OrderServiceImpl implements OrderService {
	private OrderDAO dao;

	public void setDao(OrderDAO dao) {
		this.dao = dao;
	}

	public boolean addOrders(List<Order> list) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteOrder(String orderId) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<?> queryOrders() {
		// TODO Auto-generated method stub

		return dao.findAll();
	}

	public List<?> queryOrders(String userid) {
		
		// TODO Auto-generated method stub
		return dao.findOrderByUser(userid);
	}

	public boolean addOrder(OrderVO order) {
		// TODO Auto-generated method stub
		dao.addOrder(order);
		return true;
	}

	public void updateOrder(String status, String orderId) {
		// TODO Auto-generated method stub
		dao.updateOrder(status, orderId);
	}

}
