package com.stock.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.stock.dao.CommonDao;
import com.stock.dao.SearchDao;
import com.stock.dto.ActivitiesDTO;
import com.stock.dto.AssetsCategoryDTO;
import com.stock.dto.AssetsDTO;
import com.stock.dto.AssetsTypeDTO;
import com.stock.dto.ImportDTO;
import com.stock.dto.InStockDTO;
import com.stock.dto.OrderDTO;
import com.stock.dto.RegistrationDTO;
import com.stock.dto.RegistrationDetailDTO;
import com.stock.dto.SearchDTO;
import com.stock.entity.Assets;
import com.stock.entity.Order;
import com.stock.entity.Registration;
import com.stock.request.ActivitiesRequest;
import com.stock.request.AssetsRequest;
import com.stock.request.InStockRequest;
import com.stock.request.OrderRequest;
import com.stock.request.RegistrationDetailRequest;
import com.stock.request.RegistrationRequest;
import com.stock.request.SearchRequest;

@Service
public class CommonService {

	protected Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private SearchDao searchDao;

	@Autowired
	private CommonDao commonDao;

	@Autowired
	private DTOHelper dtoHelper;

	public AssetsTypeDTO getAllAssetsTypes() {
		AssetsTypeDTO dto = new AssetsTypeDTO();
		dto.AssetsTypes = searchDao.getAllAssetsType();
		return dto;
	}

	public AssetsCategoryDTO getAllAssetsCategories() {
		AssetsCategoryDTO dto = new AssetsCategoryDTO();
		dto.AssetsCategories = searchDao.getAllAssetsCategory();
		return dto;
	}

	/**
	 * 
	 * @param request
	 * @return
	 */
	public ActivitiesDTO searchActivities(ActivitiesRequest request) {
		ActivitiesDTO dto = new ActivitiesDTO();
		dto.activities = searchDao.searchActivities(request.searchTerm, request.index);
		dto.num = searchDao.getSearchActivitiesCount(request.searchTerm);
		dto.pageNum = (int) (dto.num + 10 - 1) / 10;
		return dto;
	}

	/**
	 * 
	 * @param request
	 * @return
	 */
	public RegistrationDetailDTO getRegistrationDetail(RegistrationDetailRequest request) {
		RegistrationDetailDTO dto = new RegistrationDetailDTO();
		dto.activities = searchDao.getActivitiesById(request.activities_id);
		dto.registrations = searchDao.getRegistrations(request.activities_id);
		return dto;
	}

	/**
	 * 
	 * @param request
	 * @return
	 */
	public RegistrationDTO addRegistration(RegistrationRequest request) {
		Registration registration = new Registration();
		registration.setActivities_id(request.activities_id);
		registration.setName(request.name);
		registration.setSex(request.sex);
		registration.setReal_name(request.real_name);
		registration.setContact_way(request.contact_way);
		registration.setEmergency_contact(request.emergency_contact);
		registration.setEmergency_contact_way(request.emergency_contact_way);
		registration.setNum(request.num);
		registration.setEquipment_experience_remarks(request.equipment_experience_remarks);
		commonDao.saveDBOject(registration);
		return dtoHelper.buildRegistrationDTO(registration);
	}

	/**
	 * 
	 * @param request
	 * @return
	 */
	public RegistrationDTO editRegistration(RegistrationRequest request) {
		Registration registration = searchDao.getRegistrationById(request.id, request.activities_id);
		registration.setName(request.name);
		registration.setSex(request.sex);
		registration.setReal_name(request.real_name);
		registration.setContact_way(request.contact_way);
		registration.setEmergency_contact(request.emergency_contact);
		registration.setEmergency_contact_way(request.emergency_contact_way);
		registration.setNum(request.num);
		registration.setEquipment_experience_remarks(request.equipment_experience_remarks);
		commonDao.saveDBOject(registration);
		return dtoHelper.buildRegistrationDTO(registration);
	}

	/**
	 * 
	 * @param request
	 * @return
	 */
	public void deleteRegistration(RegistrationRequest request) {
		Registration registration = searchDao.getRegistrationById(request.id, request.activities_id);
		commonDao.deleteDBObject(registration);
	}

	public AssetsDTO createAssets(AssetsRequest request) {
		Assets obj = new Assets();
		obj.setType(request.type);
		obj.setCategory(request.category);
		obj.setBrand(request.brand);
		obj.setNum(request.num);
		obj.setName(request.name);
		obj.setModel(request.model);
		obj.setVendor(request.vendor);
		obj.setFactory_num(request.factory_num);
		obj.setFactory_date(request.factory_date);
		obj.setAmount(request.amount);
		obj.setCost(request.cost);
		obj.setQuantity(request.quantity);
		obj.setUnit(request.unit);
		obj.setStock_quantity(request.quantity);
		obj.setPerformance_indices(request.performance_indices);
		obj.setAdditional_product(request.additional_product);
		obj.setPlatform(request.platform);
		obj.setManager(request.manager);
		obj.setRecipients(request.recipients);
		obj.setRequisitioners(request.requisitioners);
		obj.setCustodian(request.custodian);
		obj.setDescription(request.description);
		obj.setAvailable(request.available);
		obj.setRecord_date(request.record_date);
		obj.setCreate_user("");
		obj.setCreate_time(new Date());		
		commonDao.saveDBOject(obj);
		return dtoHelper.buildAssetsDTO(obj);
	}

