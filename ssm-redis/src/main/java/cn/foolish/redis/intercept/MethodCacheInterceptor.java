package cn.foolish.redis.intercept;

import java.util.ArrayList;
import java.util.List;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.foolish.redis.utils.RedisUtil;

public class MethodCacheInterceptor implements MethodInterceptor {
	private Logger logger = LoggerFactory.getLogger(MethodCacheInterceptor.class);
	private RedisUtil redisUtil;
	private List<String> classNamesList; // 不加入缓存的service名称
	private List<String> methodNamesList; // 不加入缓存的方法名称
	private Long defaultCacheExpireTime; // 缓存默认的过期时间
	private Long xxxRecordManagerTime; //
	private Long xxxSetRecordManagerTime; //

	/**
	 * 初始化读取不需要加入缓存的类名和方法名称
	 */
	public MethodCacheInterceptor() {
		try {
			// 分割字符串 这里没有加入任何方法
			String[] targetNames = {};
			String[] methodNames = {};

			// 加载过期时间设置
			defaultCacheExpireTime = 3600L;
			xxxRecordManagerTime = 60L;
			xxxSetRecordManagerTime = 60L;
			// 创建list
			classNamesList = new ArrayList<String>(targetNames.length);
			methodNamesList = new ArrayList<String>(methodNames.length);
			Integer maxLen = targetNames.length > methodNames.length ? targetNames.length : methodNames.length;
			// 将不需要缓存的类名和方法名添加到list中
			for (int i = 0; i < maxLen; i++) {
				if (i < targetNames.length) {
					classNamesList.add(targetNames[i]);
				}
				if (i < methodNames.length) {
					methodNamesList.add(methodNames[i]);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public Object invoke(MethodInvocation invocation) throws Throwable {
		Object value = null;

		String className = invocation.getThis().getClass().getName();
		String methodName = invocation.getMethod().getName();
		// 不需要缓存的内容
		if (!isAddCache(className, methodName)) {
			// 执行方法返回结果
			return invocation.proceed();
		}
		Object[] arguments = invocation.getArguments();
		String key = getCacheKey(className, methodName, arguments);
		logger.debug("redisKey: " + key);
		try {
			// 判断是否有缓存
			if (redisUtil.exists(key)) {
				return redisUtil.get(key);
			}
			value = invocation.proceed();
			// 写入缓存
			writeCache(value, key);
		} catch (Exception e) {
			e.printStackTrace();
			if (value == null) {
				return invocation.proceed();
			}
		}
		return value;
	}
	
	/**
	 * 写入缓存
	 *
	 */
	private void writeCache(Object value, String key){
		if (value == null) {
			logger.error("没有获取到写入缓存中的value！");
		}
		final String tkey = key;
		final Object tvalue = value;
		new Thread(new Runnable() {
			@Override
			public void run() {
				if (tkey.startsWith("com.service.impl.xxxRecordManager")) {
					redisUtil.set(tkey, tvalue, xxxRecordManagerTime);
				} else if (tkey.startsWith("com.service.impl.xxxSetRecordManager")) {
					redisUtil.set(tkey, tvalue, xxxSetRecordManagerTime);
				} else {
					redisUtil.set(tkey, tvalue, defaultCacheExpireTime);
				}
			}
		}).start();
	}

	/**
	 * 是否加入缓存
	 *
	 * @return
	 */
	private boolean isAddCache(String targetName, String methodName) {
		boolean flag = true;
		if (classNamesList.contains(targetName) || methodNamesList.contains(methodName)) {
			flag = false;
		}
		return flag;
	}

	/**
	 * 创建缓存key
	 *
	 * @param className
	 * @param methodName
	 * @param arguments
	 */
	private String getCacheKey(String className, String methodName, Object[] arguments) {
		StringBuffer sbu = new StringBuffer();
		sbu.append(className).append("_").append(methodName);
		if ((arguments != null) && (arguments.length != 0)) {
			for (int i = 0; i < arguments.length; i++) {
				sbu.append("_").append(arguments[i]);
			}
		}
		return sbu.toString();
	}

	public void setRedisUtil(RedisUtil redisUtil) {
		this.redisUtil = redisUtil;
	}
}
