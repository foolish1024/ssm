package cn.foolish.shiro.shiroManage;

import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import cn.foolish.shiro.entity.mapper.CommonMapper;
import cn.foolish.shiro.entity.model.UserEntity;

public class MyRealm extends AuthorizingRealm {
	
	@Resource
	private CommonMapper commonMapper;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		String userName = principalCollection.getPrimaryPrincipal().toString();
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		Set<String> roleName = commonMapper.findRoles(userName);
		Set<String> permissions = commonMapper.findPermissions(userName);
		info.setRoles(roleName);
		info.setStringPermissions(permissions);
		return info;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String userName = token.getPrincipal().toString();
		UserEntity entity = commonMapper.findUserByUsername(userName);
		if(entity != null){
			//将查询到的用户账号和密码存放到 authenticationInfo用于后面的权限判断。第三个参数随便放一个就行了。
            return new SimpleAuthenticationInfo(entity.getUserName(),entity.getPassword(),"realmName");
		}
		return null;
	}

}
