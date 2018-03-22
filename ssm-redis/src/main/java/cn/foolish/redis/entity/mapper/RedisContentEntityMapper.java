package cn.foolish.redis.entity.mapper;

import cn.foolish.redis.entity.model.RedisContentEntity;
import cn.foolish.redis.entity.model.RedisContentEntityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RedisContentEntityMapper {
    int countByExample(RedisContentEntityExample example);

    int deleteByExample(RedisContentEntityExample example);

    int insert(RedisContentEntity record);

    int insertSelective(RedisContentEntity record);

    List<RedisContentEntity> selectByExample(RedisContentEntityExample example);

    int updateByExampleSelective(@Param("record") RedisContentEntity record, @Param("example") RedisContentEntityExample example);

    int updateByExample(@Param("record") RedisContentEntity record, @Param("example") RedisContentEntityExample example);
}