package com.icss.club.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icss.club.entity.Activityparticipate;
import com.icss.club.mapper.ActivityparticipateMapper;
import com.icss.club.service.ActivityparticipateService;

import tk.mybatis.mapper.common.Mapper;
@Service(value = "activityparticipateService")
public class ActivityparticipateServiceImpl extends CommonServiceImpl<Activityparticipate> implements ActivityparticipateService {

	@Autowired
	private ActivityparticipateMapper apMapper;

	@Override
	protected Mapper getMapper() {
		// TODO Auto-generated method stub
		return this.apMapper;
	}

	@Override
	public List<Activityparticipate> getActivities(String apUId) {
		// TODO Auto-generated method stub
		return apMapper.selectActivityparticipate(apUId);
	}

	@Override
	public List<Activityparticipate> getReserveActivityparticipates(String apUId, Integer apStatus) {
		// TODO Auto-generated method stub
		return apMapper.selectReserve(apUId, apStatus);
	}
	
	@Override
	public boolean updateReserve(Integer apAId,Integer apStatus,Date apDate) {
		// TODO Auto-generated method stub
		return apMapper.updateAp(apAId,apStatus,apDate);
	}
	
	@Override
	public boolean finishReserve(Integer apAId,Integer apStatus) {
		// TODO Auto-generated method stub
		return apMapper.updateApSt(apAId,apStatus);
	}
	
	@Override
	public List<Activityparticipate> IsComing(String apUId,Integer apStatus,String loginDate){
		// TODO Auto-generated method stub
		return apMapper.selectIsComing(apUId,apStatus,loginDate);
	}
	
}
