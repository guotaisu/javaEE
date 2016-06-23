package com.company.shopping.dao;

import java.util.List;

import com.company.shopping.bean.User;
import com.company.shopping.vo.UserVO;

public interface UserDAO {
	void insert(User user);
	void update(User user);
	List<?> findAll();
	List<?> findByProperty(User user);
	void insert(UserVO user);
	void delete(String id);
}
