package com.icss.club.mapper;


import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.icss.club.entity.Activity;

import tk.mybatis.mapper.common.Mapper;

public interface ActivityMapper extends Mapper<Activity>{
	/**
	 * 根据活动ip查询活动
	 * @param apAId
	 * @return
	 */
	@Select("select a_id,a_name,a_description,a_starttime,a_status,a_estimateendtime,a_endtime from activity where a_id=#{apAId}"+" order by a_starttime DESC")
	@Results(value = {
			@Result(property = "aId",column = "a_id"),
			@Result(property = "aName",column = "a_name"),
			@Result(property = "aStarttime",column = "a_starttime"),
			@Result(property = "aDescription",column = "a_description"),
			@Result(property = "aStatus",column = "a_status"),
			@Result(property = "aEstimateendtime",column = "a_estimateendtime"),
			@Result(property = "aEndtime",column = "a_endtime")
	})
	public Activity selectActivitiesByUid(Integer apAId);
	
	/**
	 * 根据用户登录时间查询临期活动时间间隔
	 * @param loginDate
	 * @return
	 */
	@Select("select * from activity where a_starttime between #{loginDate} and DATE_ADD(#{loginDate},INTERVAL 3 DAY)")
	@Results(value = {
			@Result(property = "aId",column = "a_id"),
			@Result(property = "aStarttime",column = "a_starttime"),
			@Result(property = "aStatus",column = "a_status")
	})
	public Activity selectActivitiesByTime(String loginDate);
	
	@Select("select * from activity where a_id=#{aId} order by a_starttime DESC")
	@Results(value = {
			@Result(property = "aId",column = "a_id"),
			@Result(property = "aName",column = "a_name"),
			@Result(property = "aStarttime",column = "a_starttime"),
			@Result(property = "aEstimateendtime",column = "a_estimateendtime"),
			@Result(property = "aEndtime",column = "a_endtime"),
			@Result(property = "aDescription",column = "a_description"),
			@Result(property = "aStatus",column = "a_status"),
			@Result(property = "mountain",column = "a_m_id",one = @One(
					select="com.icss.club.mapper.MountainMapper.selectMountain")),
			@Result(property = "aType",column = "a_type"),
			@Result(property = "aLevel",column = "a_level")
	})
	public Activity selectActivity(Integer aId);

//	@Select({"<script>select * from activity",
//			"WHERE 1=1",
//            "<when test='#{name}!=null'>",
//            "AND a_name like '%'+#{name}+'%'",
//            "</when>",
//			"</script>"})
//	@Results(value = {
//			@Result(property = "aId",column = "a_id"),
//			@Result(property = "aName",column = "a_name"),
//			@Result(property = "aStarttime",column = "a_starttime"),
//			@Result(property = "aEstimateendtime",column = "a_estimateendtime"),
//			@Result(property = "aEndtime",column = "a_endtime"),
//			@Result(property = "aDescription",column = "a_description"),
//			@Result(property = "aStatus",column = "a_status")
//	})
//	public Activity selectBySearch(@Param(value="name") String name,@Param(value="time") String time);
}
