package com.stock.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import com.stock.entity.common.DBObject;

@Entity
@Table(name = "log")
public class Log implements Serializable, DBObject {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private Long userid;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date oper_time;
	private String project;
	private String module;
	private String remark;
	
	@Override
	public Long getId() {
		return this.id;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Date getOper_time() {
		return oper_time;
	}

	public void setOper_time(Date oper_time) {
		this.oper_time = oper_time;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
