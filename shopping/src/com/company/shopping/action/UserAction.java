package com.company.shopping.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.company.shopping.bean.User;
import com.company.shopping.service.UserService;
import com.company.shopping.util.VerifyCode;
import com.company.shopping.vo.UserVO;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private UserService userService;
	private String username;
	private String password;
	private UserVO user;
	private String userid;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String list() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

	public String checklogin() throws Exception {
		// TODO Auto-generated method stub
		User user = userService.checklogin(username, password);
		HttpSession session;
		if (user != null) {
			session = ServletActionContext.getRequest().getSession();
			session.setAttribute("user", user);

			if (user.getRole().getId() == 1) {
				list = userService.getAllUsers();
				return "success1";
			} else {
				return "success2";
			}
		} else
			return "error";
	}

	public String register() {
		userService.register(user);
		return SUCCESS;
	}

	public String logout() {
		ServletActionContext.getRequest().removeAttribute("user");
		return SUCCESS;
	}

	public String verifycode() {

		HttpServletRequest request = ServletActionContext.getRequest();

		HttpServletResponse response = ServletActionContext.getResponse();
		VerifyCode.getVerifyCode(request, response);

		return null;
	}

	private List<?> list;

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	public String userlist() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User u = (User) session.getAttribute("user");
		if (u.getRole().getId() == 1) {
			list = userService.getAllUsers();
			return "success";
		} else {
			return "none";
		}

	}

	public String deleteuser() {

		userService.delete(userid);
		return SUCCESS;
	}
}
