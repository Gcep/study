package com.icss.club.mapper;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.icss.club.entity.Mountain;

import tk.mybatis.mapper.common.Mapper;

public interface MountainMapper extends Mapper<Mountain>{

	@Select("select * from mountain where m_id=#{aMId}")
	@Results(value = {
			@Result(property = "mId",column = "m_id"),
			@Result(property = "mName",column = "m_name"),
			@Result(property = "mAltitude",column = "m_altitude"),
			@Result(property = "mLocation",column = "m_location"),
			@Result(property = "mClimate",column = "m_climate"),
			@Result(property = "mRoadmap",column = "m_roadmap")
	})
	public Mountain selectMountain(Integer aMId);
}
