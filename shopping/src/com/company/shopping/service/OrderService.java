package com.company.shopping.service;

import java.util.List;

import com.company.shopping.bean.Order;
import com.company.shopping.vo.OrderVO;

public interface OrderService {
	List<?> queryOrders();

	List<?> queryOrders(String userid);

	boolean addOrders(List<Order> list);

	boolean addOrder(OrderVO order);

	boolean deleteOrder(String orderId);

	void updateOrder(String status, String orderId);

}
