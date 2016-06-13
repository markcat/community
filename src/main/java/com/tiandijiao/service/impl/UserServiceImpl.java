package com.tiandijiao.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tiandijiao.dao.IUserDao;
import com.tiandijiao.service.IUserService;
import com.tiandijiao.pojo.User;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private IUserDao userDao;
	@Override
	public User getUserById(int userId) {
		return this.userDao.selectByPrimaryKey(userId);
	}

}
