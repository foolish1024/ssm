package cn.foolish.redis.controller;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import cn.foolish.redis.entity.model.RedisContentEntity;
import cn.foolish.redis.service.RedisContentService;
import cn.foolish.redis.utils.CommonUtil;
import cn.foolish.redis.utils.PageEntity;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/redis")
public class RedisController {
	private static Logger logger = LoggerFactory.getLogger(RedisController.class);
	
	@Autowired
	private RedisContentService rediscontentService;

	@RequestMapping("/export")
	public void export(HttpServletResponse response, @RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "pageSize", defaultValue = "1") int pageSize) {
		JSONObject jsonObject = new JSONObject();
		JSONObject jo = new JSONObject();
		try {
			JSONArray ja = new JSONArray();
			PageHelper.startPage(1, 10);
			PageEntity<RedisContentEntity> rediscontentPageEntity = rediscontentService.selectByPage(page, pageSize);
			for (RedisContentEntity rediscontent : rediscontentPageEntity.getList()) {
				JSONObject jo1 = new JSONObject();
				jo1.put("rediscontent", rediscontent);
				ja.add(jo1);
			}
			jo.put("redisContents", ja);
			jo.put("count", rediscontentPageEntity.getCount());
			jsonObject = CommonUtil.parseJson("1", "成功", jo);
		} catch (Exception e) {
			jsonObject = CommonUtil.parseJson("2", "操作异常", "");
			logger.error(e.getMessage(), e);
		}
		// 构建返回
		CommonUtil.responseBuildJson(response, jsonObject);
	}

	@RequestMapping("/query")
	public Page<RedisContentEntity> query(Page<RedisContentEntity> page) {
		PageEntity<RedisContentEntity> pageEntityList = rediscontentService.selectByPage(page);
		for (RedisContentEntity entity : pageEntityList.getList()) {
			page.add(entity);
		}
		return page;
	}
}
