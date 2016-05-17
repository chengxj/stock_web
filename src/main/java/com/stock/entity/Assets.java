package com.stock.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import com.stock.entity.common.DBObject;

@Entity
@Table(name = "assets")
public class Assets implements Serializable, DBObject {
	
	@Id
	@GeneratedValue
	private Long id;
	private String name;
	
	@Override
	public Long getId() {
		return this.id;
	}

}
