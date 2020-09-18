package com.icss.club.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Table(name = "admin")
@Data
public class Admin implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * adId:用户编号;
	 * adName:昵称;
	 * adRealName:真实姓名;
	 * adPassword:密码;
	 * adSex:性别;
	 * adCardid:身份证号;
	 * adPhone:手机号;
	 * adEmail:邮箱;
	 * adAddress:住址;
	 * role:角色(默认为0);
	 * adRegdate:注册时间;
	 * adLogindate:登录时间;
	 */
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY,generator = "select last_insert_id()")
	@Column(name="ad_id")
	private Integer adId;
	private String adName;
	private String adRealname;
	private String adPassword;
	private Integer adSex;
	private String adCardid;
	private String adPhone;
	private String adEmail;
	private String adAddress;
	private Integer adRole;
	private Date adRegdate;
	private Date adLogindate;
}
