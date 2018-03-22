package cn.foolish.shiro.entity.mapper;

import java.util.Set;

import cn.foolish.shiro.entity.model.UserEntity;

public interface CommonMapper {
	public UserEntity findUserByUsername(String userName);
	
	public Set<String> findRoles(String userName);
	
	public Set<String> findPermissions(String userName);
}
