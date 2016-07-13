package com.stock.request;

import java.util.Date;
import com.stock.entity.enumType.OrderStatusEnum;

public class OrderRequest {
	
	public Long id;
	public String order_num;
	public OrderStatusEnum status = OrderStatusEnum.OUTPUT;
	public String library_collar;
	public Date delivery_time;
	public Date reception_time;
	public String accepter;
	public String acceptance_num;
	public String incoming_leader;
	public Date storage_time;

}
