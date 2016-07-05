package com.stock.service;

import org.springframework.stereotype.Component;

import com.stock.dto.AssetsDTO;
import com.stock.dto.RegistrationDTO;
import com.stock.entity.Assets;
import com.stock.entity.Registration;

@Component
public class DTOHelper {
	
	public RegistrationDTO buildRegistrationDTO(Registration registration) {
		RegistrationDTO dto = new RegistrationDTO();
		dto.id = registration.getId();
		dto.activities_id = registration.getActivities_id();
		dto.name = registration.getName();
		dto.sex = registration.getSex();
		dto.real_name = registration.getReal_name();
		dto.contact_way = registration.getContact_way();
		dto.emergency_contact = registration.getEmergency_contact();
		dto.emergency_contact_way = registration.getEmergency_contact_way();
		dto.num = registration.getNum();
		dto.equipment_experience_remarks = registration.getEquipment_experience_remarks();
		return dto;
	}

	public AssetsDTO buildAssetsDTO(Assets obj) {
		AssetsDTO dto = new AssetsDTO();
		dto.success = true;
		dto.assets = obj;
		return dto;
	}
	
	

}
