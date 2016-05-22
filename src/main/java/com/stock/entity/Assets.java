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
@Table(name = "assets")
public class Assets implements Serializable, DBObject {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private Long type;
	private Long category;
	private String brand;
	private String num;
	private String name;
	private String model;
	private String vendor;
	private String factory_num;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date factory_date;
	private String amount;
	private String cost;
	private Long quantity;
	private Long stock_quantity;
	private String performance_indices;
	private String additional_product;
	private String platform;
	private String manager;
	private String recipients;
	private String requisitioners;
	private String custodian;
	private String description;
	private Boolean available;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date record_date;
	private String create_user;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date create_time;
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date update_time;
	
	@Override
	public Long getId() {
		return this.id;
	}

	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
	}

	public Long getCategory() {
		return category;
	}

	public void setCategory(Long category) {
		this.category = category;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public String getFactory_num() {
		return factory_num;
	}

	public void setFactory_num(String factory_num) {
		this.factory_num = factory_num;
	}

	public Date getFactory_date() {
		return factory_date;
	}

	public void setFactory_date(Date factory_date) {
		this.factory_date = factory_date;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public Long getStock_quantity() {
		return stock_quantity;
	}

	public void setStock_quantity(Long stock_quantity) {
		this.stock_quantity = stock_quantity;
	}

	public String getPerformance_indices() {
		return performance_indices;
	}

	public void setPerformance_indices(String performance_indices) {
		this.performance_indices = performance_indices;
	}

	public String getAdditional_product() {
		return additional_product;
	}

	public void setAdditional_product(String additional_product) {
		this.additional_product = additional_product;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getRecipients() {
		return recipients;
	}

	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}

	public String getRequisitioners() {
		return requisitioners;
	}

	public void setRequisitioners(String requisitioners) {
		this.requisitioners = requisitioners;
	}

	public String getCustodian() {
		return custodian;
	}

	public void setCustodian(String custodian) {
		this.custodian = custodian;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Boolean getAvailable() {
		return available;
	}

	public void setAvailable(Boolean available) {
		this.available = available;
	}

	public Date getRecord_date() {
		return record_date;
	}

	public void setRecord_date(Date record_date) {
		this.record_date = record_date;
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

	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}
	
}
