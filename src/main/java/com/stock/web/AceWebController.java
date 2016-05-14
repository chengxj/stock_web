package com.stock.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AceWebController {
	
	  @RequestMapping(value = "/{url}")
	  public String index(@PathVariable String url, Model model) {
		  return url;
	  }

}