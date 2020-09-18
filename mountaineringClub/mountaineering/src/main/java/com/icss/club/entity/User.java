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
	 * uId:�û����;
	 * uName:�ǳ�;
	 * uRealName:��ʵ����;
	 * uPassword:����;
	 * uSex:�Ա�;
	 * uCardid:���֤��;
	 * uPhone:�ֻ���;
	 * uEmail:����;
	 * uAddress:סַ;
	 * uRegdate:ע��ʱ��;
	 * uLogindate:��¼ʱ��;
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
