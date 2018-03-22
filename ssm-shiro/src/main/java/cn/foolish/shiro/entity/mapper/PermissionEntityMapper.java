package cn.foolish.shiro.entity.mapper;

import cn.foolish.shiro.entity.model.PermissionEntity;
import cn.foolish.shiro.entity.model.PermissionEntityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PermissionEntityMapper {
    int countByExample(PermissionEntityExample example);

    int deleteByExample(PermissionEntityExample example);

    int insert(PermissionEntity record);

    int insertSelective(PermissionEntity record);

    List<PermissionEntity> selectByExample(PermissionEntityExample example);

    int updateByExampleSelective(@Param("record") PermissionEntity record, @Param("example") PermissionEntityExample example);

    int updateByExample(@Param("record") PermissionEntity record, @Param("example") PermissionEntityExample example);
}