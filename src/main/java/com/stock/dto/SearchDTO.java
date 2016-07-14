package com.stock.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.stock.dto.common.BaseDTO;
import com.stock.entity.Assets;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SearchDTO extends BaseDTO {
	
	public boolean success;
	public int index;
	public int count;
	public List<Assets> assets;

}
