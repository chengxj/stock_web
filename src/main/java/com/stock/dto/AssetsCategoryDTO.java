package com.stock.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.stock.dto.common.BaseDTO;
import com.stock.entity.AssetsCategory;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class AssetsCategoryDTO extends BaseDTO {
	
	public List<AssetsCategory> AssetsCategories;
	
}
