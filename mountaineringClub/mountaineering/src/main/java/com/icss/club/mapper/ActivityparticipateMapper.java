package com.icss.club.mapper;


import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.FetchType;

import com.icss.club.entity.Activityparticipate;

import tk.mybatis.mapper.common.Mapper;


public interface ActivityparticipateMapper extends Mapper<Activityparticipate> {
	/**
	 * 参与的活动
	 * @return
	 */
	@Select("select * from activityparticipate where ap_u_id=#{apUId}")
	@Results({
		@Result(property = "apId",column = "ap_id"),
		@Result(property = "apUId",column = "ap_u_id"),
		@Result(property = "apStatus",column = "ap_status"),
		@Result(property = "apReservationtime",column = "ap_reservationtime"),
		@Result(property = "apCanceledtime",column = "ap_canceledtime"),
		@Result(property = "activity",column = "ap_a_id",one = @One(
				select="com.icss.club.mapper.ActivityMapper.selectActivitiesByUid",
				 fetchType= FetchType.LAZY))
	})
	public List<Activityparticipate> selectActivityparticipate(String apUId);
	
	/**
	 * 预订但未完成
	 * @return
	 */
	@Select("select * from activityparticipate where ap_u_id=#{apUId} "+"and ap_status=#{apStatus}")
	@Results({
		@Result(property = "apId",column = "ap_id"),
		@Result(property = "apUId",column = "ap_u_id"),
		@Result(property = "apStatus",column = "ap_status"),
		@Result(property = "apReservationtime",column = "ap_reservationtime"),
		@Result(property = "apCanceledtime",column = "ap_canceledtime"),
		@Result(property = "activity",column = "ap_a_id",one = @One(
				select="com.icss.club.mapper.ActivityMapper.selectActivitiesByUid",
				 fetchType= FetchType.LAZY))
	})
	public List<Activityparticipate> selectReserve(@Param("apUId")String apUId,@Param("apStatus")Integer apStatus);
	
	/**
	 * 更新
	 * @param apAId
	 * @param apStatus
	 * @param apDate
	 * @return
	 */
	@Update("update activityparticipate set ap_status=#{apStatus},ap_canceledtime=#{apDate} where ap_a_id=#{apAId} and ap_status=0")
	@Results({
		@Result(property = "apId",column = "ap_id"),
		@Result(property = "apUId",column = "ap_u_id"),
		@Result(property = "apStatus",column = "ap_status"),
		@Result(property = "apReservationtime",column = "ap_reservationtime"),
		@Result(property = "apCanceledtime",column = "ap_canceledtime"),
		@Result(property = "activity",column = "ap_a_id",one = @One(
				select="com.icss.club.mapper.ActivityMapper.selectActivitiesByUid",
				 fetchType= FetchType.LAZY))
	})
	public boolean updateAp(@Param("apAId")Integer apAId,@Param("apStatus")Integer apStatus,@Param("apCanceledtime")Date apDate);
	
	/**
	 * 完成
	 * @param apAId
	 * @param apStatus
	 * @return
	 */
	@Update("update activityparticipate set ap_status=#{apStatus} where ap_a_id=#{apAId} and ap_status=0")
	@Results({
		@Result(property = "apId",column = "ap_id"),
		@Result(property = "apUId",column = "ap_u_id"),
		@Result(property = "apStatus",column = "ap_status"),
		@Result(property = "apReservationtime",column = "ap_reservationtime"),
		@Result(property = "apCanceledtime",column = "ap_canceledtime"),
		@Result(property = "apAId",column = "ap_a_id")
	})
	public boolean updateApSt(@Param("apAId")Integer apAId,@Param("apStatus")Integer apStatus);
	
	/**
	 * 查询是否有活动临期
	 * @param apUId
	 * @param apStatus
	 * @return
	 */
	@Select("select * from activityparticipate where ap_u_id=#{apUId} and ap_status=#{apStatus}")
	@Results({
		@Result(property = "apId",column = "ap_id"),
		@Result(property = "apUId",column = "ap_u_id"),
		@Result(property = "apStatus",column = "ap_status"),
		@Result(property = "activity",column = "ap_a_id",one=@One(
				select="com.icss.club.mapper.ActivityMapper.selectActivitiesByTime",
				 fetchType= FetchType.LAZY))
	})
	public List<Activityparticipate> selectIsComing(@Param("apUId")String apUId,@Param("apStatus")Integer apStatus,String loginDate);

//	/**
//	 * 根据活动名称时间查询已参与活动
//	 * @return
//	 */
//	@Select("select * from activityparticipate where ap_u_id=#{apUId}")
//	@Results({
//		@Result(property = "apId",column = "ap_id"),
//		@Result(property = "apUId",column = "ap_u_id"),
//		@Result(property = "activity",column = "ap_a_id",one = @One(
//				select="com.icss.club.mapper.ActivityMapper.selectBySearch",
//				 fetchType= FetchType.LAZY))
//	})
//	public List<Activityparticipate> selectActRe(@Param(value="name") String name,@Param(value="time") String time,@Param("apUId") String apUId);
}