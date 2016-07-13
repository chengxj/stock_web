package com.stock.dto;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.stock.dto.common.BaseDTO;
import com.stock.entity.Assets;
import com.stock.entity.Order;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class InStockDTO extends BaseDTO {
	
	public boolean success;
	public Order order;
	public List<Assets> assets;
	
}