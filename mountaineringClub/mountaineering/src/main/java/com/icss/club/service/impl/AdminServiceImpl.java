package com.icss.club.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icss.club.entity.Admin;
import com.icss.club.mapper.AdminMapper;
import com.icss.club.service.AdminService;

import tk.mybatis.mapper.common.Mapper;
@Service(value = "adminService")
public class AdminServiceImpl extends CommonServiceImpl<Admin> implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	protected Mapper getMapper() {
		
		return this.adminMapper;
	}

}
