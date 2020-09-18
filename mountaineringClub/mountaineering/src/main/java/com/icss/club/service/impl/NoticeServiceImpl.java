package com.icss.club.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icss.club.entity.Notice;
import com.icss.club.mapper.NoticeMapper;
import com.icss.club.service.NoticeService;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service(value = "noticeService")
public class NoticeServiceImpl extends CommonServiceImpl<Notice> implements NoticeService {

	@Autowired
	private NoticeMapper nMapper;
	
	@Override
	protected Mapper getMapper() {
		// TODO Auto-generated method stub
		return this.nMapper;
	}

	@Override
	public List<Notice> getNotices() {
		Example example=new Example(Notice.class);
		Criteria criteria=example.createCriteria();
		criteria.andEqualTo("nIscancel", 0);
		criteria.andEqualTo("nIsdel", 0);
		example.setOrderByClause("n_priority DESC,n_publishtime DESC");
		return nMapper.selectByExampleAndRowBounds(example, new RowBounds(0, 5));
	}

}
