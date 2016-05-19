package com.stock.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import com.stock.entity.common.DBObject;

@Entity
@Table(name = "order_assets")
public class OrderAssets implements Serializable, DBObject  {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private Long order_id;
	private Long assets_id;
	private Long output_quantity;
	private Long input_quantity;
	
	public Long getId() {
		return this.id;
	}


	public Long getOrder_id() {
		return order_id;
	}


	public void setOrder_id(Long order_id) {
		this.order_id = order_id;
	}


	public Long getAssets_id() {
		return assets_id;
	}


	public void setAssets_id(Long assets_id) {
		this.assets_id = assets_id;
	}


	public Long getOutput_quantity() {
		return output_quantity;
	}


	public void setOutput_quantity(Long output_quantity) {
		this.output_quantity = output_quantity;
	}


	public Long getInput_quantity() {
		return input_quantity;
	}


	public void setInput_quantity(Long input_quantity) {
		this.input_quantity = input_quantity;
	}
	
}
