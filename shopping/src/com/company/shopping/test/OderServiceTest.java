package com.company.shopping.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.company.shopping.bean.Order;
import com.company.shopping.service.OrderService;

public class OderServiceTest {
	public static void main(String[] args) {
		String[] xmls =  {"/src/spring.xml","/src/proxool.xml"};
		ApplicationContext ctx = new FileSystemXmlApplicationContext(xmls);
		OrderService service = (OrderService)ctx.getBean("orderService");
		//List<Order> list = service.queryOrders();
	}
}
