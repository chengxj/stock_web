package com.stock.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import com.stock.entity.common.DBObject;
import com.stock.entity.enumType.OrderStatusEnum;

@Entity
@Table(name = "order")
public class OrderHistory implements Serializable, DBObject {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private String order;
	@Enumerated(EnumType.STRING)
	private OrderStatusEnum status = OrderStatusEnum.OUTPUT;
	private String operator;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date operation_time;
	private String description;
	private String create_user;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date create_time;
	
	@Override
	public Long getId() {
		return this.id;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}


	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public Date getOperation_time() {
		return operation_time;
	}

	public void setOperation_time(Date operation_time) {
		this.operation_time = operation_time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCreate_user() {
		return create_user;
	}

	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	
	public OrderStatusEnum getStatus() {
		return status;
	}

	public void setStatus(OrderStatusEnum status) {
		this.status = status;
	}

}