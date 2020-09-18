package com.icss.club.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icss.club.entity.User;
import com.icss.club.mapper.UserMappper;
import com.icss.club.service.UserService;

import tk.mybatis.mapper.common.Mapper;

@Service(value = "userService")
public class UserServiceImpl extends CommonServiceImpl<User> implements UserService{

	@Autowired
	private UserMappper userMapper;
	
	@Override
	protected Mapper getMapper() {
		// TODO Auto-generated method stub
		return this.userMapper;
	}
	
}
