package com.company.shopping.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.company.shopping.bean.Goods;
import com.company.shopping.bean.ShopCar;
import com.company.shopping.bean.User;
import com.company.shopping.service.CarService;
import com.company.shopping.service.GTService;
import com.company.shopping.service.GoodsService;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	
	private int buytotal;
	private CarService carService;
	
	private List<?> elist;

	private int gid;//从页面传递过来的
	
	private Goods goods;

	private String goodsname;

	private GoodsService goodsService;
	private GTService gtService;
	private int id;

	private List<?> shopCarinGoods;

	private List<?> topTypeList; // 顶层分类

	/**
	 * 添加购物车
	 * @return
	 */
	public String addcar(){
		ShopCar sc = new ShopCar();
		User user = new User();
		//User sessionUser = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		user.setId(1);
		sc.setUser(user);
		Goods goods = new Goods();
		System.out.println(gid);
		goods.setId(gid);
		
//		Set<Goods> goodsList = new HashSet<Goods>();
//		goodsList.add(goods);
		sc.setGoods(goods);
		
		sc.setGname(goodsname);
		sc.setBuytime(new Date());
		sc.setBuytotal(buytotal);
		carService.addCar(sc);
		return SUCCESS;
	}
	@Override
	public String execute() throws Exception {
		topTypeList = gtService.findByPid(0);
		elist = goodsService.getByType(2);
		System.out.println(elist.size());
		return super.execute();
	}


	public int getBuytotal() {
		return buytotal;
	}


	public List<?> getElist() {
		return elist;
	}
	
	

	public int getGid() {
		return gid;
	}

	public Goods getGoods() {
		return goods;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public int getId() {
		return id;
	}

	public List<?> getShopCarinGoods() {
		return shopCarinGoods;
	}

	public List<?> getTopTypeList() {
		return topTypeList;
	}

	public void setBuytotal(int buytotal) {
		this.buytotal = buytotal;
	}

	public void setCarService(CarService carService) {
		this.carService = carService;
	}

	public void setElist(List<?> elist) {
		this.elist = elist;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	
	
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	public void setGtService(GTService gtService) {
		this.gtService = gtService;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setShopCarinGoods(List<?> shopCarinGoods) {
		this.shopCarinGoods = shopCarinGoods;
	}

	public void setTopTypeList(List<?> topTypeList) {
		this.topTypeList = topTypeList;
	}

	public String showcar() {
		User sessionUser = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		
		//int uid = sessionUser.getId();
		shopCarinGoods = carService.getByUid(1);
		return SUCCESS;
	}

	public String showgoods() throws Exception {
		goods = goodsService.getById(id);
		return SUCCESS;
	}

}
