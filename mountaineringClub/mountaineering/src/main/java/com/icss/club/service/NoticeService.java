package com.icss.club.service;

import java.util.List;

import com.icss.club.entity.Notice;

public interface NoticeService extends CommonService<Notice>{

	public List<Notice> getNotices();
	
}
