package com.stock.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stock.dao.CommonDao;
import com.stock.dao.SearchDao;
import com.stock.dto.ActivitiesDTO;
import com.stock.dto.RegistrationDTO;
import com.stock.dto.RegistrationDetailDTO;
import com.stock.entity.Registration;
import com.stock.request.ActivitiesRequest;
import com.stock.request.RegistrationDetailRequest;
import com.stock.request.RegistrationRequest;

@Service
public class CommonService {
	
	  protected Logger log = LoggerFactory.getLogger(this.getClass());
	  
	  @Autowired
	  private SearchDao searchDao;
	  
	  @Autowired
	  private CommonDao commonDao;
	  
	  @Autowired
	  private DTOHelper dtoHelper;
	  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public ActivitiesDTO searchActivities(ActivitiesRequest request) {
		  ActivitiesDTO dto = new ActivitiesDTO();		  
		  dto.activities = searchDao.searchActivities(request.searchTerm, request.index);		  
		  dto.num = searchDao.getSearchActivitiesCount(request.searchTerm);
		  dto.pageNum = (int)(dto.num  + 10 - 1)/10;	
		  return dto;
	  }
	  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public RegistrationDetailDTO getRegistrationDetail(RegistrationDetailRequest request){
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
	  public RegistrationDTO addRegistration(RegistrationRequest request){
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
	  
}