	public InStockDTO getInStockDetail(InStockRequest request) {
		InStockDTO dto = new InStockDTO();
		dto.success = true;
		dto.order = searchDao.getOrderById(request.id);
		dto.assets = searchDao.getAssetsByOrderId(dto.order.getId());
		return dto;
	}

	public OrderDTO createOrder(OrderRequest request) {
		OrderDTO dto = new OrderDTO();
		Order obj = new Order();
		obj.setOrder_num(request.order_num);
		obj.setStatus(request.status);
		obj.setLibrary_collar(request.library_collar);
		obj.setDelivery_time(new Date());
		obj.setReception_time(new Date());
		obj.setAccepter(request.accepter);
		obj.setAcceptance_num(request.acceptance_num);
		obj.setIncoming_leader(request.incoming_leader);
		obj.setStorage_time(new Date());
		commonDao.saveDBOject(obj);
		dto.order = obj;
		dto.success = true;
		return dto;
	}

	public SearchDTO searchAssets(SearchRequest request) {
		SearchDTO dto = new SearchDTO();
		dto.count = searchDao.getAssetsCount(request);
		PageUtil pageUtil = new PageUtil(dto.count);		
		dto.pageCount = pageUtil.getPageSl();
		if (request.pagination) {
			pageUtil.setPageNo(request.way, request.oldNo);			
		} else {
			if ("0".equals(request.way)) {
				pageUtil.setPageNo(0);
			} else if ("n".equals(request.way)) {
				pageUtil.setPageNo(pageUtil.getPageSl() - 1);				
			}
		}
		dto.pageNo = pageUtil.getPageNo();
		dto.assets = searchDao.searchAssets(request, pageUtil.getPageBegin() - 1, pageUtil.getIPageLen());
		dto.success = true;
		return dto;
	}
	
	public String getStringCellVal(Row row, int index) {
		String val = null;
		Cell cell = row.getCell(index);
		if (cell != null) {
			try {
				val = cell.getStringCellValue();
			} catch (Exception e) {
				val = null;
			}
		}		
		return val;
	}
	
	public Date getDateCellVal(Row row, int index) {
		Date val = null;
		Cell cell = row.getCell(index);
		if (cell != null) {
			try {
				val = cell.getDateCellValue();
			} catch (Exception e) {
				val = null;
			}
		}
		return val;
	}
	
	public Long getLongCellVal(Row row, int index) {
		Long val = 0L;
		Cell cell = row.getCell(index);
		if (cell != null) {
			try {
				Double doubleVal = cell.getNumericCellValue();
				if (doubleVal != null) {
					val = doubleVal.longValue();					
				}
			} catch (Exception e) {
				val = 0L;
			}
		}
		return val;
	}

	
	
	public ImportDTO importAssets(MultipartFile file) {
		ImportDTO dto = new ImportDTO();
		InputStream is = null;
		try {
			is = file.getInputStream();
			Workbook wb = WorkbookFactory.create(is);
			Sheet sheet = wb.getSheetAt(0);
			int rowCount = sheet.getLastRowNum();
			for (int i = 1; i <= rowCount; i++) {
				Row row = sheet.getRow(i);
				Assets obj = new Assets();
				if (row != null) {
					obj.setRecord_date(getDateCellVal(row, 1));
					obj.setNum(getStringCellVal(row, 2));
					String type = row.getCell(3).getStringCellValue();
					obj.setType(getTypeVal(type));
					String category = row.getCell(4).getStringCellValue();
					obj.setCategory(getCategoryVal(category));
					obj.setName(getStringCellVal(row, 5));
					obj.setModel(getStringCellVal(row, 6));
					obj.setUnit(getStringCellVal(row, 7));
					obj.setStock_quantity(getLongCellVal(row, 8));
					obj.setQuantity(getLongCellVal(row, 9));
					obj.setCost(getLongCellVal(row, 10));
					obj.setAmount(getLongCellVal(row, 11));
					obj.setBrand(getStringCellVal(row, 12));
					obj.setVendor(getStringCellVal(row, 13));
					obj.setFactory_num(getStringCellVal(row, 14));					
					obj.setRequisitioners(getStringCellVal(row, 15));
					obj.setManager(getStringCellVal(row, 16));
					obj.setRecipients(getStringCellVal(row, 17));
					obj.setPlatform(getStringCellVal(row, 18));
					obj.setPerformance_indices(getStringCellVal(row, 19));
					obj.setAdditional_product(getStringCellVal(row, 20));
					obj.setDescription(getStringCellVal(row, 21));	
					obj.setCreate_time(new Date());	
					obj.setAvailable(true);
					commonDao.saveDBOject(obj);
				}
			}
			dto.success = true;
		} catch (IOException e) {
			dto.success = false;
			dto.msg = e.getMessage();
			e.printStackTrace();
		} catch (InvalidFormatException e) {
			dto.success = false;
			dto.msg = e.getMessage();
			e.printStackTrace();
		} finally {
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				is = null;
			}			
		}
		return dto;
	}
	
	public Long getTypeVal(String type) {
		Long val = 1L;
		if ("设备".equals(type)) {
			val = 1L;
		} else if ("低值易耗品".equals(type)) {
			val = 2L;
		} else if ("电子元器件".equals(type)) {
			val = 3L;
		}
		return val;
	}
	
	public Long getCategoryVal(String category) {
		Long val = 1L;
		if ("探头".equals(category)) {
			val = 1L;
		} else if ("特殊仪器".equals(category)) {
			val = 2L;
		} else if ("示波器".equals(category)) {
			val = 3L;
		} else if ("检测 仪器".equals(category)) {
			val = 4L;
		}
		return val;
	}
	
	
}