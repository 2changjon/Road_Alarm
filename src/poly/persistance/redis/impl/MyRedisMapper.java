package poly.persistance.redis.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import poly.dto.RedisDTO;
import poly.persistance.redis.IMyRedisMapper;
import poly.util.TableName;

@Component("MyRedisMapper")
public class MyRedisMapper implements IMyRedisMapper, TableName {
	
	@Autowired
	public RedisTemplate<String, Object> redisDB;

	private Logger log = Logger.getLogger(this.getClass());

	@Override
	public String doSaveData(RedisDTO pDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
