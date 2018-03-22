package cn.foolish.redis.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import cn.foolish.redis.entity.mapper.RedisContentEntityMapper;
import cn.foolish.redis.entity.model.RedisContentEntity;
import cn.foolish.redis.entity.model.RedisContentEntityExample;
import cn.foolish.redis.service.RedisContentService;
import cn.foolish.redis.utils.PageEntity;

@Service
public class RedisContentServiceImpl implements RedisContentService {

    @Autowired
    private RedisContentEntityMapper rediscontentMapper;


    @Override
    public List<RedisContentEntity> selectByExample(RedisContentEntityExample example) {
        return rediscontentMapper.selectByExample(example);
    }

    @Override
    public PageEntity<RedisContentEntity> selectByPage(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        //因为是demo，所以这里默认没有查询条件。
        List<RedisContentEntity> redisContents = rediscontentMapper.selectByExample(new RedisContentEntityExample());
        PageEntity<RedisContentEntity> rediscontentPageEntity = new PageEntity<RedisContentEntity>();
        rediscontentPageEntity.setList(redisContents);
        int size = rediscontentMapper.selectByExample(new RedisContentEntityExample()).size();
        rediscontentPageEntity.setCount(size);
        return rediscontentPageEntity;
    }

	@Override
	public PageEntity<RedisContentEntity> selectByPage(Page<RedisContentEntity> page) {
		PageHelper.startPage(page.getPageNum(), page.getPageSize());
        //因为是demo，所以这里默认没有查询条件。
        List<RedisContentEntity> redisContents = rediscontentMapper.selectByExample(new RedisContentEntityExample());
        PageEntity<RedisContentEntity> rediscontentPageEntity = new PageEntity<RedisContentEntity>();
        rediscontentPageEntity.setList(redisContents);
        int size = rediscontentMapper.selectByExample(new RedisContentEntityExample()).size();
        rediscontentPageEntity.setCount(size);
        return rediscontentPageEntity;
	}


}
