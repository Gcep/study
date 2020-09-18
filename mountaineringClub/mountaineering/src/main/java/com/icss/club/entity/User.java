package com.icss.club.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Table(name = "user")
@Data
public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * uId:用户编号;
	 * uName:昵称;
	 * uRealName:真实姓名;
	 * uPassword:密码;
	 * uSex:性别;
	 * uCardid:身份证号;
	 * uPhone:手机号;
	 * uEmail:邮箱;
	 * uAddress:住址;
	 * uRegdate:注册时间;
	 * uLogindate:登录时间;
	 */
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY,generator = "select last_insert_id()")
	@Column(name="u_id")
	private Integer uId;
	private String uName;
	private String uRealname;
	private String uPassword;
	private Integer uSex;
	private String uCardid;
	private String uPhone;
	private String uEmail;
	private String uAddress;
	private Date uRegdate;
	private Date uLogindate;
	private Integer uStatus;
	
}
