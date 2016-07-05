package com.stock.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.stock.dto.common.BaseDTO;
import com.stock.entity.Assets;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class AssetsDTO extends BaseDTO {
	
	public boolean success;
	public Assets assets;
	
}
