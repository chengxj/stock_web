package com.stock.dto;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.stock.dto.common.BaseDTO;
import com.stock.entity.AssetsType;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class AssetsTypeDTO extends BaseDTO {
	
	public List<AssetsType> AssetsTypes;
	
}
