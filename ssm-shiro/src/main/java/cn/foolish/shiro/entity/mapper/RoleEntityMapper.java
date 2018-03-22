package cn.foolish.shiro.entity.mapper;

import cn.foolish.shiro.entity.model.RoleEntity;
import cn.foolish.shiro.entity.model.RoleEntityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RoleEntityMapper {
    int countByExample(RoleEntityExample example);

    int deleteByExample(RoleEntityExample example);

    int insert(RoleEntity record);

    int insertSelective(RoleEntity record);

    List<RoleEntity> selectByExample(RoleEntityExample example);

    int updateByExampleSelective(@Param("record") RoleEntity record, @Param("example") RoleEntityExample example);

    int updateByExample(@Param("record") RoleEntity record, @Param("example") RoleEntityExample example);
}