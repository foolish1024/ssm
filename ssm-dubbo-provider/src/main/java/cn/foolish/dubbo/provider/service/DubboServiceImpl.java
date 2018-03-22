package cn.foolish.dubbo.provider.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.foolish.dubbo.api.service.IDubboService;
import cn.foolish.dubbo.api.vo.UserInfo;
import cn.foolish.dubbo.provider.entity.mapper.CommonMapper;
import cn.foolish.dubbo.provider.entity.model.UserEntity;

@Service
public class DubboServiceImpl implements IDubboService {
	@Autowired
	private CommonMapper commonMapper;

	@Override
	public UserInfo getUserInfo(Long userId) {
		// 返回对象
		UserInfo info = new UserInfo();
		UserEntity user = commonMapper.selectByPrimaryKey(userId);

		// 构建
		copyUserInfo(user, info);

		return info;
	}

	private void copyUserInfo(UserEntity src, UserInfo target) {
		target.setId(src.getId());
		target.setPassword(src.getPassword());
		target.setUserName(src.getUserName());
		target.setState(src.getState());
	}
}
