package com.company.shopping.vo;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tbl_order")
public class OrderVO implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer uid;
	private Integer gid;

	private Date buytime;
	private Float total;
	private String status;

	/** default constructor */
	public OrderVO() {
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "uid")
	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	@Column(name = "gid")
	public Integer getGid() {
		return gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	@Column(name = "buytime")
	public Date getBuytime() {
		return this.buytime;
	}

	public void setBuytime(Date buytime) {
		this.buytime = buytime;
	}

	@Column(name = "total", precision = 20, scale = 0)
	public Float getTotal() {
		return this.total;
	}

	public void setTotal(Float total) {
		this.total = total;
	}

	@Column(name = "status")
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}