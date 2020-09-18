package com.icss.club.service.impl;

import java.util.List;

import com.icss.club.service.CommonService;

import tk.mybatis.mapper.common.Mapper;

public abstract class CommonServiceImpl<T> implements CommonService<T> {
	
	protected abstract Mapper getMapper();
	
	public List<T> getAll() {
		// TODO Auto-generated method stub
		return getMapper().selectAll();
	}

	public T getOne(T t) {
		// TODO Auto-generated method stub
		return (T) getMapper().selectOne(t);
	}
	
	public T getById(int id) {
		// TODO Auto-generated method stub
		return (T)getMapper().selectByPrimaryKey(id);
	}

	public int add(Object t) {
		// TODO Auto-generated method stub
		int result=getMapper().insert(t);
		return result;
	}

	public int update(T t) {
		// TODO Auto-generated method stub
		int result=getMapper().updateByPrimaryKeySelective(t);
		return result;
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		int result=getMapper().deleteByPrimaryKey(id);
		return result;
	}
	
	public List<T> getAllById(T t){
		return getMapper().select(t);
	}
	
	
}
