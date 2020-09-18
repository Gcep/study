package com.icss.club.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;


import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Table(name = "activity")
@Setter
@Getter
@ToString
@EqualsAndHashCode	
public class Activity implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY,generator = "select last_insert_id()")
	@Column(name="a_id")
	private Integer aId;
	private String aName;
	private Date aStarttime;
	private Date aEstimateendtime;
	private Date aEndtime;
	private String aDescription;
	private Integer aStatus;
	private Integer aMId;
	@Transient
	private Mountain mountain;
	private Integer aType;
	private String aLevel;
	public Activity(){
		
	}
}
