package com.stock.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import com.stock.entity.common.DBObject;
import com.stock.entity.enumType.AttachmentTypeEnum;

@Entity
@Table(name = "assets_attachment")
public class AssetsAttachment implements Serializable, DBObject {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private Long assets_id;
	private String num;
	private String name;
	private AttachmentTypeEnum type = AttachmentTypeEnum.WORD;
	private String url;
	private String create_user;
	private String create_time;
	
	@Override
	public Long getId() {
		return this.id;
	}

	public Long getAssets_id() {
		return assets_id;
	}

	public void setAssets_id(Long assets_id) {
		this.assets_id = assets_id;
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

	public AttachmentTypeEnum getType() {
		return type;
	}

	public void setType(AttachmentTypeEnum type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCreate_user() {
		return create_user;
	}

	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	
}