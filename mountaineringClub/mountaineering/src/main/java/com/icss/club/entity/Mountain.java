package com.icss.club.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Table(name = "mountain")
@Setter
@Getter
@EqualsAndHashCode	
@ToString
public class Mountain implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY,generator = "SELECT LAST_INSERT_ID();")
	@Column(name="m_id")
	private Integer mId;
	private String mName;
	private float mAltitude;
	private String mLocation;
	private String mClimate;
	private String mRoadmap;
	public Mountain(){}
}
