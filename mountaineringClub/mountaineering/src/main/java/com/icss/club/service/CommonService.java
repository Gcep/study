package com.icss.club.service;

import java.util.List;


public interface CommonService<T> {
	
	/**
	 * 查询所有
	 * @return
	 */
	List<T> getAll();
	
	/**
	 * 根据Id查询所有
	 * @param id
	 * @return
	 */
	List<T> getAllById(T t);
	
	/**
	 * 条件查询
	 * @param t
	 * @return
	 */
	T getOne(T t);
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	T getById(int id);
	
	/**
	 * 添加
	 * @param t
	 */
	int add(Object t);
	
	/**
	 * 修改
	 * @param t
	 * @return 
	 */
	int update(T t);
	
	/**
	 * 删除
	 * @param id
	 */
	int delete(int id);
}
