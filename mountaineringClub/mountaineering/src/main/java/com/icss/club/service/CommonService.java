package com.icss.club.service;

import java.util.List;


public interface CommonService<T> {
	
	/**
	 * ��ѯ����
	 * @return
	 */
	List<T> getAll();
	
	/**
	 * ����Id��ѯ����
	 * @param id
	 * @return
	 */
	List<T> getAllById(T t);
	
	/**
	 * ������ѯ
	 * @param t
	 * @return
	 */
	T getOne(T t);
	
	/**
	 * ����id��ѯ
	 * @param id
	 * @return
	 */
	T getById(int id);
	
	/**
	 * ���
	 * @param t
	 */
	int add(Object t);
	
	/**
	 * �޸�
	 * @param t
	 * @return 
	 */
	int update(T t);
	
	/**
	 * ɾ��
	 * @param id
	 */
	int delete(int id);
}
