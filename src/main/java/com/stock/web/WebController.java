package com.stock.web;

import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.stock.auth.AuthException;
import com.stock.auth.AuthService;
import com.stock.auth.LoginVO;
import com.stock.entity.common.User;

@Controller
public class WebController {

	@Autowired
	private AuthService authService;
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		return "index";
	}

	@RequestMapping(value = "/stock")
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/stock/register")
	public String register(Model model) {
		return "register";
	}
	
	@RequestMapping(value = "/stock/search")
	public String search(Model model) {
		return "search";
	}
	
	@RequestMapping(value = "/stock/user")
	public String user(Model model) {
		return "user";
	}
	
	@RequestMapping(value = "/stock/permission")
	public String permission(Model model) {
		return "permission";
	}
	
	@RequestMapping(value = "/stock/base")
	public String base(Model model) {
		return "base";
	}

	@RequestMapping(value = "/stock/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request) throws Exception {
		if (SecurityUtils.getSubject().isAuthenticated()) {
			return "redirect:/stock";
		}
		return "login";
	}

	@RequestMapping(value = "/stock/login", method = RequestMethod.POST)
	public String login(User loginUser, Model model, HttpServletRequest request) {
		LoginVO vo = new LoginVO();
		vo.name = loginUser.getUserid();
		vo.pwd = loginUser.getPassword();
		vo.rememberme = request.getParameter("rememberme");
		try {
			authService.login(vo);
			return "redirect:/stock";
		} catch (AuthException e) {
			model.addAttribute("message", "用户名或密码不正确");
			return "login";
		}
	}

	@RequestMapping(value = "/stock/logout")
	public String logout(Model model) {
		authService.logout();
		return "redirect:/stock";
	}

	@RequestMapping(value = "/stock/error")
	public String error(Model model) {
		return "error";
	}

}