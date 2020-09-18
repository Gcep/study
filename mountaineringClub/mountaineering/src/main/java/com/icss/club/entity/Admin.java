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
	 * adId:�û����;
	 * adName:�ǳ�;
	 * adRealName:��ʵ����;
	 * adPassword:����;
	 * adSex:�Ա�;
	 * adCardid:���֤��;
	 * adPhone:�ֻ���;
	 * adEmail:����;
	 * adAddress:סַ;
	 * role:��ɫ(Ĭ��Ϊ0);
	 * adRegdate:ע��ʱ��;
	 * adLogindate:��¼ʱ��;
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
