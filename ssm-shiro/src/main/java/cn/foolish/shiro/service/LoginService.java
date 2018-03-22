package cn.foolish.shiro.service;

import org.springframework.ui.Model;

public interface LoginService {
	public String login(String username,String password,Model model);
}
