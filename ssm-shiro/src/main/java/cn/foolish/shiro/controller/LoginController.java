package cn.foolish.shiro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.foolish.shiro.service.LoginService;

@Controller
public class LoginController {	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/11", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	/*
	 * 访问/login路径时，验证用户的角色和权限
	 * */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String username,String password,Model model) {
		return loginService.login(username, password, model);
	}
	
	/*
	 * 访问/role路径时，必须是teacher角色才能访问成功
	 * 
	 * */
	@RequestMapping(value = "/role", method = RequestMethod.GET)
	public String role() {
		return "home";
	}
	
	/*
	 * 访问/perms路径时，当前用户必须有user:create权限才可以访问
	 * 
	 * */
	@RequestMapping(value = "/perm", method = RequestMethod.GET)
	public String perm() {
		return "home";
	}
}
