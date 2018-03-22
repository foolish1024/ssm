package cn.foolish.shiro.service.impl;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import cn.foolish.shiro.entity.mapper.UserEntityMapper;
import cn.foolish.shiro.entity.model.UserEntity;
import cn.foolish.shiro.entity.model.UserEntityExample;
import cn.foolish.shiro.entity.model.UserEntityExample.Criteria;
import cn.foolish.shiro.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	private UserEntityMapper userEntityMapper;
	
	@Override
	public String login(String username,String password,Model model) {
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		try {
			subject.login(token);
			model.addAttribute("username", token.getUsername());
			model.addAttribute("password", token.getPassword());
			return "result";
		} catch (Exception e) {
			model.addAttribute("error", "调用失败！");
			return "login";//返回登录页面
		}
	}
	
	public String login2(String username,String password,Model model) {
		try {
			UserEntityExample example = query(username, password);
			List<UserEntity> userList = userEntityMapper.selectByExample(example);
			if(!userList.isEmpty()){
				model.addAttribute("username", userList.get(0).getUserName());
				model.addAttribute("password", userList.get(0).getPassword());
				return "result";
			}
			return "login";//返回登录页面
		} catch (Exception e) {
			model.addAttribute("error", "调用失败！");
			return "login";//返回登录页面
		}
	}
	
	private UserEntityExample query(String username,String password){
		UserEntityExample example = new UserEntityExample();
		Criteria criteria = example.createCriteria();
		
		criteria.andUserNameEqualTo(username);
		criteria.andPasswordEqualTo(password);
		
		return example;
	}
}
