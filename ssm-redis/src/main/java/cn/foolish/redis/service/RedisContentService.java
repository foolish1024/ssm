package cn.foolish.redis.service;

import java.util.List;

import com.github.pagehelper.Page;

import cn.foolish.redis.entity.model.RedisContentEntity;
import cn.foolish.redis.entity.model.RedisContentEntityExample;
import cn.foolish.redis.utils.PageEntity;

public interface RedisContentService {
	List<RedisContentEntity> selectByExample(RedisContentEntityExample example);

    PageEntity<RedisContentEntity> selectByPage(Integer pageNum, Integer pageSize);
    
    PageEntity<RedisContentEntity> selectByPage(Page<RedisContentEntity> page);
}
