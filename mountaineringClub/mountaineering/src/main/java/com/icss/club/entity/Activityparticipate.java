package com.icss.club.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Table(name = "activityparticipate")
@Setter
@Getter
@EqualsAndHashCode	
@ToString
@JsonIgnoreProperties(value = {"javassistProxyFactory", "handler"})
public class Activityparticipate implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY,generator = "select last_insert_id()")
	@Column(name="ap_id")
	private Integer apId;
	@Transient
	private Activity activity=new Activity();
	private Integer apAId;
	private String apUId;
	private Date apReservationtime;
	private Date apCanceledtime;
	private Integer apStatus;
	public Activityparticipate() {
		
	}
}
