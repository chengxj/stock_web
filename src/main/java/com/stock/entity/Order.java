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
public class Order implements Serializable, DBObject {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private String order_num;
	@Enumerated(EnumType.STRING)
	private OrderStatusEnum status = OrderStatusEnum.OUTPUT;
	private String library_collar;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date delivery_time;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date reception_time;
	private String accepter;
	private String acceptance_num;
	private String incoming_leader;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date storage_time;
	
	@Override
	public Long getId() {
		return this.id;
	}

	public String getOrder_num() {
		return order_num;
	}

	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}

	public OrderStatusEnum getStatus() {
		return status;
	}

	public void setStatus(OrderStatusEnum status) {
		this.status = status;
	}

	public String getLibrary_collar() {
		return library_collar;
	}

	public void setLibrary_collar(String library_collar) {
		this.library_collar = library_collar;
	}

	public Date getDelivery_time() {
		return delivery_time;
	}

	public void setDelivery_time(Date delivery_time) {
		this.delivery_time = delivery_time;
	}

	public Date getReception_time() {
		return reception_time;
	}

	public void setReception_time(Date reception_time) {
		this.reception_time = reception_time;
	}

	public String getAccepter() {
		return accepter;
	}

	public void setAccepter(String accepter) {
		this.accepter = accepter;
	}

	public String getAcceptance_num() {
		return acceptance_num;
	}

	public void setAcceptance_num(String acceptance_num) {
		this.acceptance_num = acceptance_num;
	}

	public String getIncoming_leader() {
		return incoming_leader;
	}

	public void setIncoming_leader(String incoming_leader) {
		this.incoming_leader = incoming_leader;
	}

	public Date getStorage_time() {
		return storage_time;
	}

	public void setStorage_time(Date storage_time) {
		this.storage_time = storage_time;
	}

}
