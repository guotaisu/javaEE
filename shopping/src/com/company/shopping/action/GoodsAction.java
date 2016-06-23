package com.company.shopping.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.company.shopping.bean.GType;
import com.company.shopping.bean.Goods;
import com.company.shopping.service.GTService;
import com.company.shopping.service.GoodsService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class GoodsAction extends ActionSupport implements ModelDriven<GType> {

	private static final long serialVersionUID = 1L;
	private GoodsService goodsService;
	private GTService gtService;

	private int totalPage = 0;
	private int currentPage = 1;
	private int rowTotal = 0;

	public int getRowTotal() {
		return rowTotal;
	}

	public void setRowTotal(int rowTotal) {
		this.rowTotal = rowTotal;
	}

	private GType type = new GType();

	public void setGtService(GTService gtService) {
		this.gtService = gtService;
	}

	private List<?> list;
	private List<?> gtlist;
	private Goods goods;

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public List<?> getGtlist() {
		return gtlist;
	}

	public void setGtlist(List<?> gtlist) {
		this.gtlist = gtlist;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public String list() {
		if (totalPage == 0) {
			totalPage = goodsService.getTotalPage(10);
		}
		if (totalPage == 0) {
			rowTotal = goodsService.getAllGoods().size();
		}
		if (currentPage < 0) {
			currentPage = 1;
		}
		list = goodsService.getPage(currentPage);

		return "success";
	}

	public String addgoodstype() {
		gtlist = gtService.getAll();
		return "success";
	}

	public String savetype() {
		gtService.save(type);
		return "success";
	}

	public GType getModel() {
		// TODO Auto-generated method stub
		return type;
	}

	public String typelist() {
		gtlist = gtService.getAll();
		return SUCCESS;
	}

	public String addgoods() {
		gtlist = gtService.getAll();
		return SUCCESS;
	}

	public String savegoods() throws Exception {
		System.out.println(goods.getGoodsname());
		System.out.println(goods.getGoodstype().getId());
		goodsService.save(goods);
		return SUCCESS;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String deletegood() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String stid = request.getParameter("id");
		System.out.println("stid=" + stid);
		int id = Integer.valueOf(stid);
		if (goodsService.delete(id) == 1)
			return SUCCESS;
		return ERROR;
	}

	public String modifygood() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		 request.setCharacterEncoding("UTF-8");
		String stid = request.getParameter("id");
		System.out.println("stid=" + stid);
		int id = Integer.valueOf(stid);
		// 先进行数据提取
		Goods goods = goodsService.getById(id);
		int type = Integer.valueOf(goods.getGoodstype().getId());
		GType goodstype = new GType();
		goodstype.setId(type);
		String picpath = goods.getGoodspic();
		String name = request.getParameter("name");
		Float price = Float.valueOf(request.getParameter("price"));
		int count = Integer.valueOf(request.getParameter("count"));
		String goodsdesc = request.getParameter("goodsdesc");
		System.out.println("good===============sdesc" + goodsdesc);
		goodsService.delete(id);
		// vo
		Goods good = new Goods(name, goodstype, count, price, picpath, goodsdesc);
		goodsService.save(good);
		return SUCCESS;
	}

	// goods 进行struts2进行传值
	public String displayInfo() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String stid = request.getParameter("id");
		int id = Integer.valueOf(stid);
		goods = goodsService.getById(id);
		return SUCCESS;
	}
}
