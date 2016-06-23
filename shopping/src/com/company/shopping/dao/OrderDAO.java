package com.company.shopping.dao;

import java.util.List;

import com.company.shopping.vo.OrderVO;

public interface OrderDAO {
	List<?> findAll();
	
	List<?> findOrderByUser(String userId);

	boolean addOrder(OrderVO order);

	void updateOrder(String status,String orderId);
}
