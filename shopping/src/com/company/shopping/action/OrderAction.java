package com.company.shopping.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.company.shopping.bean.User;
import com.company.shopping.service.OrderService;
import com.company.shopping.vo.OrderVO;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("all")
public class OrderAction extends ActionSupport {

	private int gid;

	private int cid;

	private float buytotal;

	private String oid;

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public float getBuytotal() {
		return buytotal;
	}

	public void setBuytotal(float buytotal) {
		this.buytotal = buytotal;
	}

	private List<?> list;

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	private OrderService service;

	public void setService(OrderService service) {
		this.service = service;
	}

	public OrderService getService() {
		return service;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String addOrder() {
		OrderVO order = new OrderVO();
		order.setBuytime(new Date());
		order.setGid(gid);
		User sessionUser = (User) ServletActionContext.getRequest()
		.getSession().getAttribute("user");
		order.setUid(sessionUser.getId());
		order.setStatus("2");
		order.setTotal(buytotal);
		service.addOrder(order);
		return SUCCESS;
	}

	public String showOrder() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User sessionUser = (User) session.getAttribute("user");
		if (sessionUser.getRole().getId() == 1) {
			list = service.queryOrders();
			return SUCCESS;
		} else {
			list = service.queryOrders(sessionUser.getId()+"");
			return NONE;
		}
	}

	public String payOrder() {
		service.updateOrder("1", oid);
		return SUCCESS;
	}

	public String deliveryOrder() {
		service.updateOrder("3", oid);
		return SUCCESS;
	}
}
