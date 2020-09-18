package com.icss.club.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Table(name = "notice")
@Data
public class Notice implements Serializable {	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY,generator = "select last_insert_id()")
	@Column(name="n_id")
	private Integer nId;
	private String nTitle;
	private String nContent;
	private Date nPublishtime;
	private Integer nIscancel;
	private Date nCanceltime;
	private Integer nIsdel;
	private Date nDeletetime;
	private Integer nPriority;
	@Transient
	private Activity activity;
	private Integer nUId;
}
