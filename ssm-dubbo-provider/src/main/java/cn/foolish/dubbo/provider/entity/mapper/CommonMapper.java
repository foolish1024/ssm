package cn.foolish.dubbo.provider.entity.mapper;

import cn.foolish.dubbo.provider.entity.model.UserEntity;

public interface CommonMapper {
	public UserEntity findUserByUsername(String userName);

	public UserEntity selectByPrimaryKey(Long userId);
}
