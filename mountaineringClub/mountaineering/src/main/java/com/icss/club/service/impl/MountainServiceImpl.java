package com.icss.club.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icss.club.entity.Mountain;
import com.icss.club.mapper.MountainMapper;
import com.icss.club.service.MountainService;

import tk.mybatis.mapper.common.Mapper;

@Service("mountainService")
public class MountainServiceImpl extends CommonServiceImpl<Mountain> implements MountainService{

	@Autowired
	private MountainMapper mMapper;
	
	@Override
	protected Mapper getMapper() {
		// TODO Auto-generated method stub
		return this.mMapper;
	}

}
