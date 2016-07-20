package com.stock.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.stock.dto.*;
import com.stock.request.*;
import com.stock.service.CommonService;

@Controller
public class ApiController {
	
	 @Autowired
	 private CommonService commonService;	
	 
	 @RequestMapping(value = "/api/get_all_assets_type", method = RequestMethod.GET)
	 @ResponseBody
	 public AssetsTypeDTO getAllAssetsType() {
		  return commonService.getAllAssetsTypes();
	 }
	 
	 @RequestMapping(value = "/api/get_all_category", method = RequestMethod.GET)
	 @ResponseBody
	 public AssetsCategoryDTO getAllAssetsCategories() {
		  return commonService.getAllAssetsCategories();
	 }
	 
	 @RequestMapping(value = "/api/create_assets", method = RequestMethod.POST)
	 @ResponseBody
	 public AssetsDTO createAssets(@RequestBody AssetsRequest request) {
		 return commonService.createAssets(request);		 
	 }
	 
	 @RequestMapping(value = "/api/create_order", method = RequestMethod.POST)
	 @ResponseBody
	 public OrderDTO createOrder(@RequestBody OrderRequest request) {
		 return commonService.createOrder(request);		 
	 }
	 
	 @RequestMapping(value = "/api/get_instock_detail", method = RequestMethod.POST)
	 @ResponseBody
	 public InStockDTO getInStockDetail(@RequestBody InStockRequest request) {
		 return commonService.getInStockDetail(request);
	 }
	 
	 @RequestMapping(value = "/api/search_assets", method = RequestMethod.POST)
	 @ResponseBody
	 public SearchDTO searchAssets(@RequestBody SearchRequest request) {
		  return commonService.searchAssets(request);
	 }
	 	 
	 @RequestMapping(value = "/api/search_activities", method = RequestMethod.POST)
	 @ResponseBody
	 public ActivitiesDTO searchActivities(@RequestBody ActivitiesRequest request) {
		  return commonService.searchActivities(request);
	 }
	 
	 @RequestMapping(value = "/api/get_registration_detail", method = RequestMethod.POST)
	 @ResponseBody
	 public RegistrationDetailDTO getRegistrationDetail(@RequestBody RegistrationDetailRequest request){
		 return commonService.getRegistrationDetail(request);
	 }
	 
	 @RequestMapping(value = "/api/add_registration", method = RequestMethod.POST)
	 @ResponseBody
	 public RegistrationDTO addRegistration(@RequestBody RegistrationRequest request){
		 return commonService.addRegistration(request);
	 }
	 
	 @RequestMapping(value = "/api/edit_registration", method = RequestMethod.POST)
	 @ResponseBody
	 public RegistrationDTO editRegistration(@RequestBody RegistrationRequest request){
		 return commonService.editRegistration(request);
	 }
	 
	 @RequestMapping(value = "/api/delete_registration", method = RequestMethod.POST)
	 @ResponseBody
	 public void deleteRegistration(@RequestBody RegistrationRequest request) {
		 commonService.deleteRegistration(request);
	 }	 
	 
	@RequestMapping(value = "/api/import", method = RequestMethod.POST)
	@ResponseBody
	public ImportDTO uploadImg(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		return commonService.importAssets(file);
	}
	
}